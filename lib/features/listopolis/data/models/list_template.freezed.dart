// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ListTemplate _$ListTemplateFromJson(Map<String, dynamic> json) {
  return _ListTemplate.fromJson(json);
}

class _$ListTemplateTearOff {
  const _$ListTemplateTearOff();

// ignore: unused_element
  _ListTemplate call(
      {@required
          String id,
      @required
          String name,
      @required
          int position,
      @required
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      List<ListTemplatePosition> templatePositions}) {
    return _ListTemplate(
      id: id,
      name: name,
      position: position,
      type: type,
      templatePositions: templatePositions,
    );
  }
}

// ignore: unused_element
const $ListTemplate = _$ListTemplateTearOff();

mixin _$ListTemplate {
  String get id;
  String get name;
  int get position;
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  ListType get type;
  List<ListTemplatePosition> get templatePositions;

  Map<String, dynamic> toJson();
  $ListTemplateCopyWith<ListTemplate> get copyWith;
}

abstract class $ListTemplateCopyWith<$Res> {
  factory $ListTemplateCopyWith(
          ListTemplate value, $Res Function(ListTemplate) then) =
      _$ListTemplateCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      int position,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      List<ListTemplatePosition> templatePositions});

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
    Object position = freezed,
    Object type = freezed,
    Object templatePositions = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      position: position == freezed ? _value.position : position as int,
      type: type == freezed ? _value.type : type as ListType,
      templatePositions: templatePositions == freezed
          ? _value.templatePositions
          : templatePositions as List<ListTemplatePosition>,
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
  $Res call(
      {String id,
      String name,
      int position,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      List<ListTemplatePosition> templatePositions});

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
    Object position = freezed,
    Object type = freezed,
    Object templatePositions = freezed,
  }) {
    return _then(_ListTemplate(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      position: position == freezed ? _value.position : position as int,
      type: type == freezed ? _value.type : type as ListType,
      templatePositions: templatePositions == freezed
          ? _value.templatePositions
          : templatePositions as List<ListTemplatePosition>,
    ));
  }
}

@JsonSerializable()
class _$_ListTemplate extends _ListTemplate {
  const _$_ListTemplate(
      {@required
          this.id,
      @required
          this.name,
      @required
          this.position,
      @required
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          this.type,
      this.templatePositions})
      : assert(id != null),
        assert(name != null),
        assert(position != null),
        assert(type != null),
        super._();

  factory _$_ListTemplate.fromJson(Map<String, dynamic> json) =>
      _$_$_ListTemplateFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int position;
  @override
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  final ListType type;
  @override
  final List<ListTemplatePosition> templatePositions;

  @override
  String toString() {
    return 'ListTemplate(id: $id, name: $name, position: $position, type: $type, templatePositions: $templatePositions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListTemplate &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.templatePositions, templatePositions) ||
                const DeepCollectionEquality()
                    .equals(other.templatePositions, templatePositions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(templatePositions);

  @override
  _$ListTemplateCopyWith<_ListTemplate> get copyWith =>
      __$ListTemplateCopyWithImpl<_ListTemplate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListTemplateToJson(this);
  }
}

abstract class _ListTemplate extends ListTemplate {
  const _ListTemplate._() : super._();
  const factory _ListTemplate(
      {@required
          String id,
      @required
          String name,
      @required
          int position,
      @required
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      List<ListTemplatePosition> templatePositions}) = _$_ListTemplate;

  factory _ListTemplate.fromJson(Map<String, dynamic> json) =
      _$_ListTemplate.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get position;
  @override
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  ListType get type;
  @override
  List<ListTemplatePosition> get templatePositions;
  @override
  _$ListTemplateCopyWith<_ListTemplate> get copyWith;
}

ListTemplatePosition _$ListTemplatePositionFromJson(Map<String, dynamic> json) {
  return _ListTemplatePosition.fromJson(json);
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

  Map<String, dynamic> toJson();
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

@JsonSerializable()
class _$_ListTemplatePosition extends _ListTemplatePosition {
  const _$_ListTemplatePosition({@required this.name, @required this.position})
      : assert(name != null),
        assert(position != null),
        super._();

  factory _$_ListTemplatePosition.fromJson(Map<String, dynamic> json) =>
      _$_$_ListTemplatePositionFromJson(json);

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

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListTemplatePositionToJson(this);
  }
}

abstract class _ListTemplatePosition extends ListTemplatePosition {
  const _ListTemplatePosition._() : super._();
  const factory _ListTemplatePosition(
      {@required String name,
      @required int position}) = _$_ListTemplatePosition;

  factory _ListTemplatePosition.fromJson(Map<String, dynamic> json) =
      _$_ListTemplatePosition.fromJson;

  @override
  String get name;
  @override
  int get position;
  @override
  _$ListTemplatePositionCopyWith<_ListTemplatePosition> get copyWith;
}
