// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'activelist_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ActivelistEventTearOff {
  const _$ActivelistEventTearOff();

// ignore: unused_element
  _LoadLists load() {
    return const _LoadLists();
  }

// ignore: unused_element
  _LoadForReorder loadForReorder() {
    return const _LoadForReorder();
  }

// ignore: unused_element
  _InsertNewList insertNewList({@required CreateListParameter listParameter}) {
    return _InsertNewList(
      listParameter: listParameter,
    );
  }

// ignore: unused_element
  _DeleteActiveListPosition deleteActiveListPosition(
      {@required ActiveList list, @required ActiveListPosition position}) {
    return _DeleteActiveListPosition(
      list: list,
      position: position,
    );
  }

// ignore: unused_element
  _DeleteActiveList deleteActiveList({@required ActiveList list}) {
    return _DeleteActiveList(
      list: list,
    );
  }

// ignore: unused_element
  _ReplaceActiveList replaceActiveList(
      {@required CreateListParameter listParameter,
      @required ActiveList list}) {
    return _ReplaceActiveList(
      listParameter: listParameter,
      list: list,
    );
  }

// ignore: unused_element
  _BackupData backupData() {
    return const _BackupData();
  }

// ignore: unused_element
  _LoadDataFromBackup loadDataFromBackup() {
    return const _LoadDataFromBackup();
  }

// ignore: unused_element
  _UseListAsTemplate useListAsTemplate({@required ActiveList list}) {
    return _UseListAsTemplate(
      list: list,
    );
  }

