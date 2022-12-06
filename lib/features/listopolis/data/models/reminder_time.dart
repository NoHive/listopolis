import 'package:freezed_annotation/freezed_annotation.dart';

part 'reminder_time.freezed.dart';
part 'reminder_time.g.dart';

@freezed
abstract class ReminderTime with _$ReminderTime{
  @JsonSerializable()
  const ReminderTime._();
  const factory ReminderTime(
    String timeOfDay,
    String reminderChannel,
    int channelId
  ) = _ReminderTime;

  factory ReminderTime.fromJson(Map<String, dynamic> json) => _$ReminderTimeFromJson(json);
}