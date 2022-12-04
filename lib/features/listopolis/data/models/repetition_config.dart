import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/features/listopolis/data/models/reminder_time.dart';
import 'package:listopolis/features/listopolis/data/models/repetition_type.dart';

part 'repetition_config.freezed.dart';
part 'repetition_config.g.dart';

@freezed
abstract class RepetitionConfig with _$RepetitionConfig{
  @JsonSerializable()
  const RepetitionConfig._();
  const factory RepetitionConfig(
    @JsonKey(fromJson: repetitionTypeFromJson, toJson: repetitionTypeToJson)
    RepetitionType repetitionType,
    String startDate,
    List<ReminderTime> reminders

  ) = _RepetitionConfig;

  factory RepetitionConfig.fromJson(Map<String, dynamic> json) => _$RepetitionConfigFromJson(json);
}