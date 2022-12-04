// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repetition_config.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepetitionConfig _$RepetitionConfigFromJson(Map<String, dynamic> json) {
  return _RepetitionConfig.fromJson(json);
}

/// @nodoc
mixin _$RepetitionConfig {
  @JsonKey(fromJson: repetitionTypeFromJson, toJson: repetitionTypeToJson)
  RepetitionType get repetitionType => throw _privateConstructorUsedError;
  String get startDate => throw _privateConstructorUsedError;
  List<ReminderTime> get reminders => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RepetitionConfigCopyWith<RepetitionConfig> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepetitionConfigCopyWith<$Res> {
  factory $RepetitionConfigCopyWith(
          RepetitionConfig value, $Res Function(RepetitionConfig) then) =
      _$RepetitionConfigCopyWithImpl<$Res, RepetitionConfig>;
  @useResult
  $Res call(
      {@JsonKey(fromJson: repetitionTypeFromJson, toJson: repetitionTypeToJson)
          RepetitionType repetitionType,
      String startDate,
      List<ReminderTime> reminders});

  $RepetitionTypeCopyWith<$Res> get repetitionType;
}

/// @nodoc
class _$RepetitionConfigCopyWithImpl<$Res, $Val extends RepetitionConfig>
    implements $RepetitionConfigCopyWith<$Res> {
  _$RepetitionConfigCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repetitionType = null,
    Object? startDate = null,
    Object? reminders = null,
  }) {
    return _then(_value.copyWith(
      repetitionType: null == repetitionType
          ? _value.repetitionType
          : repetitionType // ignore: cast_nullable_to_non_nullable
              as RepetitionType,
      startDate: null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      reminders: null == reminders
          ? _value.reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<ReminderTime>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RepetitionTypeCopyWith<$Res> get repetitionType {
    return $RepetitionTypeCopyWith<$Res>(_value.repetitionType, (value) {
      return _then(_value.copyWith(repetitionType: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RepetitionConfigCopyWith<$Res>
    implements $RepetitionConfigCopyWith<$Res> {
  factory _$$_RepetitionConfigCopyWith(
          _$_RepetitionConfig value, $Res Function(_$_RepetitionConfig) then) =
      __$$_RepetitionConfigCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(fromJson: repetitionTypeFromJson, toJson: repetitionTypeToJson)
          RepetitionType repetitionType,
      String startDate,
      List<ReminderTime> reminders});

  @override
  $RepetitionTypeCopyWith<$Res> get repetitionType;
}

/// @nodoc
class __$$_RepetitionConfigCopyWithImpl<$Res>
    extends _$RepetitionConfigCopyWithImpl<$Res, _$_RepetitionConfig>
    implements _$$_RepetitionConfigCopyWith<$Res> {
  __$$_RepetitionConfigCopyWithImpl(
      _$_RepetitionConfig _value, $Res Function(_$_RepetitionConfig) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? repetitionType = null,
    Object? startDate = null,
    Object? reminders = null,
  }) {
    return _then(_$_RepetitionConfig(
      null == repetitionType
          ? _value.repetitionType
          : repetitionType // ignore: cast_nullable_to_non_nullable
              as RepetitionType,
      null == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String,
      null == reminders
          ? _value._reminders
          : reminders // ignore: cast_nullable_to_non_nullable
              as List<ReminderTime>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RepetitionConfig extends _RepetitionConfig {
  const _$_RepetitionConfig(
      @JsonKey(fromJson: repetitionTypeFromJson, toJson: repetitionTypeToJson)
          this.repetitionType,
      this.startDate,
      final List<ReminderTime> reminders)
      : _reminders = reminders,
        super._();

  factory _$_RepetitionConfig.fromJson(Map<String, dynamic> json) =>
      _$$_RepetitionConfigFromJson(json);

  @override
  @JsonKey(fromJson: repetitionTypeFromJson, toJson: repetitionTypeToJson)
  final RepetitionType repetitionType;
  @override
  final String startDate;
  final List<ReminderTime> _reminders;
  @override
  List<ReminderTime> get reminders {
    if (_reminders is EqualUnmodifiableListView) return _reminders;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reminders);
  }

  @override
  String toString() {
    return 'RepetitionConfig(repetitionType: $repetitionType, startDate: $startDate, reminders: $reminders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RepetitionConfig &&
            (identical(other.repetitionType, repetitionType) ||
                other.repetitionType == repetitionType) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            const DeepCollectionEquality()
                .equals(other._reminders, _reminders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, repetitionType, startDate,
      const DeepCollectionEquality().hash(_reminders));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RepetitionConfigCopyWith<_$_RepetitionConfig> get copyWith =>
      __$$_RepetitionConfigCopyWithImpl<_$_RepetitionConfig>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RepetitionConfigToJson(
      this,
    );
  }
}

abstract class _RepetitionConfig extends RepetitionConfig {
  const factory _RepetitionConfig(
      @JsonKey(fromJson: repetitionTypeFromJson, toJson: repetitionTypeToJson)
          final RepetitionType repetitionType,
      final String startDate,
      final List<ReminderTime> reminders) = _$_RepetitionConfig;
  const _RepetitionConfig._() : super._();

  factory _RepetitionConfig.fromJson(Map<String, dynamic> json) =
      _$_RepetitionConfig.fromJson;

  @override
  @JsonKey(fromJson: repetitionTypeFromJson, toJson: repetitionTypeToJson)
  RepetitionType get repetitionType;
  @override
  String get startDate;
  @override
  List<ReminderTime> get reminders;
  @override
  @JsonKey(ignore: true)
  _$$_RepetitionConfigCopyWith<_$_RepetitionConfig> get copyWith =>
      throw _privateConstructorUsedError;
}
