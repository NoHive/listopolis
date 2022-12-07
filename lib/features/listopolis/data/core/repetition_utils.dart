import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:listopolis/features/listopolis/data/core/date_time_utils.dart';
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
    RepetitionConfig config = RepetitionConfig(repType, DateTimeUtil.getDate(dateTime), [repTime]);
    return config;
  }

  static int getChannelID(){
    DateTime aktTime = DateTime.now();
    return aktTime.year+aktTime.month+aktTime.day+aktTime.hour+aktTime.minute+aktTime.second;
  }

  static Future<void> createNotificationsFromConfig(RepetitionConfig config, String? listName) async{
    
    List<ReminderTime> reminders = config.reminders;
    String timeZone = await AwesomeNotifications().getLocalTimeZoneIdentifier();
      for(ReminderTime reminder in reminders){
        ReminderSchedule schedule = ReminderSchedule.fromDateString(reminder.timeOfDay, true);
        String listNameContent = listName != null ? " >> " +listName+" <<" : "";
        await AwesomeNotifications().createNotification(
        content: NotificationContent(
                    id: reminder.channelId, 
                    channelKey: reminder.reminderChannel,
                    body: "${Emojis.animals_owl}, bitte $listNameContent erledigen!",
                    title: "offene Aufgaben!!!",
                    displayOnBackground: true,
                    displayOnForeground: true
                  ),
        schedule: NotificationCalendar( hour: schedule.hour, minute: schedule.minute, second:schedule.second, millisecond: 0, timeZone: timeZone, repeats: true)
      );
    }
  }

  static Future<void> stopNotifications(RepetitionConfig repetitionConfig) async{
    //await AwesomeNotifications().cancel();
      List<ReminderTime> reminders = repetitionConfig.reminders;
      for(ReminderTime reminder in reminders){
        await AwesomeNotifications().cancel(reminder.channelId);
      }
  }
}