// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'repetition_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RepetitionType _$RepetitionTypeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'daily':
      return Daily.fromJson(json);
    case 'weekly':
      return Weekly.fromJson(json);
    case 'monthly':
      return Monthly.fromJson(json);
    case 'yearly':
      return Yearly.fromJson(json);
    case 'minuteOfHour':
      return MinuteOfHour.fromJson(json);
    case 'secondOfMinute':
      return SecondOfMinute.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'RepetitionType',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$RepetitionType {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
    required TResult Function() yearly,
    required TResult Function() minuteOfHour,
    required TResult Function() secondOfMinute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function()? weekly,
    TResult? Function()? monthly,
    TResult? Function()? yearly,
    TResult? Function()? minuteOfHour,
    TResult? Function()? secondOfMinute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    TResult Function()? yearly,
    TResult Function()? minuteOfHour,
    TResult Function()? secondOfMinute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Daily value) daily,
    required TResult Function(Weekly value) weekly,
    required TResult Function(Monthly value) monthly,
    required TResult Function(Yearly value) yearly,
    required TResult Function(MinuteOfHour value) minuteOfHour,
    required TResult Function(SecondOfMinute value) secondOfMinute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Daily value)? daily,
    TResult? Function(Weekly value)? weekly,
    TResult? Function(Monthly value)? monthly,
    TResult? Function(Yearly value)? yearly,
    TResult? Function(MinuteOfHour value)? minuteOfHour,
    TResult? Function(SecondOfMinute value)? secondOfMinute,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Daily value)? daily,
    TResult Function(Weekly value)? weekly,
    TResult Function(Monthly value)? monthly,
    TResult Function(Yearly value)? yearly,
    TResult Function(MinuteOfHour value)? minuteOfHour,
    TResult Function(SecondOfMinute value)? secondOfMinute,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepetitionTypeCopyWith<$Res> {
  factory $RepetitionTypeCopyWith(
          RepetitionType value, $Res Function(RepetitionType) then) =
      _$RepetitionTypeCopyWithImpl<$Res, RepetitionType>;
}

