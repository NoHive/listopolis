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
    @required Result createNewList(CreateListParameter listInfo),
    @required Result createNewListPosition(CreateListItemParameter listPos),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
    Result createNewList(CreateListParameter listInfo),
    Result createNewListPosition(CreateListItemParameter listPos),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result started(_Started value),
    @required Result createNewList(_CreateList value),
    @required Result createNewListPosition(_CreateListItem value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
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
    @required Result createNewList(CreateListParameter listInfo),
    @required Result createNewListPosition(CreateListItemParameter listPos),
  }) {
    assert(started != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return started();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
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
    @required Result createNewList(_CreateList value),
    @required Result createNewListPosition(_CreateListItem value),
  }) {
    assert(started != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
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
    @required Result createNewList(CreateListParameter listInfo),
    @required Result createNewListPosition(CreateListItemParameter listPos),
  }) {
    assert(started != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return createNewList(listInfo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
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
    @required Result createNewList(_CreateList value),
    @required Result createNewListPosition(_CreateListItem value),
  }) {
    assert(started != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return createNewList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
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
    @required Result createNewList(CreateListParameter listInfo),
    @required Result createNewListPosition(CreateListItemParameter listPos),
  }) {
    assert(started != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return createNewListPosition(listPos);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result started(),
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
    @required Result createNewList(_CreateList value),
    @required Result createNewListPosition(_CreateListItem value),
  }) {
    assert(started != null);
    assert(createNewList != null);
    assert(createNewListPosition != null);
    return createNewListPosition(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result started(_Started value),
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
  _ListUpdated listUpdated({@required ActiveList list}) {
    return _ListUpdated(
      list: list,
    );
  }
}

// ignore: unused_element
const $CreatelistState = _$CreatelistStateTearOff();

mixin _$CreatelistState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result listUpdated(ActiveList list),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listUpdated(ActiveList list),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result listUpdated(_ListUpdated value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listUpdated(_ListUpdated value),
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
    @required Result listUpdated(ActiveList list),
  }) {
    assert(initial != null);
    assert(listUpdated != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listUpdated(ActiveList list),
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
    @required Result listUpdated(_ListUpdated value),
  }) {
    assert(initial != null);
    assert(listUpdated != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listUpdated(_ListUpdated value),
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

abstract class _$ListUpdatedCopyWith<$Res> {
  factory _$ListUpdatedCopyWith(
          _ListUpdated value, $Res Function(_ListUpdated) then) =
      __$ListUpdatedCopyWithImpl<$Res>;
  $Res call({ActiveList list});

  $ActiveListCopyWith<$Res> get list;
}

class __$ListUpdatedCopyWithImpl<$Res>
    extends _$CreatelistStateCopyWithImpl<$Res>
    implements _$ListUpdatedCopyWith<$Res> {
  __$ListUpdatedCopyWithImpl(
      _ListUpdated _value, $Res Function(_ListUpdated) _then)
      : super(_value, (v) => _then(v as _ListUpdated));

  @override
  _ListUpdated get _value => super._value as _ListUpdated;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_ListUpdated(
      list: list == freezed ? _value.list : list as ActiveList,
    ));
  }

  @override
  $ActiveListCopyWith<$Res> get list {
    if (_value.list == null) {
      return null;
    }
    return $ActiveListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }
}

class _$_ListUpdated implements _ListUpdated {
  const _$_ListUpdated({@required this.list}) : assert(list != null);

  @override
  final ActiveList list;

  @override
  String toString() {
    return 'CreatelistState.listUpdated(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListUpdated &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @override
  _$ListUpdatedCopyWith<_ListUpdated> get copyWith =>
      __$ListUpdatedCopyWithImpl<_ListUpdated>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result listUpdated(ActiveList list),
  }) {
    assert(initial != null);
    assert(listUpdated != null);
    return listUpdated(list);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result listUpdated(ActiveList list),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listUpdated != null) {
      return listUpdated(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result listUpdated(_ListUpdated value),
  }) {
    assert(initial != null);
    assert(listUpdated != null);
    return listUpdated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result listUpdated(_ListUpdated value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listUpdated != null) {
      return listUpdated(this);
    }
    return orElse();
  }
}

abstract class _ListUpdated implements CreatelistState {
  const factory _ListUpdated({@required ActiveList list}) = _$_ListUpdated;

  ActiveList get list;
  _$ListUpdatedCopyWith<_ListUpdated> get copyWith;
}