// ignore: unused_element
  _ChangeListPosition changeListPosition(
      {@required ActiveList list, int oldIndex, int newIndex}) {
    return _ChangeListPosition(
      list: list,
      oldIndex: oldIndex,
      newIndex: newIndex,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ActivelistEvent = _$ActivelistEventTearOff();

/// @nodoc
mixin _$ActivelistEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ActivelistEventCopyWith<$Res> {
  factory $ActivelistEventCopyWith(
          ActivelistEvent value, $Res Function(ActivelistEvent) then) =
      _$ActivelistEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActivelistEventCopyWithImpl<$Res>
    implements $ActivelistEventCopyWith<$Res> {
  _$ActivelistEventCopyWithImpl(this._value, this._then);

  final ActivelistEvent _value;
  // ignore: unused_field
  final $Res Function(ActivelistEvent) _then;
}

/// @nodoc
abstract class _$LoadListsCopyWith<$Res> {
  factory _$LoadListsCopyWith(
          _LoadLists value, $Res Function(_LoadLists) then) =
      __$LoadListsCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadListsCopyWithImpl<$Res> extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$LoadListsCopyWith<$Res> {
  __$LoadListsCopyWithImpl(_LoadLists _value, $Res Function(_LoadLists) _then)
      : super(_value, (v) => _then(v as _LoadLists));

  @override
  _LoadLists get _value => super._value as _LoadLists;
}

/// @nodoc
class _$_LoadLists implements _LoadLists {
  const _$_LoadLists();

  @override
  String toString() {
    return 'ActivelistEvent.load()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadLists);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return load();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return load(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (load != null) {
      return load(this);
    }
    return orElse();
  }
}

abstract class _LoadLists implements ActivelistEvent {
  const factory _LoadLists() = _$_LoadLists;
}

/// @nodoc
abstract class _$LoadForReorderCopyWith<$Res> {
  factory _$LoadForReorderCopyWith(
          _LoadForReorder value, $Res Function(_LoadForReorder) then) =
      __$LoadForReorderCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadForReorderCopyWithImpl<$Res>
    extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$LoadForReorderCopyWith<$Res> {
  __$LoadForReorderCopyWithImpl(
      _LoadForReorder _value, $Res Function(_LoadForReorder) _then)
      : super(_value, (v) => _then(v as _LoadForReorder));

  @override
  _LoadForReorder get _value => super._value as _LoadForReorder;
}

/// @nodoc
class _$_LoadForReorder implements _LoadForReorder {
  const _$_LoadForReorder();

  @override
  String toString() {
    return 'ActivelistEvent.loadForReorder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadForReorder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return loadForReorder();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadForReorder != null) {
      return loadForReorder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return loadForReorder(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadForReorder != null) {
      return loadForReorder(this);
    }
    return orElse();
  }
}

abstract class _LoadForReorder implements ActivelistEvent {
  const factory _LoadForReorder() = _$_LoadForReorder;
}

/// @nodoc
abstract class _$InsertNewListCopyWith<$Res> {
  factory _$InsertNewListCopyWith(
          _InsertNewList value, $Res Function(_InsertNewList) then) =
      __$InsertNewListCopyWithImpl<$Res>;
  $Res call({CreateListParameter listParameter});
}

/// @nodoc
class __$InsertNewListCopyWithImpl<$Res>
    extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$InsertNewListCopyWith<$Res> {
  __$InsertNewListCopyWithImpl(
      _InsertNewList _value, $Res Function(_InsertNewList) _then)
      : super(_value, (v) => _then(v as _InsertNewList));

  @override
  _InsertNewList get _value => super._value as _InsertNewList;

  @override
  $Res call({
    Object listParameter = freezed,
  }) {
    return _then(_InsertNewList(
      listParameter: listParameter == freezed
          ? _value.listParameter
          : listParameter as CreateListParameter,
    ));
  }
}

/// @nodoc
class _$_InsertNewList implements _InsertNewList {
  const _$_InsertNewList({@required this.listParameter})
      : assert(listParameter != null);

  @override
  final CreateListParameter listParameter;

  @override
  String toString() {
    return 'ActivelistEvent.insertNewList(listParameter: $listParameter)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InsertNewList &&
            (identical(other.listParameter, listParameter) ||
                const DeepCollectionEquality()
                    .equals(other.listParameter, listParameter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(listParameter);

  @override
  _$InsertNewListCopyWith<_InsertNewList> get copyWith =>
      __$InsertNewListCopyWithImpl<_InsertNewList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return insertNewList(listParameter);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insertNewList != null) {
      return insertNewList(listParameter);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return insertNewList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (insertNewList != null) {
      return insertNewList(this);
    }
    return orElse();
  }
}

abstract class _InsertNewList implements ActivelistEvent {
  const factory _InsertNewList({@required CreateListParameter listParameter}) =
      _$_InsertNewList;

  CreateListParameter get listParameter;
  _$InsertNewListCopyWith<_InsertNewList> get copyWith;
}

/// @nodoc
abstract class _$DeleteActiveListPositionCopyWith<$Res> {
  factory _$DeleteActiveListPositionCopyWith(_DeleteActiveListPosition value,
          $Res Function(_DeleteActiveListPosition) then) =
      __$DeleteActiveListPositionCopyWithImpl<$Res>;
  $Res call({ActiveList list, ActiveListPosition position});

  $ActiveListCopyWith<$Res> get list;
  $ActiveListPositionCopyWith<$Res> get position;
}

/// @nodoc
class __$DeleteActiveListPositionCopyWithImpl<$Res>
    extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$DeleteActiveListPositionCopyWith<$Res> {
  __$DeleteActiveListPositionCopyWithImpl(_DeleteActiveListPosition _value,
      $Res Function(_DeleteActiveListPosition) _then)
      : super(_value, (v) => _then(v as _DeleteActiveListPosition));

  @override
  _DeleteActiveListPosition get _value =>
      super._value as _DeleteActiveListPosition;

  @override
  $Res call({
    Object list = freezed,
    Object position = freezed,
  }) {
    return _then(_DeleteActiveListPosition(
      list: list == freezed ? _value.list : list as ActiveList,
      position: position == freezed
          ? _value.position
          : position as ActiveListPosition,
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

  @override
  $ActiveListPositionCopyWith<$Res> get position {
    if (_value.position == null) {
      return null;
    }
    return $ActiveListPositionCopyWith<$Res>(_value.position, (value) {
      return _then(_value.copyWith(position: value));
    });
  }
}

/// @nodoc
class _$_DeleteActiveListPosition implements _DeleteActiveListPosition {
  const _$_DeleteActiveListPosition(
      {@required this.list, @required this.position})
      : assert(list != null),
        assert(position != null);

  @override
  final ActiveList list;
  @override
  final ActiveListPosition position;

  @override
  String toString() {
    return 'ActivelistEvent.deleteActiveListPosition(list: $list, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteActiveListPosition &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.position, position) ||
                const DeepCollectionEquality()
                    .equals(other.position, position)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(position);

  @override
  _$DeleteActiveListPositionCopyWith<_DeleteActiveListPosition> get copyWith =>
      __$DeleteActiveListPositionCopyWithImpl<_DeleteActiveListPosition>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return deleteActiveListPosition(list, position);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteActiveListPosition != null) {
      return deleteActiveListPosition(list, position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return deleteActiveListPosition(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteActiveListPosition != null) {
      return deleteActiveListPosition(this);
    }
    return orElse();
  }
}

abstract class _DeleteActiveListPosition implements ActivelistEvent {
  const factory _DeleteActiveListPosition(
      {@required ActiveList list,
      @required ActiveListPosition position}) = _$_DeleteActiveListPosition;

  ActiveList get list;
  ActiveListPosition get position;
  _$DeleteActiveListPositionCopyWith<_DeleteActiveListPosition> get copyWith;
}

/// @nodoc
abstract class _$DeleteActiveListCopyWith<$Res> {
  factory _$DeleteActiveListCopyWith(
          _DeleteActiveList value, $Res Function(_DeleteActiveList) then) =
      __$DeleteActiveListCopyWithImpl<$Res>;
  $Res call({ActiveList list});

  $ActiveListCopyWith<$Res> get list;
}

/// @nodoc
class __$DeleteActiveListCopyWithImpl<$Res>
    extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$DeleteActiveListCopyWith<$Res> {
  __$DeleteActiveListCopyWithImpl(
      _DeleteActiveList _value, $Res Function(_DeleteActiveList) _then)
      : super(_value, (v) => _then(v as _DeleteActiveList));

  @override
  _DeleteActiveList get _value => super._value as _DeleteActiveList;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_DeleteActiveList(
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

/// @nodoc
class _$_DeleteActiveList implements _DeleteActiveList {
  const _$_DeleteActiveList({@required this.list}) : assert(list != null);

  @override
  final ActiveList list;

  @override
  String toString() {
    return 'ActivelistEvent.deleteActiveList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteActiveList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @override
  _$DeleteActiveListCopyWith<_DeleteActiveList> get copyWith =>
      __$DeleteActiveListCopyWithImpl<_DeleteActiveList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return deleteActiveList(list);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteActiveList != null) {
      return deleteActiveList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return deleteActiveList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteActiveList != null) {
      return deleteActiveList(this);
    }
    return orElse();
  }
}

abstract class _DeleteActiveList implements ActivelistEvent {
  const factory _DeleteActiveList({@required ActiveList list}) =
      _$_DeleteActiveList;

  ActiveList get list;
  _$DeleteActiveListCopyWith<_DeleteActiveList> get copyWith;
}

/// @nodoc
abstract class _$ReplaceActiveListCopyWith<$Res> {
  factory _$ReplaceActiveListCopyWith(
          _ReplaceActiveList value, $Res Function(_ReplaceActiveList) then) =
      __$ReplaceActiveListCopyWithImpl<$Res>;
  $Res call({CreateListParameter listParameter, ActiveList list});

  $ActiveListCopyWith<$Res> get list;
}

/// @nodoc
class __$ReplaceActiveListCopyWithImpl<$Res>
    extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$ReplaceActiveListCopyWith<$Res> {
  __$ReplaceActiveListCopyWithImpl(
      _ReplaceActiveList _value, $Res Function(_ReplaceActiveList) _then)
      : super(_value, (v) => _then(v as _ReplaceActiveList));

  @override
  _ReplaceActiveList get _value => super._value as _ReplaceActiveList;

  @override
  $Res call({
    Object listParameter = freezed,
    Object list = freezed,
  }) {
    return _then(_ReplaceActiveList(
      listParameter: listParameter == freezed
          ? _value.listParameter
          : listParameter as CreateListParameter,
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

/// @nodoc
class _$_ReplaceActiveList implements _ReplaceActiveList {
  const _$_ReplaceActiveList(
      {@required this.listParameter, @required this.list})
      : assert(listParameter != null),
        assert(list != null);

  @override
  final CreateListParameter listParameter;
  @override
  final ActiveList list;

  @override
  String toString() {
    return 'ActivelistEvent.replaceActiveList(listParameter: $listParameter, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ReplaceActiveList &&
            (identical(other.listParameter, listParameter) ||
                const DeepCollectionEquality()
                    .equals(other.listParameter, listParameter)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(listParameter) ^
      const DeepCollectionEquality().hash(list);

  @override
  _$ReplaceActiveListCopyWith<_ReplaceActiveList> get copyWith =>
      __$ReplaceActiveListCopyWithImpl<_ReplaceActiveList>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return replaceActiveList(listParameter, list);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (replaceActiveList != null) {
      return replaceActiveList(listParameter, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return replaceActiveList(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (replaceActiveList != null) {
      return replaceActiveList(this);
    }
    return orElse();
  }
}

abstract class _ReplaceActiveList implements ActivelistEvent {
  const factory _ReplaceActiveList(
      {@required CreateListParameter listParameter,
      @required ActiveList list}) = _$_ReplaceActiveList;

  CreateListParameter get listParameter;
  ActiveList get list;
  _$ReplaceActiveListCopyWith<_ReplaceActiveList> get copyWith;
}

/// @nodoc
abstract class _$BackupDataCopyWith<$Res> {
  factory _$BackupDataCopyWith(
          _BackupData value, $Res Function(_BackupData) then) =
      __$BackupDataCopyWithImpl<$Res>;
}

/// @nodoc
class __$BackupDataCopyWithImpl<$Res>
    extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$BackupDataCopyWith<$Res> {
  __$BackupDataCopyWithImpl(
      _BackupData _value, $Res Function(_BackupData) _then)
      : super(_value, (v) => _then(v as _BackupData));

  @override
  _BackupData get _value => super._value as _BackupData;
}

/// @nodoc
class _$_BackupData implements _BackupData {
  const _$_BackupData();

  @override
  String toString() {
    return 'ActivelistEvent.backupData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _BackupData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return backupData();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (backupData != null) {
      return backupData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return backupData(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (backupData != null) {
      return backupData(this);
    }
    return orElse();
  }
}

abstract class _BackupData implements ActivelistEvent {
  const factory _BackupData() = _$_BackupData;
}

/// @nodoc
abstract class _$LoadDataFromBackupCopyWith<$Res> {
  factory _$LoadDataFromBackupCopyWith(
          _LoadDataFromBackup value, $Res Function(_LoadDataFromBackup) then) =
      __$LoadDataFromBackupCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadDataFromBackupCopyWithImpl<$Res>
    extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$LoadDataFromBackupCopyWith<$Res> {
  __$LoadDataFromBackupCopyWithImpl(
      _LoadDataFromBackup _value, $Res Function(_LoadDataFromBackup) _then)
      : super(_value, (v) => _then(v as _LoadDataFromBackup));

  @override
  _LoadDataFromBackup get _value => super._value as _LoadDataFromBackup;
}

/// @nodoc
class _$_LoadDataFromBackup implements _LoadDataFromBackup {
  const _$_LoadDataFromBackup();

  @override
  String toString() {
    return 'ActivelistEvent.loadDataFromBackup()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadDataFromBackup);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return loadDataFromBackup();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadDataFromBackup != null) {
      return loadDataFromBackup();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return loadDataFromBackup(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadDataFromBackup != null) {
      return loadDataFromBackup(this);
    }
    return orElse();
  }
}

abstract class _LoadDataFromBackup implements ActivelistEvent {
  const factory _LoadDataFromBackup() = _$_LoadDataFromBackup;
}

/// @nodoc
abstract class _$UseListAsTemplateCopyWith<$Res> {
  factory _$UseListAsTemplateCopyWith(
          _UseListAsTemplate value, $Res Function(_UseListAsTemplate) then) =
      __$UseListAsTemplateCopyWithImpl<$Res>;
  $Res call({ActiveList list});

  $ActiveListCopyWith<$Res> get list;
}

/// @nodoc
class __$UseListAsTemplateCopyWithImpl<$Res>
    extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$UseListAsTemplateCopyWith<$Res> {
  __$UseListAsTemplateCopyWithImpl(
      _UseListAsTemplate _value, $Res Function(_UseListAsTemplate) _then)
      : super(_value, (v) => _then(v as _UseListAsTemplate));

  @override
  _UseListAsTemplate get _value => super._value as _UseListAsTemplate;

  @override
  $Res call({
    Object list = freezed,
  }) {
    return _then(_UseListAsTemplate(
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

/// @nodoc
class _$_UseListAsTemplate implements _UseListAsTemplate {
  const _$_UseListAsTemplate({@required this.list}) : assert(list != null);

  @override
  final ActiveList list;

  @override
  String toString() {
    return 'ActivelistEvent.useListAsTemplate(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UseListAsTemplate &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @override
  _$UseListAsTemplateCopyWith<_UseListAsTemplate> get copyWith =>
      __$UseListAsTemplateCopyWithImpl<_UseListAsTemplate>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return useListAsTemplate(list);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (useListAsTemplate != null) {
      return useListAsTemplate(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return useListAsTemplate(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (useListAsTemplate != null) {
      return useListAsTemplate(this);
    }
    return orElse();
  }
}

abstract class _UseListAsTemplate implements ActivelistEvent {
  const factory _UseListAsTemplate({@required ActiveList list}) =
      _$_UseListAsTemplate;

  ActiveList get list;
  _$UseListAsTemplateCopyWith<_UseListAsTemplate> get copyWith;
}

/// @nodoc
abstract class _$ChangeListPositionCopyWith<$Res> {
  factory _$ChangeListPositionCopyWith(
          _ChangeListPosition value, $Res Function(_ChangeListPosition) then) =
      __$ChangeListPositionCopyWithImpl<$Res>;
  $Res call({ActiveList list, int oldIndex, int newIndex});

  $ActiveListCopyWith<$Res> get list;
}

/// @nodoc
class __$ChangeListPositionCopyWithImpl<$Res>
    extends _$ActivelistEventCopyWithImpl<$Res>
    implements _$ChangeListPositionCopyWith<$Res> {
  __$ChangeListPositionCopyWithImpl(
      _ChangeListPosition _value, $Res Function(_ChangeListPosition) _then)
      : super(_value, (v) => _then(v as _ChangeListPosition));

  @override
  _ChangeListPosition get _value => super._value as _ChangeListPosition;

  @override
  $Res call({
    Object list = freezed,
    Object oldIndex = freezed,
    Object newIndex = freezed,
  }) {
    return _then(_ChangeListPosition(
      list: list == freezed ? _value.list : list as ActiveList,
      oldIndex: oldIndex == freezed ? _value.oldIndex : oldIndex as int,
      newIndex: newIndex == freezed ? _value.newIndex : newIndex as int,
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

/// @nodoc
class _$_ChangeListPosition implements _ChangeListPosition {
  const _$_ChangeListPosition(
      {@required this.list, this.oldIndex, this.newIndex})
      : assert(list != null);

  @override
  final ActiveList list;
  @override
  final int oldIndex;
  @override
  final int newIndex;

  @override
  String toString() {
    return 'ActivelistEvent.changeListPosition(list: $list, oldIndex: $oldIndex, newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeListPosition &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.oldIndex, oldIndex) ||
                const DeepCollectionEquality()
                    .equals(other.oldIndex, oldIndex)) &&
            (identical(other.newIndex, newIndex) ||
                const DeepCollectionEquality()
                    .equals(other.newIndex, newIndex)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(oldIndex) ^
      const DeepCollectionEquality().hash(newIndex);

  @override
  _$ChangeListPositionCopyWith<_ChangeListPosition> get copyWith =>
      __$ChangeListPositionCopyWithImpl<_ChangeListPosition>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result load(),
    @required Result loadForReorder(),
    @required Result insertNewList(CreateListParameter listParameter),
    @required
        Result deleteActiveListPosition(
            ActiveList list, ActiveListPosition position),
    @required Result deleteActiveList(ActiveList list),
    @required
        Result replaceActiveList(
            CreateListParameter listParameter, ActiveList list),
    @required Result backupData(),
    @required Result loadDataFromBackup(),
    @required Result useListAsTemplate(ActiveList list),
    @required
        Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return changeListPosition(list, oldIndex, newIndex);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result load(),
    Result loadForReorder(),
    Result insertNewList(CreateListParameter listParameter),
    Result deleteActiveListPosition(
        ActiveList list, ActiveListPosition position),
    Result deleteActiveList(ActiveList list),
    Result replaceActiveList(
        CreateListParameter listParameter, ActiveList list),
    Result backupData(),
    Result loadDataFromBackup(),
    Result useListAsTemplate(ActiveList list),
    Result changeListPosition(ActiveList list, int oldIndex, int newIndex),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeListPosition != null) {
      return changeListPosition(list, oldIndex, newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result load(_LoadLists value),
    @required Result loadForReorder(_LoadForReorder value),
    @required Result insertNewList(_InsertNewList value),
    @required Result deleteActiveListPosition(_DeleteActiveListPosition value),
    @required Result deleteActiveList(_DeleteActiveList value),
    @required Result replaceActiveList(_ReplaceActiveList value),
    @required Result backupData(_BackupData value),
    @required Result loadDataFromBackup(_LoadDataFromBackup value),
    @required Result useListAsTemplate(_UseListAsTemplate value),
    @required Result changeListPosition(_ChangeListPosition value),
  }) {
    assert(load != null);
    assert(loadForReorder != null);
    assert(insertNewList != null);
    assert(deleteActiveListPosition != null);
    assert(deleteActiveList != null);
    assert(replaceActiveList != null);
    assert(backupData != null);
    assert(loadDataFromBackup != null);
    assert(useListAsTemplate != null);
    assert(changeListPosition != null);
    return changeListPosition(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result load(_LoadLists value),
    Result loadForReorder(_LoadForReorder value),
    Result insertNewList(_InsertNewList value),
    Result deleteActiveListPosition(_DeleteActiveListPosition value),
    Result deleteActiveList(_DeleteActiveList value),
    Result replaceActiveList(_ReplaceActiveList value),
    Result backupData(_BackupData value),
    Result loadDataFromBackup(_LoadDataFromBackup value),
    Result useListAsTemplate(_UseListAsTemplate value),
    Result changeListPosition(_ChangeListPosition value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeListPosition != null) {
      return changeListPosition(this);
    }
    return orElse();
  }
}

abstract class _ChangeListPosition implements ActivelistEvent {
  const factory _ChangeListPosition(
      {@required ActiveList list,
      int oldIndex,
      int newIndex}) = _$_ChangeListPosition;

  ActiveList get list;
  int get oldIndex;
  int get newIndex;
  _$ChangeListPositionCopyWith<_ChangeListPosition> get copyWith;
}

/// @nodoc
class _$ActivelistStateTearOff {
  const _$ActivelistStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _Loaded loaded({@required List<ActiveList> userLists}) {
    return _Loaded(
      userLists: userLists,
    );
  }

// ignore: unused_element
  _ListOrderChanged listOrderChanged({@required List<ActiveList> userLists}) {
    return _ListOrderChanged(
      userLists: userLists,
    );
  }

// ignore: unused_element
  _Error error({@required Failure failure}) {
    return _Error(
      failure: failure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ActivelistState = _$ActivelistStateTearOff();

/// @nodoc
mixin _$ActivelistState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result listOrderChanged(List<ActiveList> userLists),
    @required Result error(Failure failure),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result listOrderChanged(List<ActiveList> userLists),
    Result error(Failure failure),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result listOrderChanged(_ListOrderChanged value),
    @required Result error(_Error value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result listOrderChanged(_ListOrderChanged value),
    Result error(_Error value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ActivelistStateCopyWith<$Res> {
  factory $ActivelistStateCopyWith(
          ActivelistState value, $Res Function(ActivelistState) then) =
      _$ActivelistStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ActivelistStateCopyWithImpl<$Res>
    implements $ActivelistStateCopyWith<$Res> {
  _$ActivelistStateCopyWithImpl(this._value, this._then);

  final ActivelistState _value;
  // ignore: unused_field
  final $Res Function(ActivelistState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$ActivelistStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'ActivelistState.initial()';
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
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result listOrderChanged(List<ActiveList> userLists),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(listOrderChanged != null);
    assert(error != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result listOrderChanged(List<ActiveList> userLists),
    Result error(Failure failure),
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
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result listOrderChanged(_ListOrderChanged value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(listOrderChanged != null);
    assert(error != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result listOrderChanged(_ListOrderChanged value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ActivelistState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res> extends _$ActivelistStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'ActivelistState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result listOrderChanged(List<ActiveList> userLists),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(listOrderChanged != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result listOrderChanged(List<ActiveList> userLists),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result listOrderChanged(_ListOrderChanged value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(listOrderChanged != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result listOrderChanged(_ListOrderChanged value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ActivelistState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadedCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) then) =
      __$LoadedCopyWithImpl<$Res>;
  $Res call({List<ActiveList> userLists});
}

/// @nodoc
class __$LoadedCopyWithImpl<$Res> extends _$ActivelistStateCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(_Loaded _value, $Res Function(_Loaded) _then)
      : super(_value, (v) => _then(v as _Loaded));

  @override
  _Loaded get _value => super._value as _Loaded;

  @override
  $Res call({
    Object userLists = freezed,
  }) {
    return _then(_Loaded(
      userLists: userLists == freezed
          ? _value.userLists
          : userLists as List<ActiveList>,
    ));
  }
}

/// @nodoc
class _$_Loaded implements _Loaded {
  const _$_Loaded({@required this.userLists}) : assert(userLists != null);

  @override
  final List<ActiveList> userLists;

  @override
  String toString() {
    return 'ActivelistState.loaded(userLists: $userLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Loaded &&
            (identical(other.userLists, userLists) ||
                const DeepCollectionEquality()
                    .equals(other.userLists, userLists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userLists);

  @override
  _$LoadedCopyWith<_Loaded> get copyWith =>
      __$LoadedCopyWithImpl<_Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result listOrderChanged(List<ActiveList> userLists),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(listOrderChanged != null);
    assert(error != null);
    return loaded(userLists);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result listOrderChanged(List<ActiveList> userLists),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(userLists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result listOrderChanged(_ListOrderChanged value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(listOrderChanged != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result listOrderChanged(_ListOrderChanged value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements ActivelistState {
  const factory _Loaded({@required List<ActiveList> userLists}) = _$_Loaded;

  List<ActiveList> get userLists;
  _$LoadedCopyWith<_Loaded> get copyWith;
}

/// @nodoc
abstract class _$ListOrderChangedCopyWith<$Res> {
  factory _$ListOrderChangedCopyWith(
          _ListOrderChanged value, $Res Function(_ListOrderChanged) then) =
      __$ListOrderChangedCopyWithImpl<$Res>;
  $Res call({List<ActiveList> userLists});
}

/// @nodoc
class __$ListOrderChangedCopyWithImpl<$Res>
    extends _$ActivelistStateCopyWithImpl<$Res>
    implements _$ListOrderChangedCopyWith<$Res> {
  __$ListOrderChangedCopyWithImpl(
      _ListOrderChanged _value, $Res Function(_ListOrderChanged) _then)
      : super(_value, (v) => _then(v as _ListOrderChanged));

  @override
  _ListOrderChanged get _value => super._value as _ListOrderChanged;

  @override
  $Res call({
    Object userLists = freezed,
  }) {
    return _then(_ListOrderChanged(
      userLists: userLists == freezed
          ? _value.userLists
          : userLists as List<ActiveList>,
    ));
  }
}

/// @nodoc
class _$_ListOrderChanged implements _ListOrderChanged {
  const _$_ListOrderChanged({@required this.userLists})
      : assert(userLists != null);

  @override
  final List<ActiveList> userLists;

  @override
  String toString() {
    return 'ActivelistState.listOrderChanged(userLists: $userLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ListOrderChanged &&
            (identical(other.userLists, userLists) ||
                const DeepCollectionEquality()
                    .equals(other.userLists, userLists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userLists);

  @override
  _$ListOrderChangedCopyWith<_ListOrderChanged> get copyWith =>
      __$ListOrderChangedCopyWithImpl<_ListOrderChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result listOrderChanged(List<ActiveList> userLists),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(listOrderChanged != null);
    assert(error != null);
    return listOrderChanged(userLists);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result listOrderChanged(List<ActiveList> userLists),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listOrderChanged != null) {
      return listOrderChanged(userLists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result listOrderChanged(_ListOrderChanged value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(listOrderChanged != null);
    assert(error != null);
    return listOrderChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result listOrderChanged(_ListOrderChanged value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (listOrderChanged != null) {
      return listOrderChanged(this);
    }
    return orElse();
  }
}

abstract class _ListOrderChanged implements ActivelistState {
  const factory _ListOrderChanged({@required List<ActiveList> userLists}) =
      _$_ListOrderChanged;

  List<ActiveList> get userLists;
  _$ListOrderChangedCopyWith<_ListOrderChanged> get copyWith;
}

/// @nodoc
abstract class _$ErrorCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) then) =
      __$ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$ErrorCopyWithImpl<$Res> extends _$ActivelistStateCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(_Error _value, $Res Function(_Error) _then)
      : super(_value, (v) => _then(v as _Error));

  @override
  _Error get _value => super._value as _Error;

  @override
  $Res call({
    Object failure = freezed,
  }) {
    return _then(_Error(
      failure: failure == freezed ? _value.failure : failure as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    if (_value.failure == null) {
      return null;
    }
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc
class _$_Error implements _Error {
  const _$_Error({@required this.failure}) : assert(failure != null);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'ActivelistState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @override
  _$ErrorCopyWith<_Error> get copyWith =>
      __$ErrorCopyWithImpl<_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loaded(List<ActiveList> userLists),
    @required Result listOrderChanged(List<ActiveList> userLists),
    @required Result error(Failure failure),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(listOrderChanged != null);
    assert(error != null);
    return error(failure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loaded(List<ActiveList> userLists),
    Result listOrderChanged(List<ActiveList> userLists),
    Result error(Failure failure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loaded(_Loaded value),
    @required Result listOrderChanged(_ListOrderChanged value),
    @required Result error(_Error value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loaded != null);
    assert(listOrderChanged != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loaded(_Loaded value),
    Result listOrderChanged(_ListOrderChanged value),
    Result error(_Error value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements ActivelistState {
  const factory _Error({@required Failure failure}) = _$_Error;

  Failure get failure;
  _$ErrorCopyWith<_Error> get copyWith;
}
