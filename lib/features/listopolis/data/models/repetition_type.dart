import 'package:freezed_annotation/freezed_annotation.dart';
part 'repetition_type.freezed.dart';
part 'repetition_type.g.dart';


@freezed
abstract class RepetitionType with _$RepetitionType{
  @JsonSerializable()
  const RepetitionType._();

  const factory RepetitionType.daily() = Daily;
  const factory RepetitionType.weekly() = Weekly;
  const factory RepetitionType.monthly() = Monthly;
  const factory RepetitionType.yearly() = Yearly;
  const factory RepetitionType.minuteOfHour() = MinuteOfHour;
  const factory RepetitionType.secondOfMinute() = SecondOfMinute;

  factory RepetitionType.fromJson(Map<String, dynamic> json) => _$RepetitionTypeFromJson(json);

}

 const String REPETION_DAILY = "D";
 const String REPETION_WEEKLY = "W";
 const String REPETION_MONTHLY = "M";
 const String REPETION_YEARLY = "Y";
 const String REPETION_EVERY_MINUTE = "m";
 const String REPETION_EVERY_HOUR = "h";

 RepetitionType repetitionTypeFromJson(String str){
    if(REPETION_DAILY.compareTo(str) == 0)
      return RepetitionType.daily();
    else if(REPETION_WEEKLY.compareTo(str) == 0)
      return RepetitionType.weekly();
    else if(REPETION_MONTHLY.compareTo(str) == 0)
      return RepetitionType.monthly();
    else if(REPETION_EVERY_MINUTE.compareTo(str) == 0)
      return RepetitionType.secondOfMinute();
    else if(REPETION_EVERY_HOUR.compareTo(str) == 0)
      return RepetitionType.minuteOfHour();
    else 
      return RepetitionType.yearly();

  }
  String repetitionTypeToJson(RepetitionType type){  
    return type.when( daily:    () => REPETION_DAILY, 
                      weekly:   ()=> REPETION_WEEKLY,
                      monthly:  ()=> REPETION_MONTHLY,
                      yearly:   ()=> REPETION_YEARLY,
                      minuteOfHour:  ()=> REPETION_EVERY_HOUR,
                      secondOfMinute: ()=> REPETION_EVERY_MINUTE
                      );
  }