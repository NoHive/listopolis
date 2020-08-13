// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$ActiveListTearOff {
  const _$ActiveListTearOff();

// ignore: unused_element
  _ActiveList call(
      {@required String id,
      @required String name,
      @required ListType type,
      @required int position,
      @required bool done}) {
    return _ActiveList(
      id: id,
      name: name,
      type: type,
      position: position,
      done: done,
    );
  }
}

// ignore: unused_element
const $ActiveList = _$ActiveListTearOff();

mixin _$ActiveList {
  String get id;
  String get name;
  ListType get type;
  int get position;
  bool get done;

  $ActiveListCopyWith<ActiveList> get copyWith;
}

abstract class $ActiveListCopyWith<$Res> {
  factory $ActiveListCopyWith(
          ActiveList value, $Res Function(ActiveList) then) =
      _$ActiveListCopyWithImpl<$Res>;
  $Res call({String id, String name, ListType type, int position, bool done});

  $ListTypeCopyWith<$Res> get type;
}

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
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as ListType,
      position: position == freezed ? _value.position : position as int,
      done: done == freezed ? _value.done : done as bool,
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

abstract class _$ActiveListCopyWith<$Res> implements $ActiveListCopyWith<$Res> {
  factory _$ActiveListCopyWith(
          _ActiveList value, $Res Function(_ActiveList) then) =
      __$ActiveListCopyWithImpl<$Res>;
  @override
  $Res call({String id, String name, ListType type, int position, bool done});

  @override
  $ListTypeCopyWith<$Res> get type;
}

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
  }) {
    return _then(_ActiveList(
      id: id == freezed ? _value.id : id as String,
      name: name == freezed ? _value.name : name as String,
      type: type == freezed ? _value.type : type as ListType,
      position: position == freezed ? _value.position : position as int,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

class _$_ActiveList implements _ActiveList {
  const _$_ActiveList(
      {@required this.id,
      @required this.name,
      @required this.type,
      @required this.position,
      @required this.done})
      : assert(id != null),
        assert(name != null),
        assert(type != null),
        assert(position != null),
        assert(done != null);

  @override
  final String id;
  @override
  final String name;
  @override
  final ListType type;
  @override
  final int position;
  @override
  final bool done;

  @override
  String toString() {
    return 'ActiveList(id: $id, name: $name, type: $type, position: $position, done: $done)';
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
                const DeepCollectionEquality().equals(other.done, done)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$ActiveListCopyWith<_ActiveList> get copyWith =>
      __$ActiveListCopyWithImpl<_ActiveList>(this, _$identity);
}

abstract class _ActiveList implements ActiveList {
  const factory _ActiveList(
      {@required String id,
      @required String name,
      @required ListType type,
      @required int position,
      @required bool done}) = _$_ActiveList;

  @override
  String get id;
  @override
  String get name;
  @override
  ListType get type;
  @override
  int get position;
  @override
  bool get done;
  @override
  _$ActiveListCopyWith<_ActiveList> get copyWith;
}

class _$ActiveListPositionTearOff {
  const _$ActiveListPositionTearOff();

// ignore: unused_element
  _ActiveListPosition call(
      {@required String name, @required int position, @required bool done}) {
    return _ActiveListPosition(
      name: name,
      position: position,
      done: done,
    );
  }
}

// ignore: unused_element
const $ActiveListPosition = _$ActiveListPositionTearOff();

mixin _$ActiveListPosition {
  String get name;
  int get position;
  bool get done;

  $ActiveListPositionCopyWith<ActiveListPosition> get copyWith;
}

abstract class $ActiveListPositionCopyWith<$Res> {
  factory $ActiveListPositionCopyWith(
          ActiveListPosition value, $Res Function(ActiveListPosition) then) =
      _$ActiveListPositionCopyWithImpl<$Res>;
  $Res call({String name, int position, bool done});
}

class _$ActiveListPositionCopyWithImpl<$Res>
    implements $ActiveListPositionCopyWith<$Res> {
  _$ActiveListPositionCopyWithImpl(this._value, this._then);

  final ActiveListPosition _value;
  // ignore: unused_field
  final $Res Function(ActiveListPosition) _then;

  @override
  $Res call({
    Object name = freezed,
    Object position = freezed,
    Object done = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed ? _value.name : name as String,
      position: position == freezed ? _value.position : position as int,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

abstract class _$ActiveListPositionCopyWith<$Res>
    implements $ActiveListPositionCopyWith<$Res> {
  factory _$ActiveListPositionCopyWith(
          _ActiveListPosition value, $Res Function(_ActiveListPosition) then) =
      __$ActiveListPositionCopyWithImpl<$Res>;
  @override
  $Res call({String name, int position, bool done});
}

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
    Object name = freezed,
    Object position = freezed,
    Object done = freezed,
  }) {
    return _then(_ActiveListPosition(
      name: name == freezed ? _value.name : name as String,
      position: position == freezed ? _value.position : position as int,
      done: done == freezed ? _value.done : done as bool,
    ));
  }
}

class _$_ActiveListPosition implements _ActiveListPosition {
  const _$_ActiveListPosition(
      {@required this.name, @required this.position, @required this.done})
      : assert(name != null),
        assert(position != null),
        assert(done != null);

  @override
  final String name;
  @override
  final int position;
  @override
  final bool done;

  @override
  String toString() {
    return 'ActiveListPosition(name: $name, position: $position, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ActiveListPosition &&
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
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(position) ^
      const DeepCollectionEquality().hash(done);

  @override
  _$ActiveListPositionCopyWith<_ActiveListPosition> get copyWith =>
      __$ActiveListPositionCopyWithImpl<_ActiveListPosition>(this, _$identity);
}

abstract class _ActiveListPosition implements ActiveListPosition {
  const factory _ActiveListPosition(
      {@required String name,
      @required int position,
      @required bool done}) = _$_ActiveListPosition;

  @override
  String get name;
  @override
  int get position;
  @override
  bool get done;
  @override
  _$ActiveListPositionCopyWith<_ActiveListPosition> get copyWith;
}
