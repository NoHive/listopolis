// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'createlist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$CreatelistEventTearOff {
  const _$CreatelistEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _StartListCreation startListCreation() {
    return const _StartListCreation();
  }

// ignore: unused_element
  _CreateList createNewList({@required CreateListParameter listInfo}) {
    return _CreateList(
      listInfo: listInfo,
    );
  }

// ignore: unused_element
  _CreateListItem createNewListPosition(
      {@required CreateListItemParameter listPos}) {
    return _CreateListItem(
      listPos: listPos,
    );
  }
}

// ignore: unused_element
const $CreatelistEvent = _$CreatelistEventTearOff();

mixin _$CreatelistEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result createNewList(CreateListParameter listInfo),
    @required Result createNewListPosition(CreateListItemParameter listPos),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result createNewList(CreateListParameter listInfo),
    Result createNewListPosition(CreateListItemParameter listPos),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result createNewList(_CreateList value),
    @required Result createNewListPosition(_CreateListItem value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result createNewList(_CreateList value),
    Result createNewListPosition(_CreateListItem value),
    @required Result orElse(),
  });
}

abstract class $CreatelistEventCopyWith<$Res> {
  factory $CreatelistEventCopyWith(
          CreatelistEvent value, $Res Function(CreatelistEvent) then) =
      _$CreatelistEventCopyWithImpl<$Res>;
}

class _$CreatelistEventCopyWithImpl<$Res>
    implements $CreatelistEventCopyWith<$Res> {
  _$CreatelistEventCopyWithImpl(this._value, this._then);

  final CreatelistEvent _value;
  // ignore: unused_field
  final $Res Function(CreatelistEvent) _then;
}

abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

