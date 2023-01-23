import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:listopolis/features/listopolis/data/core/date_time_utils.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/reminder_time.dart';
import 'package:listopolis/features/listopolis/data/models/repetition_config.dart';
import 'package:listopolis/features/listopolis/data/models/repetition_type.dart';

class RepetitionUtil{
  static const String CHANNEL_KEY = "Listopolis_Reminder_Channel";
  static const String CHANNEL_NAME = "Erinnerung ToDo-Listen";
  static const String CHANNEL_DESCRIPTION = "Erinnerung an wichtige ToDo-Listen";
  static const String CHANNEL_GROUP = "Listopolis-Erinnerungen";

  static RepetitionConfig createRepetitionOnSecond(String second, DateTime dateTime, String channelKey){
    ReminderTime repTime = ReminderTime("00:00:$second", channelKey, getChannelID());
    RepetitionType repType = RepetitionType.secondOfMinute();
    RepetitionConfig config = RepetitionConfig(repType, 1, DateTimeUtil.getDate(dateTime), true, [repTime]);
    return config;
  }
  static RepetitionConfig createDailyRepetition(DateTime startDate, List<TimeOfDay> reminders){
    List<ReminderTime> reminderTimes = [];
    for(TimeOfDay reminderTime in reminders){
       reminderTimes.add( ReminderTime("${reminderTime.hour}:${reminderTime.minute}:00",  CHANNEL_KEY, getChannelID()));
    }
  
    RepetitionConfig config = RepetitionConfig(RepetitionType.daily(), 1, DateTimeUtil.getDate(startDate), false ,reminderTimes);
    return config;
  }

  static RepetitionConfig copyForDailyRepetition(RepetitionConfig oldConfig){
    
    List<ReminderTime> oldReminders = oldConfig.reminders;
    List<ReminderTime> newReminders = [];
    for(ReminderTime oldReminder in oldReminders){
      newReminders.add(oldReminder.copyWith(channelId: RepetitionUtil.getChannelID()));
    }
    return oldConfig.copyWith(isDaily: true, reminders: newReminders);
  }

  static int counterGlobal = 0;

  static int getChannelID(){
    DateTime aktTime = DateTime.now();
    counterGlobal++;
    return   times(1999999, aktTime.year)
            +times(276525312, aktTime.month)
            +times(8641416, aktTime.day)
            +times(360059, aktTime.hour+1)
            +times(6001,aktTime.minute+1)
            +times(100, aktTime.second+1)
            +counterGlobal;

  }

  static int times(int power, int count ){
    return 1 * power + count;
  }

  static Future<void> createNotificationsFromConfig(RepetitionConfig config, String? listName, bool initial) async{
    
    List<ReminderTime> reminders = config.reminders;
    String timeZone = await AwesomeNotifications().getLocalTimeZoneIdentifier();
      for(ReminderTime reminder in reminders){
        String? dateStr = initial ? config.startDate : null;
        ReminderSchedule schedule = ReminderSchedule.fromDateString(timeStr: reminder.timeOfDay, treatZeroAsNull:true, dateStr:dateStr);
        String listNameContent = listName != null ? " >> " +listName+" <<" : "";
        
        
        NotificationCalendar calendar =  NotificationCalendar(      year: schedule.year, 
                                                                    month: schedule.month, 
                                                                    day: schedule.day, 
                                                                    hour: schedule.hour, 
                                                                    minute: schedule.minute, 
                                                                    second:0, 
                                                                    millisecond: 0, 
                                                                    timeZone: timeZone, 
                                                                    repeats: true);
        await AwesomeNotifications().createNotification(
        content: NotificationContent(
                    id: reminder.channelId, 
                    channelKey: reminder.reminderChannel,
                    body: "${Emojis.animals_owl}, bitte $listNameContent erledigen!",
                    title: "offene Aufgaben!!!",
                    displayOnBackground: true,
                    displayOnForeground: true,
                  ),
        schedule: calendar
      );
      
    }
    List<NotificationModel> notificationEntries =await  AwesomeNotifications().listScheduledNotifications();
    print("Notifications created current are: ");
    for(NotificationModel entry in notificationEntries){
      NotificationSchedule? schedule = entry.schedule;
      if(schedule != null){
        print("Schedule: " + schedule.toString());
        
      }
      print(entry);
    }
  }

  static Future<void> stopNotifications(RepetitionConfig repetitionConfig) async{
    //await AwesomeNotifications().cancel();
      List<ReminderTime> reminders = repetitionConfig.reminders;
      for(ReminderTime reminder in reminders){
        await AwesomeNotifications().cancel(reminder.channelId);
      }
      List<NotificationModel> notificationEntries =await  AwesomeNotifications().listScheduledNotifications();
      print("Notifications deleted current are: ");
      for(NotificationModel entry in notificationEntries){
        print(entry);
      }
  }
  static RepetitionConfig getConfigForNextPeriod(RepetitionConfig repetitionConfig){
    
      DateTime startDate =  DateTimeUtil.getDateFromStr(repetitionConfig.startDate);
      Jiffy currentDate = Jiffy(DateTime.now());

      Jiffy calendar = Jiffy(startDate);
      if(repetitionConfig.repetitionType is Daily){
         calendar.add(duration: Duration(days: repetitionConfig.amount));
      }else if(repetitionConfig.repetitionType is Monthly){
        calendar.add(months: repetitionConfig.amount);
      }else if(repetitionConfig.repetitionType is Yearly){
        calendar.add(years: repetitionConfig.amount);
      }else if(repetitionConfig.repetitionType is Weekly){
        calendar.add(weeks: repetitionConfig.amount);
      }

      if(currentDate.isSameOrAfter(calendar, Units.DAY)){
        currentDate.add(days: 1);
        calendar = currentDate;
      }
        

      List<ReminderTime> dailyReminders = [];
      for(ReminderTime reminder in repetitionConfig.reminders){
        dailyReminders.add( reminder.copyWith(channelId: getChannelID()));
      }

      return repetitionConfig.copyWith( startDate: DateTimeUtil.getStringFromJiffy(calendar), 
                                        reminders: dailyReminders,
                                        isDaily: false);
  }

  static bool shouldShowToday(ActiveList list) {
    RepetitionConfig? config = list.repetitionConfig;
    if(config != null){
      Jiffy currentDate = Jiffy(DateTime.now());
      Jiffy startDate = Jiffy(DateTimeUtil.getDateFromStr(config.startDate));
      if(! currentDate.isSameOrAfter(startDate, Units.DAY))
         return false;

    }
    return true;
  }

  static bool needDailyReminders(RepetitionConfig repetitionConfig) {
    Jiffy currentDate = Jiffy(DateTime.now());
    Jiffy startDate = Jiffy(DateTimeUtil.getDateFromStr(repetitionConfig.startDate));
    return  currentDate.isSameOrAfter(startDate, Units.DAY) && (!repetitionConfig.isDaily);

  }


  
}