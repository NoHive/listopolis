class DateTimeUtil{
  static String getDate(DateTime dateTime){
    
    int day = dateTime.day;
    int month = dateTime.month;
    int year = dateTime.year;

    return "${day.toString().padLeft(2,'0')}.${month.toString().padLeft(2,'0')}.$year";

  }
}

class ReminderSchedule{
  ReminderSchedule();
  int? day;
  int? month;
  int? year;
  int? hour;
  int? minute;
  int? second;

  factory ReminderSchedule.fromDateString(String str, bool treatZeroAsNull){
      ReminderSchedule schedule;
      schedule = ReminderSchedule();

      List<String> split = str.split(RegExp(r'\:'));
      if(split.length != 3)
        throw Error();
      else{
        schedule.hour = int.parse(split[0]);
        schedule.hour = schedule.hour == 0 && treatZeroAsNull ? null : schedule.hour;
        schedule.minute = int.parse(split[1]);
        schedule.minute = schedule.minute == 0 && treatZeroAsNull ? null : schedule.minute;
        schedule.second = int.parse(split[2]);
        schedule.second = schedule.second == 0 && treatZeroAsNull ? null : schedule.second;
      }
        

      return schedule;
  }
}