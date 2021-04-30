// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListTemplate _$ListTemplateFromJson(Map<String, dynamic> json) {
  return _ListTemplate.fromJson(json);
}

/// @nodoc
class _$ListTemplateTearOff {
  const _$ListTemplateTearOff();

  _ListTemplate call(
      {String id = '0815',
      String name = 'a template',
      int position = 1,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type = const ListType.todo(),
      List<ListTemplatePosition> templatePositions = const []}) {
    return _ListTemplate(
      id: id,
      name: name,
      position: position,
      type: type,
      templatePositions: templatePositions,
    );
  }

  ListTemplate fromJson(Map<String, Object> json) {
    return ListTemplate.fromJson(json);
  }
}

/// @nodoc
const $ListTemplate = _$ListTemplateTearOff();

/// @nodoc
mixin _$ListTemplate {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  ListType get type => throw _privateConstructorUsedError;
  List<ListTemplatePosition> get templatePositions =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListTemplateCopyWith<ListTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
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

/// @nodoc
class _$ListTemplateCopyWithImpl<$Res> implements $ListTemplateCopyWith<$Res> {
  _$ListTemplateCopyWithImpl(this._value, this._then);

  final ListTemplate _value;
  // ignore: unused_field
  final $Res Function(ListTemplate) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? position = freezed,
    Object? type = freezed,
    Object? templatePositions = freezed,
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
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ListType,
      templatePositions: templatePositions == freezed
          ? _value.templatePositions
          : templatePositions // ignore: cast_nullable_to_non_nullable
              as List<ListTemplatePosition>,
    ));
  }

  @override
  $ListTypeCopyWith<$Res> get type {
    return $ListTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value));
    });
  }
}

/// @nodoc
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

/// @nodoc
class __$ListTemplateCopyWithImpl<$Res> extends _$ListTemplateCopyWithImpl<$Res>
    implements _$ListTemplateCopyWith<$Res> {
  __$ListTemplateCopyWithImpl(
      _ListTemplate _value, $Res Function(_ListTemplate) _then)
      : super(_value, (v) => _then(v as _ListTemplate));

  @override
  _ListTemplate get _value => super._value as _ListTemplate;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? position = freezed,
    Object? type = freezed,
    Object? templatePositions = freezed,
  }) {
    return _then(_ListTemplate(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ListType,
      templatePositions: templatePositions == freezed
          ? _value.templatePositions
          : templatePositions // ignore: cast_nullable_to_non_nullable
              as List<ListTemplatePosition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListTemplate extends _ListTemplate {
  const _$_ListTemplate(
      {this.id = '0815',
      this.name = 'a template',
      this.position = 1,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          this.type = const ListType.todo(),
      this.templatePositions = const []})
      : super._();

  factory _$_ListTemplate.fromJson(Map<String, dynamic> json) =>
      _$_$_ListTemplateFromJson(json);

  @JsonKey(defaultValue: '0815')
  @override
  final String id;
  @JsonKey(defaultValue: 'a template')
  @override
  final String name;
  @JsonKey(defaultValue: 1)
  @override
  final int position;
  @override
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  final ListType type;
  @JsonKey(defaultValue: const [])
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

  @JsonKey(ignore: true)
  @override
  _$ListTemplateCopyWith<_ListTemplate> get copyWith =>
      __$ListTemplateCopyWithImpl<_ListTemplate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ListTemplateToJson(this);
  }
}

abstract class _ListTemplate extends ListTemplate {
  const factory _ListTemplate(
      {String id,
      String name,
      int position,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      List<ListTemplatePosition> templatePositions}) = _$_ListTemplate;
  const _ListTemplate._() : super._();

  factory _ListTemplate.fromJson(Map<String, dynamic> json) =
      _$_ListTemplate.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  ListType get type => throw _privateConstructorUsedError;
  @override
  List<ListTemplatePosition> get templatePositions =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListTemplateCopyWith<_ListTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

ListTemplatePosition _$ListTemplatePositionFromJson(Map<String, dynamic> json) {
  return _ListTemplatePosition.fromJson(json);
}

/// @nodoc
class _$ListTemplatePositionTearOff {
  const _$ListTemplatePositionTearOff();

  _ListTemplatePosition call(
      {String name = 'a Name', String id = '0815', int position = 1}) {
    return _ListTemplatePosition(
      name: name,
      id: id,
      position: position,
    );
  }

  ListTemplatePosition fromJson(Map<String, Object> json) {
    return ListTemplatePosition.fromJson(json);
  }
}

/// @nodoc
const $ListTemplatePosition = _$ListTemplatePositionTearOff();

/// @nodoc
mixin _$ListTemplatePosition {
  String get name => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListTemplatePositionCopyWith<ListTemplatePosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListTemplatePositionCopyWith<$Res> {
  factory $ListTemplatePositionCopyWith(ListTemplatePosition value,
          $Res Function(ListTemplatePosition) then) =
      _$ListTemplatePositionCopyWithImpl<$Res>;
  $Res call({String name, String id, int position});
}

/// @nodoc
class _$ListTemplatePositionCopyWithImpl<$Res>
    implements $ListTemplatePositionCopyWith<$Res> {
  _$ListTemplatePositionCopyWithImpl(this._value, this._then);

  final ListTemplatePosition _value;
  // ignore: unused_field
  final $Res Function(ListTemplatePosition) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? id = freezed,
    Object? position = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ListTemplatePositionCopyWith<$Res>
    implements $ListTemplatePositionCopyWith<$Res> {
  factory _$ListTemplatePositionCopyWith(_ListTemplatePosition value,
          $Res Function(_ListTemplatePosition) then) =
      __$ListTemplatePositionCopyWithImpl<$Res>;
  @override
  $Res call({String name, String id, int position});
}

/// @nodoc
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
    Object? name = freezed,
    Object? id = freezed,
    Object? position = freezed,
  }) {
    return _then(_ListTemplatePosition(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ListTemplatePosition extends _ListTemplatePosition {
  const _$_ListTemplatePosition(
      {this.name = 'a Name', this.id = '0815', this.position = 1})
      : super._();

  factory _$_ListTemplatePosition.fromJson(Map<String, dynamic> json) =>
      _$_$_ListTemplatePositionFromJson(json);

  @JsonKey(defaultValue: 'a Name')
  @override
  final String name;
  @JsonKey(defaultValue: '0815')
  @override
  final String id;
  @JsonKey(defaultValue: 1)
  @override
  final int position;

  @override
  String toString() {
    return 'ListTemplatePosition(name: $name, id: $id, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListTemplatePosition &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(position);

  @JsonKey(ignore: true)
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
  const factory _ListTemplatePosition({String name, String id, int position}) =
      _$_ListTemplatePosition;
  const _ListTemplatePosition._() : super._();

  factory _ListTemplatePosition.fromJson(Map<String, dynamic> json) =
      _$_ListTemplatePosition.fromJson;

  @override
  String get name => throw _privateConstructorUsedError;
  @override
  String get id => throw _privateConstructorUsedError;
  @override
  int get position => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ListTemplatePositionCopyWith<_ListTemplatePosition> get copyWith =>
      throw _privateConstructorUsedError;
}
