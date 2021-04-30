// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActiveList _$ActiveListFromJson(Map<String, dynamic> json) {
  return _ActiveList.fromJson(json);
}

/// @nodoc
class _$ActiveListTearOff {
  const _$ActiveListTearOff();

  _ActiveList call(
      {String id = '0815',
      String name = 'list name',
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type = const ListType.todo(),
      int position = 1,
      bool done = false,
      bool opened = false,
      List<ActiveListPosition> listItems = const []}) {
    return _ActiveList(
      id: id,
      name: name,
      type: type,
      position: position,
      done: done,
      opened: opened,
      listItems: listItems,
    );
  }

  ActiveList fromJson(Map<String, Object> json) {
    return ActiveList.fromJson(json);
  }
}

/// @nodoc
const $ActiveList = _$ActiveListTearOff();

/// @nodoc
mixin _$ActiveList {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  ListType get type => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  bool get opened => throw _privateConstructorUsedError;
  List<ActiveListPosition> get listItems => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveListCopyWith<ActiveList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveListCopyWith<$Res> {
  factory $ActiveListCopyWith(
          ActiveList value, $Res Function(ActiveList) then) =
      _$ActiveListCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      int position,
      bool done,
      bool opened,
      List<ActiveListPosition> listItems});

  $ListTypeCopyWith<$Res> get type;
}

/// @nodoc
class _$ActiveListCopyWithImpl<$Res> implements $ActiveListCopyWith<$Res> {
  _$ActiveListCopyWithImpl(this._value, this._then);

  final ActiveList _value;
  // ignore: unused_field
  final $Res Function(ActiveList) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? position = freezed,
    Object? done = freezed,
    Object? opened = freezed,
    Object? listItems = freezed,
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
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ListType,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      opened: opened == freezed
          ? _value.opened
          : opened // ignore: cast_nullable_to_non_nullable
              as bool,
      listItems: listItems == freezed
          ? _value.listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<ActiveListPosition>,
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
abstract class _$ActiveListCopyWith<$Res> implements $ActiveListCopyWith<$Res> {
  factory _$ActiveListCopyWith(
          _ActiveList value, $Res Function(_ActiveList) then) =
      __$ActiveListCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      int position,
      bool done,
      bool opened,
      List<ActiveListPosition> listItems});

  @override
  $ListTypeCopyWith<$Res> get type;
}

