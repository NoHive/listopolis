// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'reminder_time.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ReminderTime _$$_ReminderTimeFromJson(Map<String, dynamic> json) =>
    _$_ReminderTime(
      json['timeOfDay'] as String,
      json['reminderChannel'] as String,
      json['channelId'] as int,
    );

Map<String, dynamic> _$$_ReminderTimeToJson(_$_ReminderTime instance) =>
    <String, dynamic>{
      'timeOfDay': instance.timeOfDay,
      'reminderChannel': instance.reminderChannel,
      'channelId': instance.channelId,
    };
