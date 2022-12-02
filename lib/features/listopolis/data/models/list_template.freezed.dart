// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_template.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListTemplate _$ListTemplateFromJson(Map<String, dynamic> json) {
  return _ListTemplate.fromJson(json);
}

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
      _$ListTemplateCopyWithImpl<$Res, ListTemplate>;
  @useResult
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
class _$ListTemplateCopyWithImpl<$Res, $Val extends ListTemplate>
    implements $ListTemplateCopyWith<$Res> {
  _$ListTemplateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? position = null,
    Object? type = null,
    Object? templatePositions = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ListType,
      templatePositions: null == templatePositions
          ? _value.templatePositions
          : templatePositions // ignore: cast_nullable_to_non_nullable
              as List<ListTemplatePosition>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListTypeCopyWith<$Res> get type {
    return $ListTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ListTemplateCopyWith<$Res>
    implements $ListTemplateCopyWith<$Res> {
  factory _$$_ListTemplateCopyWith(
          _$_ListTemplate value, $Res Function(_$_ListTemplate) then) =
      __$$_ListTemplateCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_ListTemplateCopyWithImpl<$Res>
    extends _$ListTemplateCopyWithImpl<$Res, _$_ListTemplate>
    implements _$$_ListTemplateCopyWith<$Res> {
  __$$_ListTemplateCopyWithImpl(
      _$_ListTemplate _value, $Res Function(_$_ListTemplate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? position = null,
    Object? type = null,
    Object? templatePositions = null,
  }) {
    return _then(_$_ListTemplate(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ListType,
      templatePositions: null == templatePositions
          ? _value._templatePositions
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
      final List<ListTemplatePosition> templatePositions = const []})
      : _templatePositions = templatePositions,
        super._();

  factory _$_ListTemplate.fromJson(Map<String, dynamic> json) =>
      _$$_ListTemplateFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int position;
  @override
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  final ListType type;
  final List<ListTemplatePosition> _templatePositions;
  @override
  @JsonKey()
  List<ListTemplatePosition> get templatePositions {
    if (_templatePositions is EqualUnmodifiableListView)
      return _templatePositions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_templatePositions);
  }

  @override
  String toString() {
    return 'ListTemplate(id: $id, name: $name, position: $position, type: $type, templatePositions: $templatePositions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListTemplate &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._templatePositions, _templatePositions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, position, type,
      const DeepCollectionEquality().hash(_templatePositions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListTemplateCopyWith<_$_ListTemplate> get copyWith =>
      __$$_ListTemplateCopyWithImpl<_$_ListTemplate>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListTemplateToJson(
      this,
    );
  }
}

abstract class _ListTemplate extends ListTemplate {
  const factory _ListTemplate(
      {final String id,
      final String name,
      final int position,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          final ListType type,
      final List<ListTemplatePosition> templatePositions}) = _$_ListTemplate;
  const _ListTemplate._() : super._();

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
  @JsonKey(ignore: true)
  _$$_ListTemplateCopyWith<_$_ListTemplate> get copyWith =>
      throw _privateConstructorUsedError;
}

ListTemplatePosition _$ListTemplatePositionFromJson(Map<String, dynamic> json) {
  return _ListTemplatePosition.fromJson(json);
}

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
      _$ListTemplatePositionCopyWithImpl<$Res, ListTemplatePosition>;
  @useResult
  $Res call({String name, String id, int position});
}

/// @nodoc
class _$ListTemplatePositionCopyWithImpl<$Res,
        $Val extends ListTemplatePosition>
    implements $ListTemplatePositionCopyWith<$Res> {
  _$ListTemplatePositionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? position = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ListTemplatePositionCopyWith<$Res>
    implements $ListTemplatePositionCopyWith<$Res> {
  factory _$$_ListTemplatePositionCopyWith(_$_ListTemplatePosition value,
          $Res Function(_$_ListTemplatePosition) then) =
      __$$_ListTemplatePositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String id, int position});
}

/// @nodoc
class __$$_ListTemplatePositionCopyWithImpl<$Res>
    extends _$ListTemplatePositionCopyWithImpl<$Res, _$_ListTemplatePosition>
    implements _$$_ListTemplatePositionCopyWith<$Res> {
  __$$_ListTemplatePositionCopyWithImpl(_$_ListTemplatePosition _value,
      $Res Function(_$_ListTemplatePosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? id = null,
    Object? position = null,
  }) {
    return _then(_$_ListTemplatePosition(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
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
      _$$_ListTemplatePositionFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final int position;

  @override
  String toString() {
    return 'ListTemplatePosition(name: $name, id: $id, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListTemplatePosition &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, position);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListTemplatePositionCopyWith<_$_ListTemplatePosition> get copyWith =>
      __$$_ListTemplatePositionCopyWithImpl<_$_ListTemplatePosition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ListTemplatePositionToJson(
      this,
    );
  }
}

abstract class _ListTemplatePosition extends ListTemplatePosition {
  const factory _ListTemplatePosition(
      {final String name,
      final String id,
      final int position}) = _$_ListTemplatePosition;
  const _ListTemplatePosition._() : super._();

  factory _ListTemplatePosition.fromJson(Map<String, dynamic> json) =
      _$_ListTemplatePosition.fromJson;

  @override
  String get name;
  @override
  String get id;
  @override
  int get position;
  @override
  @JsonKey(ignore: true)
  _$$_ListTemplatePositionCopyWith<_$_ListTemplatePosition> get copyWith =>
      throw _privateConstructorUsedError;
}
