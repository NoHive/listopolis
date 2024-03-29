// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ActiveList _$ActiveListFromJson(Map<String, dynamic> json) {
  return _ActiveList.fromJson(json);
}

/// @nodoc
mixin _$ActiveList {
  String get id => throw _privateConstructorUsedError;
  String get name =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  ListType get type => throw _privateConstructorUsedError;
  int get position => throw _privateConstructorUsedError;
  bool get done => throw _privateConstructorUsedError;
  bool get opened => throw _privateConstructorUsedError;
  bool get repeat => throw _privateConstructorUsedError;
  bool get needReminders => throw _privateConstructorUsedError;
  RepetitionConfig? get repetitionConfig => throw _privateConstructorUsedError;
  List<ActiveListPosition> get listItems => throw _privateConstructorUsedError;
  List<ActiveListPosition> get repetitionItems =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActiveListCopyWith<ActiveList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveListCopyWith<$Res> {
  factory $ActiveListCopyWith(
          ActiveList value, $Res Function(ActiveList) then) =
      _$ActiveListCopyWithImpl<$Res, ActiveList>;
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      int position,
      bool done,
      bool opened,
      bool repeat,
      bool needReminders,
      RepetitionConfig? repetitionConfig,
      List<ActiveListPosition> listItems,
      List<ActiveListPosition> repetitionItems});

  $ListTypeCopyWith<$Res> get type;
  $RepetitionConfigCopyWith<$Res>? get repetitionConfig;
}

