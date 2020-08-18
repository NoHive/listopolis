// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'user_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

class _$UserDataTearOff {
  const _$UserDataTearOff();

// ignore: unused_element
  _UserData call(
      {@required String id,
      String name,
      List<ListTemplate> templates,
      List<ActiveList> activeLists}) {
    return _UserData(
      id: id,
      name: name,
      templates: templates,
      activeLists: activeLists,
    );
  }
}

// ignore: unused_element
const $UserData = _$UserDataTearOff();

mixin _$UserData {
  String get id;
  String get name;
  List<ListTemplate> get templates;
  List<ActiveList> get activeLists;

  Map<String, dynamic> toJson();
  $UserDataCopyWith<UserData> get copyWith;
}

abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      List<ListTemplate> templates,
      List<ActiveList> activeLists});
}

class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object templates = freezed,
    Object activeLists = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      templates: templates == freezed
          ? _value.templates
          : templates as List<ListTemplate>,
      activeLists: activeLists == freezed
          ? _value.activeLists
          : activeLists as List<ActiveList>,
    ));
  }
}

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

class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object templates = freezed,
    Object activeLists = freezed,
  }) {
    return _then(_UserData(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      templates: templates == freezed
          ? _value.templates
          : templates as List<ListTemplate>,
      activeLists: activeLists == freezed
          ? _value.activeLists
          : activeLists as List<ActiveList>,
    ));
  }
}

@JsonSerializable()
class _$_UserData extends _UserData {
  const _$_UserData(
      {@required this.id, this.name, this.templates, this.activeLists})
      : assert(id != null),
        super._();

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$_$_UserDataFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final List<ListTemplate> templates;
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

  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_UserDataToJson(this);
  }
}

abstract class _UserData extends UserData {
  const _UserData._() : super._();
  const factory _UserData(
      {@required String id,
      String name,
      List<ListTemplate> templates,
      List<ActiveList> activeLists}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  List<ListTemplate> get templates;
  @override
  List<ActiveList> get activeLists;
  @override
  _$UserDataCopyWith<_UserData> get copyWith;
}