/// @nodoc
class _$RepetitionTypeCopyWithImpl<$Res, $Val extends RepetitionType>
    implements $RepetitionTypeCopyWith<$Res> {
  _$RepetitionTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$DailyCopyWith<$Res> {
  factory _$$DailyCopyWith(_$Daily value, $Res Function(_$Daily) then) =
      __$$DailyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DailyCopyWithImpl<$Res>
    extends _$RepetitionTypeCopyWithImpl<$Res, _$Daily>
    implements _$$DailyCopyWith<$Res> {
  __$$DailyCopyWithImpl(_$Daily _value, $Res Function(_$Daily) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$Daily extends Daily {
  const _$Daily({final String? $type})
      : $type = $type ?? 'daily',
        super._();

  factory _$Daily.fromJson(Map<String, dynamic> json) => _$$DailyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepetitionType.daily()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Daily);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
    required TResult Function() yearly,
    required TResult Function() minuteOfHour,
    required TResult Function() secondOfMinute,
  }) {
    return daily();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function()? weekly,
    TResult? Function()? monthly,
    TResult? Function()? yearly,
    TResult? Function()? minuteOfHour,
    TResult? Function()? secondOfMinute,
  }) {
    return daily?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    TResult Function()? yearly,
    TResult Function()? minuteOfHour,
    TResult Function()? secondOfMinute,
    required TResult orElse(),
  }) {
    if (daily != null) {
      return daily();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Daily value) daily,
    required TResult Function(Weekly value) weekly,
    required TResult Function(Monthly value) monthly,
    required TResult Function(Yearly value) yearly,
    required TResult Function(MinuteOfHour value) minuteOfHour,
    required TResult Function(SecondOfMinute value) secondOfMinute,
  }) {
    return daily(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Daily value)? daily,
    TResult? Function(Weekly value)? weekly,
    TResult? Function(Monthly value)? monthly,
    TResult? Function(Yearly value)? yearly,
    TResult? Function(MinuteOfHour value)? minuteOfHour,
    TResult? Function(SecondOfMinute value)? secondOfMinute,
  }) {
    return daily?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Daily value)? daily,
    TResult Function(Weekly value)? weekly,
    TResult Function(Monthly value)? monthly,
    TResult Function(Yearly value)? yearly,
    TResult Function(MinuteOfHour value)? minuteOfHour,
    TResult Function(SecondOfMinute value)? secondOfMinute,
    required TResult orElse(),
  }) {
    if (daily != null) {
      return daily(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DailyToJson(
      this,
    );
  }
}

abstract class Daily extends RepetitionType {
  const factory Daily() = _$Daily;
  const Daily._() : super._();

  factory Daily.fromJson(Map<String, dynamic> json) = _$Daily.fromJson;
}

/// @nodoc
abstract class _$$WeeklyCopyWith<$Res> {
  factory _$$WeeklyCopyWith(_$Weekly value, $Res Function(_$Weekly) then) =
      __$$WeeklyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$WeeklyCopyWithImpl<$Res>
    extends _$RepetitionTypeCopyWithImpl<$Res, _$Weekly>
    implements _$$WeeklyCopyWith<$Res> {
  __$$WeeklyCopyWithImpl(_$Weekly _value, $Res Function(_$Weekly) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$Weekly extends Weekly {
  const _$Weekly({final String? $type})
      : $type = $type ?? 'weekly',
        super._();

  factory _$Weekly.fromJson(Map<String, dynamic> json) =>
      _$$WeeklyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepetitionType.weekly()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Weekly);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
    required TResult Function() yearly,
    required TResult Function() minuteOfHour,
    required TResult Function() secondOfMinute,
  }) {
    return weekly();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function()? weekly,
    TResult? Function()? monthly,
    TResult? Function()? yearly,
    TResult? Function()? minuteOfHour,
    TResult? Function()? secondOfMinute,
  }) {
    return weekly?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    TResult Function()? yearly,
    TResult Function()? minuteOfHour,
    TResult Function()? secondOfMinute,
    required TResult orElse(),
  }) {
    if (weekly != null) {
      return weekly();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Daily value) daily,
    required TResult Function(Weekly value) weekly,
    required TResult Function(Monthly value) monthly,
    required TResult Function(Yearly value) yearly,
    required TResult Function(MinuteOfHour value) minuteOfHour,
    required TResult Function(SecondOfMinute value) secondOfMinute,
  }) {
    return weekly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Daily value)? daily,
    TResult? Function(Weekly value)? weekly,
    TResult? Function(Monthly value)? monthly,
    TResult? Function(Yearly value)? yearly,
    TResult? Function(MinuteOfHour value)? minuteOfHour,
    TResult? Function(SecondOfMinute value)? secondOfMinute,
  }) {
    return weekly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Daily value)? daily,
    TResult Function(Weekly value)? weekly,
    TResult Function(Monthly value)? monthly,
    TResult Function(Yearly value)? yearly,
    TResult Function(MinuteOfHour value)? minuteOfHour,
    TResult Function(SecondOfMinute value)? secondOfMinute,
    required TResult orElse(),
  }) {
    if (weekly != null) {
      return weekly(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$WeeklyToJson(
      this,
    );
  }
}

abstract class Weekly extends RepetitionType {
  const factory Weekly() = _$Weekly;
  const Weekly._() : super._();

  factory Weekly.fromJson(Map<String, dynamic> json) = _$Weekly.fromJson;
}

/// @nodoc
abstract class _$$MonthlyCopyWith<$Res> {
  factory _$$MonthlyCopyWith(_$Monthly value, $Res Function(_$Monthly) then) =
      __$$MonthlyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MonthlyCopyWithImpl<$Res>
    extends _$RepetitionTypeCopyWithImpl<$Res, _$Monthly>
    implements _$$MonthlyCopyWith<$Res> {
  __$$MonthlyCopyWithImpl(_$Monthly _value, $Res Function(_$Monthly) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$Monthly extends Monthly {
  const _$Monthly({final String? $type})
      : $type = $type ?? 'monthly',
        super._();

  factory _$Monthly.fromJson(Map<String, dynamic> json) =>
      _$$MonthlyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepetitionType.monthly()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Monthly);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
    required TResult Function() yearly,
    required TResult Function() minuteOfHour,
    required TResult Function() secondOfMinute,
  }) {
    return monthly();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function()? weekly,
    TResult? Function()? monthly,
    TResult? Function()? yearly,
    TResult? Function()? minuteOfHour,
    TResult? Function()? secondOfMinute,
  }) {
    return monthly?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    TResult Function()? yearly,
    TResult Function()? minuteOfHour,
    TResult Function()? secondOfMinute,
    required TResult orElse(),
  }) {
    if (monthly != null) {
      return monthly();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Daily value) daily,
    required TResult Function(Weekly value) weekly,
    required TResult Function(Monthly value) monthly,
    required TResult Function(Yearly value) yearly,
    required TResult Function(MinuteOfHour value) minuteOfHour,
    required TResult Function(SecondOfMinute value) secondOfMinute,
  }) {
    return monthly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Daily value)? daily,
    TResult? Function(Weekly value)? weekly,
    TResult? Function(Monthly value)? monthly,
    TResult? Function(Yearly value)? yearly,
    TResult? Function(MinuteOfHour value)? minuteOfHour,
    TResult? Function(SecondOfMinute value)? secondOfMinute,
  }) {
    return monthly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Daily value)? daily,
    TResult Function(Weekly value)? weekly,
    TResult Function(Monthly value)? monthly,
    TResult Function(Yearly value)? yearly,
    TResult Function(MinuteOfHour value)? minuteOfHour,
    TResult Function(SecondOfMinute value)? secondOfMinute,
    required TResult orElse(),
  }) {
    if (monthly != null) {
      return monthly(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MonthlyToJson(
      this,
    );
  }
}

abstract class Monthly extends RepetitionType {
  const factory Monthly() = _$Monthly;
  const Monthly._() : super._();

  factory Monthly.fromJson(Map<String, dynamic> json) = _$Monthly.fromJson;
}

/// @nodoc
abstract class _$$YearlyCopyWith<$Res> {
  factory _$$YearlyCopyWith(_$Yearly value, $Res Function(_$Yearly) then) =
      __$$YearlyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$YearlyCopyWithImpl<$Res>
    extends _$RepetitionTypeCopyWithImpl<$Res, _$Yearly>
    implements _$$YearlyCopyWith<$Res> {
  __$$YearlyCopyWithImpl(_$Yearly _value, $Res Function(_$Yearly) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$Yearly extends Yearly {
  const _$Yearly({final String? $type})
      : $type = $type ?? 'yearly',
        super._();

  factory _$Yearly.fromJson(Map<String, dynamic> json) =>
      _$$YearlyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepetitionType.yearly()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Yearly);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
    required TResult Function() yearly,
    required TResult Function() minuteOfHour,
    required TResult Function() secondOfMinute,
  }) {
    return yearly();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function()? weekly,
    TResult? Function()? monthly,
    TResult? Function()? yearly,
    TResult? Function()? minuteOfHour,
    TResult? Function()? secondOfMinute,
  }) {
    return yearly?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    TResult Function()? yearly,
    TResult Function()? minuteOfHour,
    TResult Function()? secondOfMinute,
    required TResult orElse(),
  }) {
    if (yearly != null) {
      return yearly();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Daily value) daily,
    required TResult Function(Weekly value) weekly,
    required TResult Function(Monthly value) monthly,
    required TResult Function(Yearly value) yearly,
    required TResult Function(MinuteOfHour value) minuteOfHour,
    required TResult Function(SecondOfMinute value) secondOfMinute,
  }) {
    return yearly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Daily value)? daily,
    TResult? Function(Weekly value)? weekly,
    TResult? Function(Monthly value)? monthly,
    TResult? Function(Yearly value)? yearly,
    TResult? Function(MinuteOfHour value)? minuteOfHour,
    TResult? Function(SecondOfMinute value)? secondOfMinute,
  }) {
    return yearly?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Daily value)? daily,
    TResult Function(Weekly value)? weekly,
    TResult Function(Monthly value)? monthly,
    TResult Function(Yearly value)? yearly,
    TResult Function(MinuteOfHour value)? minuteOfHour,
    TResult Function(SecondOfMinute value)? secondOfMinute,
    required TResult orElse(),
  }) {
    if (yearly != null) {
      return yearly(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$YearlyToJson(
      this,
    );
  }
}

abstract class Yearly extends RepetitionType {
  const factory Yearly() = _$Yearly;
  const Yearly._() : super._();

  factory Yearly.fromJson(Map<String, dynamic> json) = _$Yearly.fromJson;
}

/// @nodoc
abstract class _$$MinuteOfHourCopyWith<$Res> {
  factory _$$MinuteOfHourCopyWith(
          _$MinuteOfHour value, $Res Function(_$MinuteOfHour) then) =
      __$$MinuteOfHourCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MinuteOfHourCopyWithImpl<$Res>
    extends _$RepetitionTypeCopyWithImpl<$Res, _$MinuteOfHour>
    implements _$$MinuteOfHourCopyWith<$Res> {
  __$$MinuteOfHourCopyWithImpl(
      _$MinuteOfHour _value, $Res Function(_$MinuteOfHour) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$MinuteOfHour extends MinuteOfHour {
  const _$MinuteOfHour({final String? $type})
      : $type = $type ?? 'minuteOfHour',
        super._();

  factory _$MinuteOfHour.fromJson(Map<String, dynamic> json) =>
      _$$MinuteOfHourFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepetitionType.minuteOfHour()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MinuteOfHour);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
    required TResult Function() yearly,
    required TResult Function() minuteOfHour,
    required TResult Function() secondOfMinute,
  }) {
    return minuteOfHour();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function()? weekly,
    TResult? Function()? monthly,
    TResult? Function()? yearly,
    TResult? Function()? minuteOfHour,
    TResult? Function()? secondOfMinute,
  }) {
    return minuteOfHour?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    TResult Function()? yearly,
    TResult Function()? minuteOfHour,
    TResult Function()? secondOfMinute,
    required TResult orElse(),
  }) {
    if (minuteOfHour != null) {
      return minuteOfHour();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Daily value) daily,
    required TResult Function(Weekly value) weekly,
    required TResult Function(Monthly value) monthly,
    required TResult Function(Yearly value) yearly,
    required TResult Function(MinuteOfHour value) minuteOfHour,
    required TResult Function(SecondOfMinute value) secondOfMinute,
  }) {
    return minuteOfHour(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Daily value)? daily,
    TResult? Function(Weekly value)? weekly,
    TResult? Function(Monthly value)? monthly,
    TResult? Function(Yearly value)? yearly,
    TResult? Function(MinuteOfHour value)? minuteOfHour,
    TResult? Function(SecondOfMinute value)? secondOfMinute,
  }) {
    return minuteOfHour?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Daily value)? daily,
    TResult Function(Weekly value)? weekly,
    TResult Function(Monthly value)? monthly,
    TResult Function(Yearly value)? yearly,
    TResult Function(MinuteOfHour value)? minuteOfHour,
    TResult Function(SecondOfMinute value)? secondOfMinute,
    required TResult orElse(),
  }) {
    if (minuteOfHour != null) {
      return minuteOfHour(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$MinuteOfHourToJson(
      this,
    );
  }
}

abstract class MinuteOfHour extends RepetitionType {
  const factory MinuteOfHour() = _$MinuteOfHour;
  const MinuteOfHour._() : super._();

  factory MinuteOfHour.fromJson(Map<String, dynamic> json) =
      _$MinuteOfHour.fromJson;
}

/// @nodoc
abstract class _$$SecondOfMinuteCopyWith<$Res> {
  factory _$$SecondOfMinuteCopyWith(
          _$SecondOfMinute value, $Res Function(_$SecondOfMinute) then) =
      __$$SecondOfMinuteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SecondOfMinuteCopyWithImpl<$Res>
    extends _$RepetitionTypeCopyWithImpl<$Res, _$SecondOfMinute>
    implements _$$SecondOfMinuteCopyWith<$Res> {
  __$$SecondOfMinuteCopyWithImpl(
      _$SecondOfMinute _value, $Res Function(_$SecondOfMinute) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$SecondOfMinute extends SecondOfMinute {
  const _$SecondOfMinute({final String? $type})
      : $type = $type ?? 'secondOfMinute',
        super._();

  factory _$SecondOfMinute.fromJson(Map<String, dynamic> json) =>
      _$$SecondOfMinuteFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'RepetitionType.secondOfMinute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SecondOfMinute);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() daily,
    required TResult Function() weekly,
    required TResult Function() monthly,
    required TResult Function() yearly,
    required TResult Function() minuteOfHour,
    required TResult Function() secondOfMinute,
  }) {
    return secondOfMinute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? daily,
    TResult? Function()? weekly,
    TResult? Function()? monthly,
    TResult? Function()? yearly,
    TResult? Function()? minuteOfHour,
    TResult? Function()? secondOfMinute,
  }) {
    return secondOfMinute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? daily,
    TResult Function()? weekly,
    TResult Function()? monthly,
    TResult Function()? yearly,
    TResult Function()? minuteOfHour,
    TResult Function()? secondOfMinute,
    required TResult orElse(),
  }) {
    if (secondOfMinute != null) {
      return secondOfMinute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Daily value) daily,
    required TResult Function(Weekly value) weekly,
    required TResult Function(Monthly value) monthly,
    required TResult Function(Yearly value) yearly,
    required TResult Function(MinuteOfHour value) minuteOfHour,
    required TResult Function(SecondOfMinute value) secondOfMinute,
  }) {
    return secondOfMinute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Daily value)? daily,
    TResult? Function(Weekly value)? weekly,
    TResult? Function(Monthly value)? monthly,
    TResult? Function(Yearly value)? yearly,
    TResult? Function(MinuteOfHour value)? minuteOfHour,
    TResult? Function(SecondOfMinute value)? secondOfMinute,
  }) {
    return secondOfMinute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Daily value)? daily,
    TResult Function(Weekly value)? weekly,
    TResult Function(Monthly value)? monthly,
    TResult Function(Yearly value)? yearly,
    TResult Function(MinuteOfHour value)? minuteOfHour,
    TResult Function(SecondOfMinute value)? secondOfMinute,
    required TResult orElse(),
  }) {
    if (secondOfMinute != null) {
      return secondOfMinute(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$SecondOfMinuteToJson(
      this,
    );
  }
}

abstract class SecondOfMinute extends RepetitionType {
  const factory SecondOfMinute() = _$SecondOfMinute;
  const SecondOfMinute._() : super._();

  factory SecondOfMinute.fromJson(Map<String, dynamic> json) =
      _$SecondOfMinute.fromJson;
}