class __$StartedCopyWithImpl<$Res> extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'CreatelistEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result createNewList(CreateListParameter listInfo),
    @required Result createNewListPosition(CreateListItemParameter listPos),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result createNewList(CreateListParameter listInfo),
    Result createNewListPosition(CreateListItemParameter listPos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result createNewList(_CreateList value),
    @required Result createNewListPosition(_CreateListItem value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result createNewList(_CreateList value),
    Result createNewListPosition(_CreateListItem value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements CreatelistEvent {
  const factory _Started() = _$_Started;
}

abstract class _$StartListCreationCopyWith<$Res> {
  factory _$StartListCreationCopyWith(
          _StartListCreation value, $Res Function(_StartListCreation) then) =
      __$StartListCreationCopyWithImpl<$Res>;
}

class __$StartListCreationCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$StartListCreationCopyWith<$Res> {
  __$StartListCreationCopyWithImpl(
      _StartListCreation _value, $Res Function(_StartListCreation) _then)
      : super(_value, (v) => _then(v as _StartListCreation));

  @override
  _StartListCreation get _value => super._value as _StartListCreation;
}

class _$_StartListCreation implements _StartListCreation {
  const _$_StartListCreation();

  @override
  String toString() {
    return 'CreatelistEvent.startListCreation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _StartListCreation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result createNewList(CreateListParameter listInfo),
    @required Result createNewListPosition(CreateListItemParameter listPos),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return startListCreation();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result createNewList(CreateListParameter listInfo),
    Result createNewListPosition(CreateListItemParameter listPos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startListCreation != null) {
      return startListCreation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result createNewList(_CreateList value),
    @required Result createNewListPosition(_CreateListItem value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return startListCreation(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result createNewList(_CreateList value),
    Result createNewListPosition(_CreateListItem value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startListCreation != null) {
      return startListCreation(this);
    }
    return orElse();
  }
}

abstract class _StartListCreation implements CreatelistEvent {
  const factory _StartListCreation() = _$_StartListCreation;
}

abstract class _$CreateListCopyWith<$Res> {
  factory _$CreateListCopyWith(
          _CreateList value, $Res Function(_CreateList) then) =
      __$CreateListCopyWithImpl<$Res>;
  $Res call({CreateListParameter listInfo});
}

class __$CreateListCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$CreateListCopyWith<$Res> {
  __$CreateListCopyWithImpl(
      _CreateList _value, $Res Function(_CreateList) _then)
      : super(_value, (v) => _then(v as _CreateList));

  @override
  _CreateList get _value => super._value as _CreateList;

  @override
  $Res call({
    Object listInfo = freezed,
  }) {
    return _then(_CreateList(
      listInfo: listInfo == freezed
          ? _value.listInfo
          : listInfo as CreateListParameter,
    ));
  }
}

class _$_CreateList implements _CreateList {
  const _$_CreateList({@required this.listInfo}) : assert(listInfo != null);

  @override
  final CreateListParameter listInfo;

  @override
  String toString() {
    return 'CreatelistEvent.createNewList(listInfo: $listInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateList &&
            (identical(other.listInfo, listInfo) ||
                const DeepCollectionEquality()
                    .equals(other.listInfo, listInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listInfo);

  @override
  _$CreateListCopyWith<_CreateList> get copyWith =>
      __$CreateListCopyWithImpl<_CreateList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result createNewList(CreateListParameter listInfo),
    @required Result createNewListPosition(CreateListItemParameter listPos),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return createNewList(listInfo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result createNewList(CreateListParameter listInfo),
    Result createNewListPosition(CreateListItemParameter listPos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createNewList != null) {
      return createNewList(listInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result createNewList(_CreateList value),
    @required Result createNewListPosition(_CreateListItem value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return createNewList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result createNewList(_CreateList value),
    Result createNewListPosition(_CreateListItem value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createNewList != null) {
      return createNewList(this);
    }
    return orElse();
  }
}

abstract class _CreateList implements CreatelistEvent {
  const factory _CreateList({@required CreateListParameter listInfo}) =
      _$_CreateList;

  CreateListParameter get listInfo;
  _$CreateListCopyWith<_CreateList> get copyWith;
}

abstract class _$CreateListItemCopyWith<$Res> {
  factory _$CreateListItemCopyWith(
          _CreateListItem value, $Res Function(_CreateListItem) then) =
      __$CreateListItemCopyWithImpl<$Res>;
  $Res call({CreateListItemParameter listPos});
}

class __$CreateListItemCopyWithImpl<$Res>
    extends _$CreatelistEventCopyWithImpl<$Res>
    implements _$CreateListItemCopyWith<$Res> {
  __$CreateListItemCopyWithImpl(
      _CreateListItem _value, $Res Function(_CreateListItem) _then)
      : super(_value, (v) => _then(v as _CreateListItem));

  @override
  _CreateListItem get _value => super._value as _CreateListItem;

  @override
  $Res call({
    Object listPos = freezed,
  }) {
    return _then(_CreateListItem(
      listPos: listPos == freezed
          ? _value.listPos
          : listPos as CreateListItemParameter,
    ));
  }
}

class _$_CreateListItem implements _CreateListItem {
  const _$_CreateListItem({@required this.listPos}) : assert(listPos != null);

  @override
  final CreateListItemParameter listPos;

  @override
  String toString() {
    return 'CreatelistEvent.createNewListPosition(listPos: $listPos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CreateListItem &&
            (identical(other.listPos, listPos) ||
                const DeepCollectionEquality().equals(other.listPos, listPos)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listPos);

  @override
  _$CreateListItemCopyWith<_CreateListItem> get copyWith =>
      __$CreateListItemCopyWithImpl<_CreateListItem>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result started(),
    @required Result startListCreation(),
    @required Result createNewList(CreateListParameter listInfo),
    @required Result createNewListPosition(CreateListItemParameter listPos),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return createNewListPosition(listPos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result startListCreation(),
    Result createNewList(CreateListParameter listInfo),
    Result createNewListPosition(CreateListItemParameter listPos),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createNewListPosition != null) {
      return createNewListPosition(listPos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result startListCreation(_StartListCreation value),
    @required Result createNewList(_CreateList value),
    @required Result createNewListPosition(_CreateListItem value),
  }) {
    assert(started != null);
    assert(startListCreation != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return createNewListPosition(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
    Result startListCreation(_StartListCreation value),
    Result createNewList(_CreateList value),
    Result createNewListPosition(_CreateListItem value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createNewListPosition != null) {
      return createNewListPosition(this);
    }
    return orElse();
  }
}

abstract class _CreateListItem implements CreatelistEvent {
  const factory _CreateListItem({@required CreateListItemParameter listPos}) =
      _$_CreateListItem;

  CreateListItemParameter get listPos;
  _$CreateListItemCopyWith<_CreateListItem> get copyWith;
}

class _$CreatelistStateTearOff {
  const _$CreatelistStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _ListCreationValueChanged listCreationValueChanged(
      {@required CreateListParameter creationParam}) {
    return _ListCreationValueChanged(
      creationParam: creationParam,
    );
  }

// ignore: unused_element
  _ListItemCreationValueChanged listItemCreationValueChanged(
      {@required CreateListItemParameter creationParam}) {
    return _ListItemCreationValueChanged(
      creationParam: creationParam,
    );
  }
}

// ignore: unused_element
const $CreatelistState = _$CreatelistStateTearOff();

mixin _$CreatelistState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result listCreationValueChanged(CreateListParameter creationParam),
    @required
        Result listItemCreationValueChanged(
            CreateListItemParameter creationParam),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listCreationValueChanged(CreateListParameter creationParam),
    Result listItemCreationValueChanged(CreateListItemParameter creationParam),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result listCreationValueChanged(_ListCreationValueChanged value),
    @required
        Result listItemCreationValueChanged(
            _ListItemCreationValueChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listCreationValueChanged(_ListCreationValueChanged value),
    Result listItemCreationValueChanged(_ListItemCreationValueChanged value),
    @required Result orElse(),
  });
}

abstract class $CreatelistStateCopyWith<$Res> {
  factory $CreatelistStateCopyWith(
          CreatelistState value, $Res Function(CreatelistState) then) =
      _$CreatelistStateCopyWithImpl<$Res>;
}

class _$CreatelistStateCopyWithImpl<$Res>
    implements $CreatelistStateCopyWith<$Res> {
  _$CreatelistStateCopyWithImpl(this._value, this._then);

  final CreatelistState _value;
  // ignore: unused_field
  final $Res Function(CreatelistState) _then;
}

abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

class __$InitialCopyWithImpl<$Res> extends _$CreatelistStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'CreatelistState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result listCreationValueChanged(CreateListParameter creationParam),
    @required
        Result listItemCreationValueChanged(
            CreateListItemParameter creationParam),
  }) {
    assert(initial != null);
    assert(listCreationValueChanged != null);
    assert(listItemCreationValueChanged != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listCreationValueChanged(CreateListParameter creationParam),
    Result listItemCreationValueChanged(CreateListItemParameter creationParam),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result listCreationValueChanged(_ListCreationValueChanged value),
    @required
        Result listItemCreationValueChanged(
            _ListItemCreationValueChanged value),
  }) {
    assert(initial != null);
    assert(listCreationValueChanged != null);
    assert(listItemCreationValueChanged != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listCreationValueChanged(_ListCreationValueChanged value),
    Result listItemCreationValueChanged(_ListItemCreationValueChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements CreatelistState {
  const factory _Initial() = _$_Initial;
}

abstract class _$ListCreationValueChangedCopyWith<$Res> {
  factory _$ListCreationValueChangedCopyWith(_ListCreationValueChanged value,
          $Res Function(_ListCreationValueChanged) then) =
      __$ListCreationValueChangedCopyWithImpl<$Res>;
  $Res call({CreateListParameter creationParam});
}

class __$ListCreationValueChangedCopyWithImpl<$Res>
    extends _$CreatelistStateCopyWithImpl<$Res>
    implements _$ListCreationValueChangedCopyWith<$Res> {
  __$ListCreationValueChangedCopyWithImpl(_ListCreationValueChanged _value,
      $Res Function(_ListCreationValueChanged) _then)
      : super(_value, (v) => _then(v as _ListCreationValueChanged));

  @override
  _ListCreationValueChanged get _value =>
      super._value as _ListCreationValueChanged;

  @override
  $Res call({
    Object creationParam = freezed,
  }) {
    return _then(_ListCreationValueChanged(
      creationParam: creationParam == freezed
          ? _value.creationParam
          : creationParam as CreateListParameter,
    ));
  }
}

class _$_ListCreationValueChanged implements _ListCreationValueChanged {
  const _$_ListCreationValueChanged({@required this.creationParam})
      : assert(creationParam != null);

  @override
  final CreateListParameter creationParam;

  @override
  String toString() {
    return 'CreatelistState.listCreationValueChanged(creationParam: $creationParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListCreationValueChanged &&
            (identical(other.creationParam, creationParam) ||
                const DeepCollectionEquality()
                    .equals(other.creationParam, creationParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(creationParam);

  @override
  _$ListCreationValueChangedCopyWith<_ListCreationValueChanged> get copyWith =>
      __$ListCreationValueChangedCopyWithImpl<_ListCreationValueChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result listCreationValueChanged(CreateListParameter creationParam),
    @required
        Result listItemCreationValueChanged(
            CreateListItemParameter creationParam),
  }) {
    assert(initial != null);
    assert(listCreationValueChanged != null);
    assert(listItemCreationValueChanged != null);
    return listCreationValueChanged(creationParam);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listCreationValueChanged(CreateListParameter creationParam),
    Result listItemCreationValueChanged(CreateListItemParameter creationParam),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listCreationValueChanged != null) {
      return listCreationValueChanged(creationParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result listCreationValueChanged(_ListCreationValueChanged value),
    @required
        Result listItemCreationValueChanged(
            _ListItemCreationValueChanged value),
  }) {
    assert(initial != null);
    assert(listCreationValueChanged != null);
    assert(listItemCreationValueChanged != null);
    return listCreationValueChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listCreationValueChanged(_ListCreationValueChanged value),
    Result listItemCreationValueChanged(_ListItemCreationValueChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listCreationValueChanged != null) {
      return listCreationValueChanged(this);
    }
    return orElse();
  }
}

abstract class _ListCreationValueChanged implements CreatelistState {
  const factory _ListCreationValueChanged(
          {@required CreateListParameter creationParam}) =
      _$_ListCreationValueChanged;

  CreateListParameter get creationParam;
  _$ListCreationValueChangedCopyWith<_ListCreationValueChanged> get copyWith;
}

abstract class _$ListItemCreationValueChangedCopyWith<$Res> {
  factory _$ListItemCreationValueChangedCopyWith(
          _ListItemCreationValueChanged value,
          $Res Function(_ListItemCreationValueChanged) then) =
      __$ListItemCreationValueChangedCopyWithImpl<$Res>;
  $Res call({CreateListItemParameter creationParam});
}

class __$ListItemCreationValueChangedCopyWithImpl<$Res>
    extends _$CreatelistStateCopyWithImpl<$Res>
    implements _$ListItemCreationValueChangedCopyWith<$Res> {
  __$ListItemCreationValueChangedCopyWithImpl(
      _ListItemCreationValueChanged _value,
      $Res Function(_ListItemCreationValueChanged) _then)
      : super(_value, (v) => _then(v as _ListItemCreationValueChanged));

  @override
  _ListItemCreationValueChanged get _value =>
      super._value as _ListItemCreationValueChanged;

  @override
  $Res call({
    Object creationParam = freezed,
  }) {
    return _then(_ListItemCreationValueChanged(
      creationParam: creationParam == freezed
          ? _value.creationParam
          : creationParam as CreateListItemParameter,
    ));
  }
}

class _$_ListItemCreationValueChanged implements _ListItemCreationValueChanged {
  const _$_ListItemCreationValueChanged({@required this.creationParam})
      : assert(creationParam != null);

  @override
  final CreateListItemParameter creationParam;

  @override
  String toString() {
    return 'CreatelistState.listItemCreationValueChanged(creationParam: $creationParam)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListItemCreationValueChanged &&
            (identical(other.creationParam, creationParam) ||
                const DeepCollectionEquality()
                    .equals(other.creationParam, creationParam)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(creationParam);

  @override
  _$ListItemCreationValueChangedCopyWith<_ListItemCreationValueChanged>
      get copyWith => __$ListItemCreationValueChangedCopyWithImpl<
          _ListItemCreationValueChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required
        Result listCreationValueChanged(CreateListParameter creationParam),
    @required
        Result listItemCreationValueChanged(
            CreateListItemParameter creationParam),
  }) {
    assert(initial != null);
    assert(listCreationValueChanged != null);
    assert(listItemCreationValueChanged != null);
    return listItemCreationValueChanged(creationParam);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listCreationValueChanged(CreateListParameter creationParam),
    Result listItemCreationValueChanged(CreateListItemParameter creationParam),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listItemCreationValueChanged != null) {
      return listItemCreationValueChanged(creationParam);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result listCreationValueChanged(_ListCreationValueChanged value),
    @required
        Result listItemCreationValueChanged(
            _ListItemCreationValueChanged value),
  }) {
    assert(initial != null);
    assert(listCreationValueChanged != null);
    assert(listItemCreationValueChanged != null);
    return listItemCreationValueChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listCreationValueChanged(_ListCreationValueChanged value),
    Result listItemCreationValueChanged(_ListItemCreationValueChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listItemCreationValueChanged != null) {
      return listItemCreationValueChanged(this);
    }
    return orElse();
  }
}

abstract class _ListItemCreationValueChanged implements CreatelistState {
  const factory _ListItemCreationValueChanged(
          {@required CreateListItemParameter creationParam}) =
      _$_ListItemCreationValueChanged;

  CreateListItemParameter get creationParam;
  _$ListItemCreationValueChangedCopyWith<_ListItemCreationValueChanged>
      get copyWith;
}
