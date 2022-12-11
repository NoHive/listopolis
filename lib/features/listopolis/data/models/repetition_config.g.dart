// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repetition_config.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RepetitionConfig _$$_RepetitionConfigFromJson(Map<String, dynamic> json) =>
    _$_RepetitionConfig(
      repetitionTypeFromJson(json['repetitionType'] as String),
      json['amount'] as int,
      json['startDate'] as String,
      json['isDaily'] as bool,
      (json['reminders'] as List<dynamic>)
          .map((e) => ReminderTime.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RepetitionConfigToJson(_$_RepetitionConfig instance) =>
    <String, dynamic>{
      'repetitionType': repetitionTypeToJson(instance.repetitionType),
      'amount': instance.amount,
      'startDate': instance.startDate,
      'isDaily': instance.isDaily,
      'reminders': instance.reminders,
    };
