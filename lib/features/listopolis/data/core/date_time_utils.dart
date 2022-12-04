class DateTimeUtil{
  static String getDate(DateTime dateTime){
    
    int day = dateTime.day;
    int month = dateTime.month;
    int year = dateTime.year;

    return "${day.toString().padLeft(2,'0')}.${month.toString().padLeft(2,'0')}.$year";

  }
}