import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';

class DateTimeUtil{
  static String getDate(DateTime dateTime){
    
    int day = dateTime.day;
    int month = dateTime.month;
    int year = dateTime.year;

    return "${day.toString().padLeft(2,'0')}.${month.toString().padLeft(2,'0')}.$year";
  }
  static String getStringFromJiffy(Jiffy dateTime){
    
    int day = dateTime.date;
    int month = dateTime.month;
    int year = dateTime.year;

    return "${day.toString().padLeft(2,'0')}.${month.toString().padLeft(2,'0')}.$year";
  }

  static DateTime getDateFromStr(String dateStr){
    int day = 0;
    int month = 0;
    int year = 0;

     if(dateStr != null){
         List<String> split = dateStr.split(RegExp(r'\.'));
        if(split.length != 3)
          throw Error();
        else{
          day = int.parse(split[0]);
          month = int.parse(split[1]);
          year = int.parse(split[2]);
        }
     }
    return DateTime(year, month, day);
  }
  
  static TimeOfDay getTimeFromStr(String timeStr){
    int hour = 0;
    int minute = 0;
    int second = 0;

     
    List<String> split = timeStr.split(RegExp(r'\:'));
    if(split.length != 3)
      throw Error();
    else{
      hour = int.parse(split[0]);
      minute = int.parse(split[1]);
      second = int.parse(split[2]);
    }
     
    return TimeOfDay(hour:hour, minute:minute);
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

  factory ReminderSchedule.fromDateString({required String timeStr, required bool treatZeroAsNull, String? dateStr}){
      ReminderSchedule schedule;
      schedule = ReminderSchedule();

      List<String> split = timeStr.split(RegExp(r'\:'));
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
      if(schedule.second == null && schedule.minute != null)
        schedule.second = 0;  
      
      if(schedule.minute == null && schedule.hour != null)
        schedule.minute = 0;

      if(dateStr != null){
         List<String> split = dateStr.split(RegExp(r'\.'));
        if(split.length != 3)
          throw Error();
        else{
          schedule.day = int.parse(split[0]);
          schedule.day = schedule.day == 0 && treatZeroAsNull ? null : schedule.day;
          schedule.month = int.parse(split[1]);
          schedule.month = schedule.month == 0 && treatZeroAsNull ? null : schedule.month;
          schedule.year = int.parse(split[2]);
          schedule.year = schedule.year == 0 && treatZeroAsNull ? null : schedule.year;
        }
      }

      return schedule;
  }
}