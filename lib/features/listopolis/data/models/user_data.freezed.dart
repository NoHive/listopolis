// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

  _UserData call(
      {String id = '0815',
      String name = 'some User',
      List<ListTemplate> templates = const [],
      List<ActiveList> activeLists = const []}) {
    return _UserData(
      id: id,
      name: name,
      templates: templates,
      activeLists: activeLists,
    );
  }

  UserData fromJson(Map<String, Object> json) {
    return UserData.fromJson(json);
  }
}

/// @nodoc
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ListTemplate> get templates => throw _privateConstructorUsedError;
  List<ActiveList> get activeLists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      List<ListTemplate> templates,
      List<ActiveList> activeLists});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? templates = freezed,
    Object? activeLists = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      templates: templates == freezed
          ? _value.templates
          : templates // ignore: cast_nullable_to_non_nullable
              as List<ListTemplate>,
      activeLists: activeLists == freezed
          ? _value.activeLists
          : activeLists // ignore: cast_nullable_to_non_nullable
              as List<ActiveList>,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      List<ListTemplate> templates,
      List<ActiveList> activeLists});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? templates = freezed,
    Object? activeLists = freezed,
  }) {
    return _then(_UserData(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      templates: templates == freezed
          ? _value.templates
          : templates // ignore: cast_nullable_to_non_nullable
              as List<ListTemplate>,
      activeLists: activeLists == freezed
          ? _value.activeLists
          : activeLists // ignore: cast_nullable_to_non_nullable
              as List<ActiveList>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_UserData extends _UserData {
  const _$_UserData(
      {this.id = '0815',
      this.name = 'some User',
      this.templates = const [],
      this.activeLists = const []})
      : super._();

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataFromJson(json);

  @JsonKey(defaultValue: '0815')
  @override
  final String id;
  @JsonKey(defaultValue: 'some User')
  @override
  final String name;
  @JsonKey(defaultValue: const [])
  @override
  final List<ListTemplate> templates;
  @JsonKey(defaultValue: const [])
  @override
  final List<ActiveList> activeLists;

  @override
  String toString() {
    return 'UserData(id: $id, name: $name, templates: $templates, activeLists: $activeLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UserData &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.templates, templates) ||
                const DeepCollectionEquality()
                    .equals(other.templates, templates)) &&
            (identical(other.activeLists, activeLists) ||
                const DeepCollectionEquality()
                    .equals(other.activeLists, activeLists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(templates) ^
      const DeepCollectionEquality().hash(activeLists);

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataToJson(this);
  }
}

abstract class _UserData extends UserData {
  const factory _UserData(
      {String id,
      String name,
      List<ListTemplate> templates,
      List<ActiveList> activeLists}) = _$_UserData;
  const _UserData._() : super._();

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  List<ListTemplate> get templates => throw _privateConstructorUsedError;
  @override
  List<ActiveList> get activeLists => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}