/// @nodoc
class _$ActiveListCopyWithImpl<$Res, $Val extends ActiveList>
    implements $ActiveListCopyWith<$Res> {
  _$ActiveListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? position = null,
    Object? done = null,
    Object? opened = null,
    Object? repeat = null,
    Object? needReminders = null,
    Object? repetitionConfig = freezed,
    Object? listItems = null,
    Object? repetitionItems = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ListType,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      opened: null == opened
          ? _value.opened
          : opened // ignore: cast_nullable_to_non_nullable
              as bool,
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as bool,
      needReminders: null == needReminders
          ? _value.needReminders
          : needReminders // ignore: cast_nullable_to_non_nullable
              as bool,
      repetitionConfig: freezed == repetitionConfig
          ? _value.repetitionConfig
          : repetitionConfig // ignore: cast_nullable_to_non_nullable
              as RepetitionConfig?,
      listItems: null == listItems
          ? _value.listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<ActiveListPosition>,
      repetitionItems: null == repetitionItems
          ? _value.repetitionItems
          : repetitionItems // ignore: cast_nullable_to_non_nullable
              as List<ActiveListPosition>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ListTypeCopyWith<$Res> get type {
    return $ListTypeCopyWith<$Res>(_value.type, (value) {
      return _then(_value.copyWith(type: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RepetitionConfigCopyWith<$Res>? get repetitionConfig {
    if (_value.repetitionConfig == null) {
      return null;
    }

    return $RepetitionConfigCopyWith<$Res>(_value.repetitionConfig!, (value) {
      return _then(_value.copyWith(repetitionConfig: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ActiveListCopyWith<$Res>
    implements $ActiveListCopyWith<$Res> {
  factory _$$_ActiveListCopyWith(
          _$_ActiveList value, $Res Function(_$_ActiveList) then) =
      __$$_ActiveListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          ListType type,
      int position,
      bool done,
      bool opened,
      bool repeat,
      bool needReminders,
      RepetitionConfig? repetitionConfig,
      List<ActiveListPosition> listItems,
      List<ActiveListPosition> repetitionItems});

  @override
  $ListTypeCopyWith<$Res> get type;
  @override
  $RepetitionConfigCopyWith<$Res>? get repetitionConfig;
}

/// @nodoc
class __$$_ActiveListCopyWithImpl<$Res>
    extends _$ActiveListCopyWithImpl<$Res, _$_ActiveList>
    implements _$$_ActiveListCopyWith<$Res> {
  __$$_ActiveListCopyWithImpl(
      _$_ActiveList _value, $Res Function(_$_ActiveList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? position = null,
    Object? done = null,
    Object? opened = null,
    Object? repeat = null,
    Object? needReminders = null,
    Object? repetitionConfig = freezed,
    Object? listItems = null,
    Object? repetitionItems = null,
  }) {
    return _then(_$_ActiveList(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ListType,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as int,
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
      opened: null == opened
          ? _value.opened
          : opened // ignore: cast_nullable_to_non_nullable
              as bool,
      repeat: null == repeat
          ? _value.repeat
          : repeat // ignore: cast_nullable_to_non_nullable
              as bool,
      needReminders: null == needReminders
          ? _value.needReminders
          : needReminders // ignore: cast_nullable_to_non_nullable
              as bool,
      repetitionConfig: freezed == repetitionConfig
          ? _value.repetitionConfig
          : repetitionConfig // ignore: cast_nullable_to_non_nullable
              as RepetitionConfig?,
      listItems: null == listItems
          ? _value._listItems
          : listItems // ignore: cast_nullable_to_non_nullable
              as List<ActiveListPosition>,
      repetitionItems: null == repetitionItems
          ? _value._repetitionItems
          : repetitionItems // ignore: cast_nullable_to_non_nullable
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
      this.repeat = false,
      this.needReminders = false,
      this.repetitionConfig,
      final List<ActiveListPosition> listItems = const [],
      final List<ActiveListPosition> repetitionItems = const []})
      : _listItems = listItems,
        _repetitionItems = repetitionItems,
        super._();

  factory _$_ActiveList.fromJson(Map<String, dynamic> json) =>
      _$$_ActiveListFromJson(json);

  @override
  @JsonKey()
  final String id;
  @override
  @JsonKey()
  final String name;
// ignore: invalid_annotation_target
  @override
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  final ListType type;
  @override
  @JsonKey()
  final int position;
  @override
  @JsonKey()
  final bool done;
  @override
  @JsonKey()
  final bool opened;
  @override
  @JsonKey()
  final bool repeat;
  @override
  @JsonKey()
  final bool needReminders;
  @override
  final RepetitionConfig? repetitionConfig;
  final List<ActiveListPosition> _listItems;
  @override
  @JsonKey()
  List<ActiveListPosition> get listItems {
    if (_listItems is EqualUnmodifiableListView) return _listItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listItems);
  }

  final List<ActiveListPosition> _repetitionItems;
  @override
  @JsonKey()
  List<ActiveListPosition> get repetitionItems {
    if (_repetitionItems is EqualUnmodifiableListView) return _repetitionItems;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repetitionItems);
  }

  @override
  String toString() {
    return 'ActiveList(id: $id, name: $name, type: $type, position: $position, done: $done, opened: $opened, repeat: $repeat, needReminders: $needReminders, repetitionConfig: $repetitionConfig, listItems: $listItems, repetitionItems: $repetitionItems)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveList &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.done, done) || other.done == done) &&
            (identical(other.opened, opened) || other.opened == opened) &&
            (identical(other.repeat, repeat) || other.repeat == repeat) &&
            (identical(other.needReminders, needReminders) ||
                other.needReminders == needReminders) &&
            (identical(other.repetitionConfig, repetitionConfig) ||
                other.repetitionConfig == repetitionConfig) &&
            const DeepCollectionEquality()
                .equals(other._listItems, _listItems) &&
            const DeepCollectionEquality()
                .equals(other._repetitionItems, _repetitionItems));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      type,
      position,
      done,
      opened,
      repeat,
      needReminders,
      repetitionConfig,
      const DeepCollectionEquality().hash(_listItems),
      const DeepCollectionEquality().hash(_repetitionItems));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveListCopyWith<_$_ActiveList> get copyWith =>
      __$$_ActiveListCopyWithImpl<_$_ActiveList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiveListToJson(
      this,
    );
  }
}

abstract class _ActiveList extends ActiveList {
  const factory _ActiveList(
      {final String id,
      final String name,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
          final ListType type,
      final int position,
      final bool done,
      final bool opened,
      final bool repeat,
      final bool needReminders,
      final RepetitionConfig? repetitionConfig,
      final List<ActiveListPosition> listItems,
      final List<ActiveListPosition> repetitionItems}) = _$_ActiveList;
  const _ActiveList._() : super._();

  factory _ActiveList.fromJson(Map<String, dynamic> json) =
      _$_ActiveList.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override // ignore: invalid_annotation_target
  @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
  ListType get type;
  @override
  int get position;
  @override
  bool get done;
  @override
  bool get opened;
  @override
  bool get repeat;
  @override
  bool get needReminders;
  @override
  RepetitionConfig? get repetitionConfig;
  @override
  List<ActiveListPosition> get listItems;
  @override
  List<ActiveListPosition> get repetitionItems;
  @override
  @JsonKey(ignore: true)
  _$$_ActiveListCopyWith<_$_ActiveList> get copyWith =>
      throw _privateConstructorUsedError;
}

ActiveListPosition _$ActiveListPositionFromJson(Map<String, dynamic> json) {
  return _ActiveListPosition.fromJson(json);
}

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
      _$ActiveListPositionCopyWithImpl<$Res, ActiveListPosition>;
  @useResult
  $Res call({String id, String name, int position, bool done});
}

/// @nodoc
class _$ActiveListPositionCopyWithImpl<$Res, $Val extends ActiveListPosition>
    implements $ActiveListPositionCopyWith<$Res> {
  _$ActiveListPositionCopyWithImpl(this._value, this._then);

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
    Object? done = null,
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
      done: null == done
          ? _value.done
          : done // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ActiveListPositionCopyWith<$Res>
    implements $ActiveListPositionCopyWith<$Res> {
  factory _$$_ActiveListPositionCopyWith(_$_ActiveListPosition value,
          $Res Function(_$_ActiveListPosition) then) =
      __$$_ActiveListPositionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String name, int position, bool done});
}

/// @nodoc
class __$$_ActiveListPositionCopyWithImpl<$Res>
    extends _$ActiveListPositionCopyWithImpl<$Res, _$_ActiveListPosition>
    implements _$$_ActiveListPositionCopyWith<$Res> {
  __$$_ActiveListPositionCopyWithImpl(
      _$_ActiveListPosition _value, $Res Function(_$_ActiveListPosition) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? position = null,
    Object? done = null,
  }) {
    return _then(_$_ActiveListPosition(
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
      done: null == done
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
      _$$_ActiveListPositionFromJson(json);

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
  @JsonKey()
  final bool done;

  @override
  String toString() {
    return 'ActiveListPosition(id: $id, name: $name, position: $position, done: $done)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActiveListPosition &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.done, done) || other.done == done));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, position, done);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ActiveListPositionCopyWith<_$_ActiveListPosition> get copyWith =>
      __$$_ActiveListPositionCopyWithImpl<_$_ActiveListPosition>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ActiveListPositionToJson(
      this,
    );
  }
}

abstract class _ActiveListPosition extends ActiveListPosition {
  const factory _ActiveListPosition(
      {final String id,
      final String name,
      final int position,
      final bool done}) = _$_ActiveListPosition;
  const _ActiveListPosition._() : super._();

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
  @JsonKey(ignore: true)
  _$$_ActiveListPositionCopyWith<_$_ActiveListPosition> get copyWith =>
      throw _privateConstructorUsedError;
}
