// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ListTemplateTearOff {
  const _$ListTemplateTearOff();

// ignore: unused_element
  _ListTemplate call(
      {@required String id, @required String name, @required ListType type}) {
    return _ListTemplate(
      id: id,
      name: name,
      type: type,
    );
  }
}

// ignore: unused_element
const $ListTemplate = _$ListTemplateTearOff();

mixin _$ListTemplate {
  String get id;
  String get name;
  ListType get type;

  $ListTemplateCopyWith<ListTemplate> get copyWith;
}

abstract class $ListTemplateCopyWith<$Res> {
  factory $ListTemplateCopyWith(
          ListTemplate value, $Res Function(ListTemplate) then) =
      _$ListTemplateCopyWithImpl<$Res>;
  $Res call({String id, String name, ListType type});

  $ListTypeCopyWith<$Res> get type;
}

class _$ListTemplateCopyWithImpl<$Res> implements $ListTemplateCopyWith<$Res> {
  _$ListTemplateCopyWithImpl(this._value, this._then);

  final ListTemplate _value;
  // ignore: unused_field
  final $Res Function(ListTemplate) _then;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as ListType,
    ));
  }

  @override
  $ListTypeCopyWith<$Res> get type {
    if (_value.type == null) {
      return null;
    }
    return $ListTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

abstract class _$ListTemplateCopyWith<$Res>
    implements $ListTemplateCopyWith<$Res> {
  factory _$ListTemplateCopyWith(
          _ListTemplate value, $Res Function(_ListTemplate) then) =
      __$ListTemplateCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, ListType type});

  @override
  $ListTypeCopyWith<$Res> get type;
}

class __$ListTemplateCopyWithImpl<$Res> extends _$ListTemplateCopyWithImpl<$Res>
    implements _$ListTemplateCopyWith<$Res> {
  __$ListTemplateCopyWithImpl(
      _ListTemplate _value, $Res Function(_ListTemplate) _then)
      : super(_value, (v) => _then(v as _ListTemplate));

  @override
  _ListTemplate get _value => super._value as _ListTemplate;

  @override
  $Res call({
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
  }) {
    return _then(_ListTemplate(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as ListType,
    ));
  }
}

class _$_ListTemplate implements _ListTemplate {
  const _$_ListTemplate(
      {@required this.id, @required this.name, @required this.type})
      : assert(id != null),
        assert(name != null),
        assert(type != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final ListType type;

  @override
  String toString() {
    return 'ListTemplate(id: $id, name: $name, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListTemplate &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type);

  @override
  _$ListTemplateCopyWith<_ListTemplate> get copyWith =>
      __$ListTemplateCopyWithImpl<_ListTemplate>(this, _$identity);
}

abstract class _ListTemplate implements ListTemplate {
  const factory _ListTemplate(
      {@required String id,
      @required String name,
      @required ListType type}) = _$_ListTemplate;

  @override
  String get id;
  @override
  String get name;
  @override
  ListType get type;
  @override
  _$ListTemplateCopyWith<_ListTemplate> get copyWith;
}

class _$ListTemplatePositionTearOff {
  const _$ListTemplatePositionTearOff();

// ignore: unused_element
  _ListTemplatePosition call({@required String name, @required int position}) {
    return _ListTemplatePosition(
      name: name,
      position: position,
    );
  }
}

// ignore: unused_element
const $ListTemplatePosition = _$ListTemplatePositionTearOff();

mixin _$ListTemplatePosition {
  String get name;
  int get position;

  $ListTemplatePositionCopyWith<ListTemplatePosition> get copyWith;
}

abstract class $ListTemplatePositionCopyWith<$Res> {
  factory $ListTemplatePositionCopyWith(ListTemplatePosition value,
          $Res Function(ListTemplatePosition) then) =
      _$ListTemplatePositionCopyWithImpl<$Res>;
  $Res call({String name, int position});
}

class _$ListTemplatePositionCopyWithImpl<$Res>
    implements $ListTemplatePositionCopyWith<$Res> {
  _$ListTemplatePositionCopyWithImpl(this._value, this._then);

  final ListTemplatePosition _value;
  // ignore: unused_field
  final $Res Function(ListTemplatePosition) _then;

  @override
  $Res call({
    Object name = freezed,
    Object position = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      position: position == freezed ? _value.position : position as int,
    ));
  }
}

abstract class _$ListTemplatePositionCopyWith<$Res>
    implements $ListTemplatePositionCopyWith<$Res> {
  factory _$ListTemplatePositionCopyWith(_ListTemplatePosition value,
          $Res Function(_ListTemplatePosition) then) =
      __$ListTemplatePositionCopyWithImpl<$Res>;
  @override
  $Res call({String name, int position});
}

class __$ListTemplatePositionCopyWithImpl<$Res>
    extends _$ListTemplatePositionCopyWithImpl<$Res>
    implements _$ListTemplatePositionCopyWith<$Res> {
  __$ListTemplatePositionCopyWithImpl(
      _ListTemplatePosition _value, $Res Function(_ListTemplatePosition) _then)
      : super(_value, (v) => _then(v as _ListTemplatePosition));

  @override
  _ListTemplatePosition get _value => super._value as _ListTemplatePosition;

  @override
  $Res call({
    Object name = freezed,
    Object position = freezed,
  }) {
    return _then(_ListTemplatePosition(
      name: name == freezed ? _value.name : name as String,
      position: position == freezed ? _value.position : position as int,
    ));
  }
}

class _$_ListTemplatePosition implements _ListTemplatePosition {
  const _$_ListTemplatePosition({@required this.name, @required this.position})
      : assert(name != null),
        assert(position != null);

  @override
  final String name;
  @override
  final int position;

  @override
  String toString() {
    return 'ListTemplatePosition(name: $name, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListTemplatePosition &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(position);

  @override
  _$ListTemplatePositionCopyWith<_ListTemplatePosition> get copyWith =>
      __$ListTemplatePositionCopyWithImpl<_ListTemplatePosition>(
          this, _$identity);
}

abstract class _ListTemplatePosition implements ListTemplatePosition {
  const factory _ListTemplatePosition(
      {@required String name,
      @required int position}) = _$_ListTemplatePosition;

  @override
  String get name;
  @override
  int get position;
  @override
  _$ListTemplatePositionCopyWith<_ListTemplatePosition> get copyWith;
}
