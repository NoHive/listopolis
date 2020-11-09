// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
ActiveList _$ActiveListFromJson(Map<String, dynamic> json) {
  return _ActiveList.fromJson(json);
}

/// @nodoc
class _$ActiveListTearOff {
  const _$ActiveListTearOff();

// ignore: unused_element
  _ActiveList call(
      {@required
          String id,
      @required
          String name,
      @required
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      @required
          int position,
      @required
          bool done,
      @required
          bool opened,
      List<ActiveListPosition> listItems}) {
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

// ignore: unused_element
  ActiveList fromJson(Map<String, Object> json) {
    return ActiveList.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ActiveList = _$ActiveListTearOff();

/// @nodoc
mixin _$ActiveList {
  String get id;
  String get name;
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  ListType get type;
  int get position;
  bool get done;
  bool get opened;
  List<ActiveListPosition> get listItems;

  Map<String, dynamic> toJson();
  $ActiveListCopyWith<ActiveList> get copyWith;
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
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object position = freezed,
    Object done = freezed,
    Object opened = freezed,
    Object listItems = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as ListType,
      position: position == freezed ? _value.position : position as int,
      done: done == freezed ? _value.done : done as bool,
      opened: opened == freezed ? _value.opened : opened as bool,
      listItems: listItems == freezed
          ? _value.listItems
          : listItems as List<ActiveListPosition>,
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
    Object id = freezed,
    Object name = freezed,
    Object type = freezed,
    Object position = freezed,
    Object done = freezed,
    Object opened = freezed,
    Object listItems = freezed,
  }) {
    return _then(_ActiveList(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as ListType,
      position: position == freezed ? _value.position : position as int,
      done: done == freezed ? _value.done : done as bool,
      opened: opened == freezed ? _value.opened : opened as bool,
      listItems: listItems == freezed
          ? _value.listItems
          : listItems as List<ActiveListPosition>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ActiveList extends _ActiveList {
  const _$_ActiveList(
      {@required
          this.id,
      @required
          this.name,
      @required
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          this.type,
      @required
          this.position,
      @required
          this.done,
      @required
          this.opened,
      this.listItems})
      : assert(id != null),
        assert(name != null),
        assert(type != null),
        assert(position != null),
        assert(done != null),
        assert(opened != null),
        super._();

  factory _$_ActiveList.fromJson(Map<String, dynamic> json) =>
      _$_$_ActiveListFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  final ListType type;
  @override
  final int position;
  @override
  final bool done;
  @override
  final bool opened;
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

  @override
  _$ActiveListCopyWith<_ActiveList> get copyWith =>
      __$ActiveListCopyWithImpl<_ActiveList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActiveListToJson(this);
  }
}

abstract class _ActiveList extends ActiveList {
  const _ActiveList._() : super._();
  const factory _ActiveList(
      {@required
          String id,
      @required
          String name,
      @required
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      @required
          int position,
      @required
          bool done,
      @required
          bool opened,
      List<ActiveListPosition> listItems}) = _$_ActiveList;

  factory _ActiveList.fromJson(Map<String, dynamic> json) =
      _$_ActiveList.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  ListType get type;
  @override
  int get position;
  @override
  bool get done;
  @override
  bool get opened;
  @override
  List<ActiveListPosition> get listItems;
  @override
  _$ActiveListCopyWith<_ActiveList> get copyWith;
}

ActiveListPosition _$ActiveListPositionFromJson(Map<String, dynamic> json) {
  return _ActiveListPosition.fromJson(json);
}

/// @nodoc
class _$ActiveListPositionTearOff {
  const _$ActiveListPositionTearOff();

// ignore: unused_element
  _ActiveListPosition call(
      {@required String id,
      @required String name,
      @required int position,
      @required bool done}) {
    return _ActiveListPosition(
      id: id,
      name: name,
      position: position,
      done: done,
    );
  }

// ignore: unused_element
  ActiveListPosition fromJson(Map<String, Object> json) {
    return ActiveListPosition.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ActiveListPosition = _$ActiveListPositionTearOff();

/// @nodoc
mixin _$ActiveListPosition {
  String get id;
  String get name;
  int get position;
  bool get done;

  Map<String, dynamic> toJson();
  $ActiveListPositionCopyWith<ActiveListPosition> get copyWith;
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
    Object id = freezed,
    Object name = freezed,
    Object position = freezed,
    Object done = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      position: position == freezed ? _value.position : position as int,
      done: done == freezed ? _value.done : done as bool,
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
    Object id = freezed,
    Object name = freezed,
    Object position = freezed,
    Object done = freezed,
  }) {
    return _then(_ActiveListPosition(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      position: position == freezed ? _value.position : position as int,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ActiveListPosition extends _ActiveListPosition {
  const _$_ActiveListPosition(
      {@required this.id,
      @required this.name,
      @required this.position,
      @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(position != null),
        assert(done != null),
        super._();

  factory _$_ActiveListPosition.fromJson(Map<String, dynamic> json) =>
      _$_$_ActiveListPositionFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final int position;
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

  @override
  _$ActiveListPositionCopyWith<_ActiveListPosition> get copyWith =>
      __$ActiveListPositionCopyWithImpl<_ActiveListPosition>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ActiveListPositionToJson(this);
  }
}

abstract class _ActiveListPosition extends ActiveListPosition {
  const _ActiveListPosition._() : super._();
  const factory _ActiveListPosition(
      {@required String id,
      @required String name,
      @required int position,
      @required bool done}) = _$_ActiveListPosition;

  factory _ActiveListPosition.fromJson(Map<String, dynamic> json) =
      _$_ActiveListPosition.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  int get position;
  @override
  bool get done;
  @override
  _$ActiveListPositionCopyWith<_ActiveListPosition> get copyWith;
}
