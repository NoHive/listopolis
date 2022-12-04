// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reminder_time.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ReminderTime _$ReminderTimeFromJson(Map<String, dynamic> json) {
  return _ReminderTime.fromJson(json);
}

/// @nodoc
mixin _$ReminderTime {
  String get timeOfDay => throw _privateConstructorUsedError;
  String get reminderChannel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReminderTimeCopyWith<ReminderTime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReminderTimeCopyWith<$Res> {
  factory $ReminderTimeCopyWith(
          ReminderTime value, $Res Function(ReminderTime) then) =
      _$ReminderTimeCopyWithImpl<$Res, ReminderTime>;
  @useResult
  $Res call({String timeOfDay, String reminderChannel});
}

/// @nodoc
class _$ReminderTimeCopyWithImpl<$Res, $Val extends ReminderTime>
    implements $ReminderTimeCopyWith<$Res> {
  _$ReminderTimeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeOfDay = null,
    Object? reminderChannel = null,
  }) {
    return _then(_value.copyWith(
      timeOfDay: null == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      reminderChannel: null == reminderChannel
          ? _value.reminderChannel
          : reminderChannel // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ReminderTimeCopyWith<$Res>
    implements $ReminderTimeCopyWith<$Res> {
  factory _$$_ReminderTimeCopyWith(
          _$_ReminderTime value, $Res Function(_$_ReminderTime) then) =
      __$$_ReminderTimeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String timeOfDay, String reminderChannel});
}

/// @nodoc
class __$$_ReminderTimeCopyWithImpl<$Res>
    extends _$ReminderTimeCopyWithImpl<$Res, _$_ReminderTime>
    implements _$$_ReminderTimeCopyWith<$Res> {
  __$$_ReminderTimeCopyWithImpl(
      _$_ReminderTime _value, $Res Function(_$_ReminderTime) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timeOfDay = null,
    Object? reminderChannel = null,
  }) {
    return _then(_$_ReminderTime(
      null == timeOfDay
          ? _value.timeOfDay
          : timeOfDay // ignore: cast_nullable_to_non_nullable
              as String,
      null == reminderChannel
          ? _value.reminderChannel
          : reminderChannel // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ReminderTime extends _ReminderTime {
  const _$_ReminderTime(this.timeOfDay, this.reminderChannel) : super._();

  factory _$_ReminderTime.fromJson(Map<String, dynamic> json) =>
      _$$_ReminderTimeFromJson(json);

  @override
  final String timeOfDay;
  @override
  final String reminderChannel;

  @override
  String toString() {
    return 'ReminderTime(timeOfDay: $timeOfDay, reminderChannel: $reminderChannel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ReminderTime &&
            (identical(other.timeOfDay, timeOfDay) ||
                other.timeOfDay == timeOfDay) &&
            (identical(other.reminderChannel, reminderChannel) ||
                other.reminderChannel == reminderChannel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timeOfDay, reminderChannel);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ReminderTimeCopyWith<_$_ReminderTime> get copyWith =>
      __$$_ReminderTimeCopyWithImpl<_$_ReminderTime>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ReminderTimeToJson(
      this,
    );
  }
}

abstract class _ReminderTime extends ReminderTime {
  const factory _ReminderTime(
      final String timeOfDay, final String reminderChannel) = _$_ReminderTime;
  const _ReminderTime._() : super._();

  factory _ReminderTime.fromJson(Map<String, dynamic> json) =
      _$_ReminderTime.fromJson;

  @override
  String get timeOfDay;
  @override
  String get reminderChannel;
  @override
  @JsonKey(ignore: true)
  _$$_ReminderTimeCopyWith<_$_ReminderTime> get copyWith =>
      throw _privateConstructorUsedError;
}