/// @nodoc
class __$ActiveListCopyWithImpl<$Res> extends _$ActiveListCopyWithImpl<$Res>
    implements _$ActiveListCopyWith<$Res> {
  __$ActiveListCopyWithImpl(
      _ActiveList _value, $Res Function(_ActiveList) _then)
      : super(_value, (v) => _then(v as _ActiveList));

  @override
  _ActiveList get _value => super._value as _ActiveList;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? type = freezed,
    Object? position = freezed,
    Object? done = freezed,
    Object? opened = freezed,
    Object? listItems = freezed,
  }) {
    return _then(_ActiveList(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ListType,
      position: position == freezed
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      opened: opened == freezed
          ? _value.opened
          : opened // ignore: cast_nullable_to_non_nullable
              as bool,
      listItems: listItems == freezed
          ? _value.listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<ActiveListPosition>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActiveList extends _ActiveList {
  const _$_ActiveList(
      {this.id = '0815',
      this.name = 'list name',
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          this.type = const ListType.todo(),
      this.position = 1,
      this.done = false,
      this.opened = false,
      this.listItems = const []})
      : super._();

  factory _$_ActiveList.fromJson(Map<String, dynamic> json) =>
      _$_$_ActiveListFromJson(json);

  @JsonKey(defaultValue: '0815')
  @override
  final String id;
  @JsonKey(defaultValue: 'list name')
  @override
  final String name;
  @override
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  final ListType type;
  @JsonKey(defaultValue: 1)
  @override
  final int position;
  @JsonKey(defaultValue: false)
  @override
  final bool done;
  @JsonKey(defaultValue: false)
  @override
  final bool opened;
  @JsonKey(defaultValue: const [])
  @override
  final List<ActiveListPosition> listItems;

  @override
  String toString() {
    return 'ActiveList(id: $id, name: $name, type: $type, position: $position, done: $done, opened: $opened, listItems: $listItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveList &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)) &&
            (identical(other.opened, opened) ||
                const DeepCollectionEquality().equals(other.opened, opened)) &&
            (identical(other.listItems, listItems) ||
                const DeepCollectionEquality()
                    .equals(other.listItems, listItems)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(opened) ^
      const DeepCollectionEquality().hash(listItems);

  @JsonKey(ignore: true)
  @override
  _$ActiveListCopyWith<_ActiveList> get copyWith =>
      __$ActiveListCopyWithImpl<_ActiveList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActiveListToJson(this);
  }
}

abstract class _ActiveList extends ActiveList {
  const factory _ActiveList(
      {String id,
      String name,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      int position,
      bool done,
      bool opened,
      List<ActiveListPosition> listItems}) = _$_ActiveList;
  const _ActiveList._() : super._();

  factory _ActiveList.fromJson(Map<String, dynamic> json) =
      _$_ActiveList.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  ListType get type => throw _privateConstructorUsedError;
  @override
  int get position => throw _privateConstructorUsedError;
  @override
  bool get done => throw _privateConstructorUsedError;
  @override
  bool get opened => throw _privateConstructorUsedError;
  @override
  List<ActiveListPosition> get listItems => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActiveListCopyWith<_ActiveList> get copyWith =>
      throw _privateConstructorUsedError;
}

ActiveListPosition _$ActiveListPositionFromJson(Map<String, dynamic> json) {
  return _ActiveListPosition.fromJson(json);
}

/// @nodoc
class _$ActiveListPositionTearOff {
  const _$ActiveListPositionTearOff();

  _ActiveListPosition call(
      {String id = '0815',
      String name = 'new Position',
      int position = 1,
      bool done = false}) {
    return _ActiveListPosition(
      id: id,
      name: name,
      position: position,
      done: done,
    );
  }

  ActiveListPosition fromJson(Map<String, Object> json) {
    return ActiveListPosition.fromJson(json);
  }
}

/// @nodoc
const $ActiveListPosition = _$ActiveListPositionTearOff();

/// @nodoc
mixin _$ActiveListPosition {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveListPositionCopyWith<ActiveListPosition> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveListPositionCopyWith<$Res> {
  factory $ActiveListPositionCopyWith(
          ActiveListPosition value, $Res Function(ActiveListPosition) then) =
      _$ActiveListPositionCopyWithImpl<$Res>;
  $Res call({String id, String name, int position, bool done});
}

/// @nodoc
class _$ActiveListPositionCopyWithImpl<$Res>
    implements $ActiveListPositionCopyWith<$Res> {
  _$ActiveListPositionCopyWithImpl(this._value, this._then);

  final ActiveListPosition _value;
  // ignore: unused_field
  final $Res Function(ActiveListPosition) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? position = freezed,
    Object? done = freezed,
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
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$ActiveListPositionCopyWith<$Res>
    implements $ActiveListPositionCopyWith<$Res> {
  factory _$ActiveListPositionCopyWith(
          _ActiveListPosition value, $Res Function(_ActiveListPosition) then) =
      __$ActiveListPositionCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, int position, bool done});
}

/// @nodoc
class __$ActiveListPositionCopyWithImpl<$Res>
    extends _$ActiveListPositionCopyWithImpl<$Res>
    implements _$ActiveListPositionCopyWith<$Res> {
  __$ActiveListPositionCopyWithImpl(
      _ActiveListPosition _value, $Res Function(_ActiveListPosition) _then)
      : super(_value, (v) => _then(v as _ActiveListPosition));

  @override
  _ActiveListPosition get _value => super._value as _ActiveListPosition;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? position = freezed,
    Object? done = freezed,
  }) {
    return _then(_ActiveListPosition(
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
      done: done == freezed
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ActiveListPosition extends _ActiveListPosition {
  const _$_ActiveListPosition(
      {this.id = '0815',
      this.name = 'new Position',
      this.position = 1,
      this.done = false})
      : super._();

  factory _$_ActiveListPosition.fromJson(Map<String, dynamic> json) =>
      _$_$_ActiveListPositionFromJson(json);

  @JsonKey(defaultValue: '0815')
  @override
  final String id;
  @JsonKey(defaultValue: 'new Position')
  @override
  final String name;
  @JsonKey(defaultValue: 1)
  @override
  final int position;
  @JsonKey(defaultValue: false)
  @override
  final bool done;

  @override
  String toString() {
    return 'ActiveListPosition(id: $id, name: $name, position: $position, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveListPosition &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(done);

  @JsonKey(ignore: true)
  @override
  _$ActiveListPositionCopyWith<_ActiveListPosition> get copyWith =>
      __$ActiveListPositionCopyWithImpl<_ActiveListPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActiveListPositionToJson(this);
  }
}

abstract class _ActiveListPosition extends ActiveListPosition {
  const factory _ActiveListPosition(
      {String id,
      String name,
      int position,
      bool done}) = _$_ActiveListPosition;
  const _ActiveListPosition._() : super._();

  factory _ActiveListPosition.fromJson(Map<String, dynamic> json) =
      _$_ActiveListPosition.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get name => throw _privateConstructorUsedError;
  @override
  int get position => throw _privateConstructorUsedError;
  @override
  bool get done => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ActiveListPositionCopyWith<_ActiveListPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
