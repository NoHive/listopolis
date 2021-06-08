// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'onlinelists_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$OnlinelistsEventTearOff {
  const _$OnlinelistsEventTearOff();

  _Started started() {
    return const _Started();
  }

  ListViewRequested listViewRequested() {
    return const ListViewRequested();
  }

  ListViewReceived listViewReceived(
      {required Either<Failure, List<ActiveList>> serverListContend}) {
    return ListViewReceived(
      serverListContend: serverListContend,
    );
  }

  _InsertNewList insertNewList({required CreateListParameter aNewList}) {
    return _InsertNewList(
      aNewList: aNewList,
    );
  }

  _InsertNewListIntoExisting insertNewListIntoExisting(
      {required Either<Failure, List<ActiveList>> serverListContend,
      required CreateListParameter aNewList}) {
    return _InsertNewListIntoExisting(
      serverListContend: serverListContend,
      aNewList: aNewList,
    );
  }

  _DeleteListItem deleteListItem(
      {required ActiveList list, required ActiveListPosition listItem}) {
    return _DeleteListItem(
      list: list,
      listItem: listItem,
    );
  }

  _DeleteListItemFromExisting deleteListItemFromExisting(
      {required Either<Failure, List<ActiveList>> serverListContend,
      required ActiveList list,
      required ActiveListPosition listItem}) {
    return _DeleteListItemFromExisting(
      serverListContend: serverListContend,
      list: list,
      listItem: listItem,
    );
  }

  _DeleteList deleteList({required ActiveList list}) {
    return _DeleteList(
      list: list,
    );
  }

  _DeleteListFromExisting deleteListFromExisting(
      {required Either<Failure, List<ActiveList>> serverListContend,
      required ActiveList list}) {
    return _DeleteListFromExisting(
      serverListContend: serverListContend,
      list: list,
    );
  }
}

/// @nodoc
const $OnlinelistsEvent = _$OnlinelistsEventTearOff();

/// @nodoc
mixin _$OnlinelistsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() listViewRequested,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend)
        listViewReceived,
    required TResult Function(CreateListParameter aNewList) insertNewList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)
        insertNewListIntoExisting,
    required TResult Function(ActiveList list, ActiveListPosition listItem)
        deleteListItem,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list,
            ActiveListPosition listItem)
        deleteListItemFromExisting,
    required TResult Function(ActiveList list) deleteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? listViewRequested,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult Function(CreateListParameter aNewList)? insertNewList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult Function(ActiveList list)? deleteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ListViewRequested value) listViewRequested,
    required TResult Function(ListViewReceived value) listViewReceived,
    required TResult Function(_InsertNewList value) insertNewList,
    required TResult Function(_InsertNewListIntoExisting value)
        insertNewListIntoExisting,
    required TResult Function(_DeleteListItem value) deleteListItem,
    required TResult Function(_DeleteListItemFromExisting value)
        deleteListItemFromExisting,
    required TResult Function(_DeleteList value) deleteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ListViewRequested value)? listViewRequested,
    TResult Function(ListViewReceived value)? listViewReceived,
    TResult Function(_InsertNewList value)? insertNewList,
    TResult Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult Function(_DeleteListItem value)? deleteListItem,
    TResult Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult Function(_DeleteList value)? deleteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinelistsEventCopyWith<$Res> {
  factory $OnlinelistsEventCopyWith(
          OnlinelistsEvent value, $Res Function(OnlinelistsEvent) then) =
      _$OnlinelistsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnlinelistsEventCopyWithImpl<$Res>
    implements $OnlinelistsEventCopyWith<$Res> {
  _$OnlinelistsEventCopyWithImpl(this._value, this._then);

  final OnlinelistsEvent _value;
  // ignore: unused_field
  final $Res Function(OnlinelistsEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$OnlinelistsEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'OnlinelistsEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() listViewRequested,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend)
        listViewReceived,
    required TResult Function(CreateListParameter aNewList) insertNewList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)
        insertNewListIntoExisting,
    required TResult Function(ActiveList list, ActiveListPosition listItem)
        deleteListItem,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list,
            ActiveListPosition listItem)
        deleteListItemFromExisting,
    required TResult Function(ActiveList list) deleteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? listViewRequested,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult Function(CreateListParameter aNewList)? insertNewList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult Function(ActiveList list)? deleteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ListViewRequested value) listViewRequested,
    required TResult Function(ListViewReceived value) listViewReceived,
    required TResult Function(_InsertNewList value) insertNewList,
    required TResult Function(_InsertNewListIntoExisting value)
        insertNewListIntoExisting,
    required TResult Function(_DeleteListItem value) deleteListItem,
    required TResult Function(_DeleteListItemFromExisting value)
        deleteListItemFromExisting,
    required TResult Function(_DeleteList value) deleteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ListViewRequested value)? listViewRequested,
    TResult Function(ListViewReceived value)? listViewReceived,
    TResult Function(_InsertNewList value)? insertNewList,
    TResult Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult Function(_DeleteListItem value)? deleteListItem,
    TResult Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult Function(_DeleteList value)? deleteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OnlinelistsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class $ListViewRequestedCopyWith<$Res> {
  factory $ListViewRequestedCopyWith(
          ListViewRequested value, $Res Function(ListViewRequested) then) =
      _$ListViewRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$ListViewRequestedCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res>
    implements $ListViewRequestedCopyWith<$Res> {
  _$ListViewRequestedCopyWithImpl(
      ListViewRequested _value, $Res Function(ListViewRequested) _then)
      : super(_value, (v) => _then(v as ListViewRequested));

  @override
  ListViewRequested get _value => super._value as ListViewRequested;
}

/// @nodoc

class _$ListViewRequested implements ListViewRequested {
  const _$ListViewRequested();

  @override
  String toString() {
    return 'OnlinelistsEvent.listViewRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ListViewRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() listViewRequested,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend)
        listViewReceived,
    required TResult Function(CreateListParameter aNewList) insertNewList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)
        insertNewListIntoExisting,
    required TResult Function(ActiveList list, ActiveListPosition listItem)
        deleteListItem,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list,
            ActiveListPosition listItem)
        deleteListItemFromExisting,
    required TResult Function(ActiveList list) deleteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return listViewRequested();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? listViewRequested,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult Function(CreateListParameter aNewList)? insertNewList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult Function(ActiveList list)? deleteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (listViewRequested != null) {
      return listViewRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ListViewRequested value) listViewRequested,
    required TResult Function(ListViewReceived value) listViewReceived,
    required TResult Function(_InsertNewList value) insertNewList,
    required TResult Function(_InsertNewListIntoExisting value)
        insertNewListIntoExisting,
    required TResult Function(_DeleteListItem value) deleteListItem,
    required TResult Function(_DeleteListItemFromExisting value)
        deleteListItemFromExisting,
    required TResult Function(_DeleteList value) deleteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return listViewRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ListViewRequested value)? listViewRequested,
    TResult Function(ListViewReceived value)? listViewReceived,
    TResult Function(_InsertNewList value)? insertNewList,
    TResult Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult Function(_DeleteListItem value)? deleteListItem,
    TResult Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult Function(_DeleteList value)? deleteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (listViewRequested != null) {
      return listViewRequested(this);
    }
    return orElse();
  }
}

abstract class ListViewRequested implements OnlinelistsEvent {
  const factory ListViewRequested() = _$ListViewRequested;
}

/// @nodoc
abstract class $ListViewReceivedCopyWith<$Res> {
  factory $ListViewReceivedCopyWith(
          ListViewReceived value, $Res Function(ListViewReceived) then) =
      _$ListViewReceivedCopyWithImpl<$Res>;
  $Res call({Either<Failure, List<ActiveList>> serverListContend});
}

/// @nodoc
class _$ListViewReceivedCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res>
    implements $ListViewReceivedCopyWith<$Res> {
  _$ListViewReceivedCopyWithImpl(
      ListViewReceived _value, $Res Function(ListViewReceived) _then)
      : super(_value, (v) => _then(v as ListViewReceived));

  @override
  ListViewReceived get _value => super._value as ListViewReceived;

  @override
  $Res call({
    Object? serverListContend = freezed,
  }) {
    return _then(ListViewReceived(
      serverListContend: serverListContend == freezed
          ? _value.serverListContend
          : serverListContend // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ActiveList>>,
    ));
  }
}

/// @nodoc

class _$ListViewReceived implements ListViewReceived {
  const _$ListViewReceived({required this.serverListContend});

  @override
  final Either<Failure, List<ActiveList>> serverListContend;

  @override
  String toString() {
    return 'OnlinelistsEvent.listViewReceived(serverListContend: $serverListContend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ListViewReceived &&
            (identical(other.serverListContend, serverListContend) ||
                const DeepCollectionEquality()
                    .equals(other.serverListContend, serverListContend)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serverListContend);

  @JsonKey(ignore: true)
  @override
  $ListViewReceivedCopyWith<ListViewReceived> get copyWith =>
      _$ListViewReceivedCopyWithImpl<ListViewReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() listViewRequested,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend)
        listViewReceived,
    required TResult Function(CreateListParameter aNewList) insertNewList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)
        insertNewListIntoExisting,
    required TResult Function(ActiveList list, ActiveListPosition listItem)
        deleteListItem,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list,
            ActiveListPosition listItem)
        deleteListItemFromExisting,
    required TResult Function(ActiveList list) deleteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return listViewReceived(serverListContend);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? listViewRequested,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult Function(CreateListParameter aNewList)? insertNewList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult Function(ActiveList list)? deleteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (listViewReceived != null) {
      return listViewReceived(serverListContend);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ListViewRequested value) listViewRequested,
    required TResult Function(ListViewReceived value) listViewReceived,
    required TResult Function(_InsertNewList value) insertNewList,
    required TResult Function(_InsertNewListIntoExisting value)
        insertNewListIntoExisting,
    required TResult Function(_DeleteListItem value) deleteListItem,
    required TResult Function(_DeleteListItemFromExisting value)
        deleteListItemFromExisting,
    required TResult Function(_DeleteList value) deleteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return listViewReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ListViewRequested value)? listViewRequested,
    TResult Function(ListViewReceived value)? listViewReceived,
    TResult Function(_InsertNewList value)? insertNewList,
    TResult Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult Function(_DeleteListItem value)? deleteListItem,
    TResult Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult Function(_DeleteList value)? deleteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (listViewReceived != null) {
      return listViewReceived(this);
    }
    return orElse();
  }
}

abstract class ListViewReceived implements OnlinelistsEvent {
  const factory ListViewReceived(
          {required Either<Failure, List<ActiveList>> serverListContend}) =
      _$ListViewReceived;

  Either<Failure, List<ActiveList>> get serverListContend =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListViewReceivedCopyWith<ListViewReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InsertNewListCopyWith<$Res> {
  factory _$InsertNewListCopyWith(
          _InsertNewList value, $Res Function(_InsertNewList) then) =
      __$InsertNewListCopyWithImpl<$Res>;
  $Res call({CreateListParameter aNewList});
}

/// @nodoc
class __$InsertNewListCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res>
    implements _$InsertNewListCopyWith<$Res> {
  __$InsertNewListCopyWithImpl(
      _InsertNewList _value, $Res Function(_InsertNewList) _then)
      : super(_value, (v) => _then(v as _InsertNewList));

  @override
  _InsertNewList get _value => super._value as _InsertNewList;

  @override
  $Res call({
    Object? aNewList = freezed,
  }) {
    return _then(_InsertNewList(
      aNewList: aNewList == freezed
          ? _value.aNewList
          : aNewList // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
    ));
  }
}

/// @nodoc

class _$_InsertNewList implements _InsertNewList {
  const _$_InsertNewList({required this.aNewList});

  @override
  final CreateListParameter aNewList;

  @override
  String toString() {
    return 'OnlinelistsEvent.insertNewList(aNewList: $aNewList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InsertNewList &&
            (identical(other.aNewList, aNewList) ||
                const DeepCollectionEquality()
                    .equals(other.aNewList, aNewList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(aNewList);

  @JsonKey(ignore: true)
  @override
  _$InsertNewListCopyWith<_InsertNewList> get copyWith =>
      __$InsertNewListCopyWithImpl<_InsertNewList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() listViewRequested,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend)
        listViewReceived,
    required TResult Function(CreateListParameter aNewList) insertNewList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)
        insertNewListIntoExisting,
    required TResult Function(ActiveList list, ActiveListPosition listItem)
        deleteListItem,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list,
            ActiveListPosition listItem)
        deleteListItemFromExisting,
    required TResult Function(ActiveList list) deleteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return insertNewList(aNewList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? listViewRequested,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult Function(CreateListParameter aNewList)? insertNewList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult Function(ActiveList list)? deleteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (insertNewList != null) {
      return insertNewList(aNewList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ListViewRequested value) listViewRequested,
    required TResult Function(ListViewReceived value) listViewReceived,
    required TResult Function(_InsertNewList value) insertNewList,
    required TResult Function(_InsertNewListIntoExisting value)
        insertNewListIntoExisting,
    required TResult Function(_DeleteListItem value) deleteListItem,
    required TResult Function(_DeleteListItemFromExisting value)
        deleteListItemFromExisting,
    required TResult Function(_DeleteList value) deleteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return insertNewList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ListViewRequested value)? listViewRequested,
    TResult Function(ListViewReceived value)? listViewReceived,
    TResult Function(_InsertNewList value)? insertNewList,
    TResult Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult Function(_DeleteListItem value)? deleteListItem,
    TResult Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult Function(_DeleteList value)? deleteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (insertNewList != null) {
      return insertNewList(this);
    }
    return orElse();
  }
}

abstract class _InsertNewList implements OnlinelistsEvent {
  const factory _InsertNewList({required CreateListParameter aNewList}) =
      _$_InsertNewList;

  CreateListParameter get aNewList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InsertNewListCopyWith<_InsertNewList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$InsertNewListIntoExistingCopyWith<$Res> {
  factory _$InsertNewListIntoExistingCopyWith(_InsertNewListIntoExisting value,
          $Res Function(_InsertNewListIntoExisting) then) =
      __$InsertNewListIntoExistingCopyWithImpl<$Res>;
  $Res call(
      {Either<Failure, List<ActiveList>> serverListContend,
      CreateListParameter aNewList});
}

/// @nodoc
class __$InsertNewListIntoExistingCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res>
    implements _$InsertNewListIntoExistingCopyWith<$Res> {
  __$InsertNewListIntoExistingCopyWithImpl(_InsertNewListIntoExisting _value,
      $Res Function(_InsertNewListIntoExisting) _then)
      : super(_value, (v) => _then(v as _InsertNewListIntoExisting));

  @override
  _InsertNewListIntoExisting get _value =>
      super._value as _InsertNewListIntoExisting;

  @override
  $Res call({
    Object? serverListContend = freezed,
    Object? aNewList = freezed,
  }) {
    return _then(_InsertNewListIntoExisting(
      serverListContend: serverListContend == freezed
          ? _value.serverListContend
          : serverListContend // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ActiveList>>,
      aNewList: aNewList == freezed
          ? _value.aNewList
          : aNewList // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
    ));
  }
}

/// @nodoc

class _$_InsertNewListIntoExisting implements _InsertNewListIntoExisting {
  const _$_InsertNewListIntoExisting(
      {required this.serverListContend, required this.aNewList});

  @override
  final Either<Failure, List<ActiveList>> serverListContend;
  @override
  final CreateListParameter aNewList;

  @override
  String toString() {
    return 'OnlinelistsEvent.insertNewListIntoExisting(serverListContend: $serverListContend, aNewList: $aNewList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InsertNewListIntoExisting &&
            (identical(other.serverListContend, serverListContend) ||
                const DeepCollectionEquality()
                    .equals(other.serverListContend, serverListContend)) &&
            (identical(other.aNewList, aNewList) ||
                const DeepCollectionEquality()
                    .equals(other.aNewList, aNewList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serverListContend) ^
      const DeepCollectionEquality().hash(aNewList);

  @JsonKey(ignore: true)
  @override
  _$InsertNewListIntoExistingCopyWith<_InsertNewListIntoExisting>
      get copyWith =>
          __$InsertNewListIntoExistingCopyWithImpl<_InsertNewListIntoExisting>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() listViewRequested,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend)
        listViewReceived,
    required TResult Function(CreateListParameter aNewList) insertNewList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)
        insertNewListIntoExisting,
    required TResult Function(ActiveList list, ActiveListPosition listItem)
        deleteListItem,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list,
            ActiveListPosition listItem)
        deleteListItemFromExisting,
    required TResult Function(ActiveList list) deleteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return insertNewListIntoExisting(serverListContend, aNewList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? listViewRequested,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult Function(CreateListParameter aNewList)? insertNewList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult Function(ActiveList list)? deleteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (insertNewListIntoExisting != null) {
      return insertNewListIntoExisting(serverListContend, aNewList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ListViewRequested value) listViewRequested,
    required TResult Function(ListViewReceived value) listViewReceived,
    required TResult Function(_InsertNewList value) insertNewList,
    required TResult Function(_InsertNewListIntoExisting value)
        insertNewListIntoExisting,
    required TResult Function(_DeleteListItem value) deleteListItem,
    required TResult Function(_DeleteListItemFromExisting value)
        deleteListItemFromExisting,
    required TResult Function(_DeleteList value) deleteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return insertNewListIntoExisting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ListViewRequested value)? listViewRequested,
    TResult Function(ListViewReceived value)? listViewReceived,
    TResult Function(_InsertNewList value)? insertNewList,
    TResult Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult Function(_DeleteListItem value)? deleteListItem,
    TResult Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult Function(_DeleteList value)? deleteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (insertNewListIntoExisting != null) {
      return insertNewListIntoExisting(this);
    }
    return orElse();
  }
}

abstract class _InsertNewListIntoExisting implements OnlinelistsEvent {
  const factory _InsertNewListIntoExisting(
      {required Either<Failure, List<ActiveList>> serverListContend,
      required CreateListParameter aNewList}) = _$_InsertNewListIntoExisting;

  Either<Failure, List<ActiveList>> get serverListContend =>
      throw _privateConstructorUsedError;
  CreateListParameter get aNewList => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InsertNewListIntoExistingCopyWith<_InsertNewListIntoExisting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteListItemCopyWith<$Res> {
  factory _$DeleteListItemCopyWith(
          _DeleteListItem value, $Res Function(_DeleteListItem) then) =
      __$DeleteListItemCopyWithImpl<$Res>;
  $Res call({ActiveList list, ActiveListPosition listItem});

  $ActiveListCopyWith<$Res> get list;
  $ActiveListPositionCopyWith<$Res> get listItem;
}

/// @nodoc
class __$DeleteListItemCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res>
    implements _$DeleteListItemCopyWith<$Res> {
  __$DeleteListItemCopyWithImpl(
      _DeleteListItem _value, $Res Function(_DeleteListItem) _then)
      : super(_value, (v) => _then(v as _DeleteListItem));

  @override
  _DeleteListItem get _value => super._value as _DeleteListItem;

  @override
  $Res call({
    Object? list = freezed,
    Object? listItem = freezed,
  }) {
    return _then(_DeleteListItem(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ActiveList,
      listItem: listItem == freezed
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as ActiveListPosition,
    ));
  }

  @override
  $ActiveListCopyWith<$Res> get list {
    return $ActiveListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }

  @override
  $ActiveListPositionCopyWith<$Res> get listItem {
    return $ActiveListPositionCopyWith<$Res>(_value.listItem, (value) {
      return _then(_value.copyWith(listItem: value));
    });
  }
}

/// @nodoc

class _$_DeleteListItem implements _DeleteListItem {
  const _$_DeleteListItem({required this.list, required this.listItem});

  @override
  final ActiveList list;
  @override
  final ActiveListPosition listItem;

  @override
  String toString() {
    return 'OnlinelistsEvent.deleteListItem(list: $list, listItem: $listItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteListItem &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.listItem, listItem) ||
                const DeepCollectionEquality()
                    .equals(other.listItem, listItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(listItem);

  @JsonKey(ignore: true)
  @override
  _$DeleteListItemCopyWith<_DeleteListItem> get copyWith =>
      __$DeleteListItemCopyWithImpl<_DeleteListItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() listViewRequested,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend)
        listViewReceived,
    required TResult Function(CreateListParameter aNewList) insertNewList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)
        insertNewListIntoExisting,
    required TResult Function(ActiveList list, ActiveListPosition listItem)
        deleteListItem,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list,
            ActiveListPosition listItem)
        deleteListItemFromExisting,
    required TResult Function(ActiveList list) deleteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return deleteListItem(list, listItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? listViewRequested,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult Function(CreateListParameter aNewList)? insertNewList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult Function(ActiveList list)? deleteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (deleteListItem != null) {
      return deleteListItem(list, listItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ListViewRequested value) listViewRequested,
    required TResult Function(ListViewReceived value) listViewReceived,
    required TResult Function(_InsertNewList value) insertNewList,
    required TResult Function(_InsertNewListIntoExisting value)
        insertNewListIntoExisting,
    required TResult Function(_DeleteListItem value) deleteListItem,
    required TResult Function(_DeleteListItemFromExisting value)
        deleteListItemFromExisting,
    required TResult Function(_DeleteList value) deleteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return deleteListItem(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ListViewRequested value)? listViewRequested,
    TResult Function(ListViewReceived value)? listViewReceived,
    TResult Function(_InsertNewList value)? insertNewList,
    TResult Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult Function(_DeleteListItem value)? deleteListItem,
    TResult Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult Function(_DeleteList value)? deleteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (deleteListItem != null) {
      return deleteListItem(this);
    }
    return orElse();
  }
}

abstract class _DeleteListItem implements OnlinelistsEvent {
  const factory _DeleteListItem(
      {required ActiveList list,
      required ActiveListPosition listItem}) = _$_DeleteListItem;

  ActiveList get list => throw _privateConstructorUsedError;
  ActiveListPosition get listItem => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteListItemCopyWith<_DeleteListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteListItemFromExistingCopyWith<$Res> {
  factory _$DeleteListItemFromExistingCopyWith(
          _DeleteListItemFromExisting value,
          $Res Function(_DeleteListItemFromExisting) then) =
      __$DeleteListItemFromExistingCopyWithImpl<$Res>;
  $Res call(
      {Either<Failure, List<ActiveList>> serverListContend,
      ActiveList list,
      ActiveListPosition listItem});

  $ActiveListCopyWith<$Res> get list;
  $ActiveListPositionCopyWith<$Res> get listItem;
}

/// @nodoc
class __$DeleteListItemFromExistingCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res>
    implements _$DeleteListItemFromExistingCopyWith<$Res> {
  __$DeleteListItemFromExistingCopyWithImpl(_DeleteListItemFromExisting _value,
      $Res Function(_DeleteListItemFromExisting) _then)
      : super(_value, (v) => _then(v as _DeleteListItemFromExisting));

  @override
  _DeleteListItemFromExisting get _value =>
      super._value as _DeleteListItemFromExisting;

  @override
  $Res call({
    Object? serverListContend = freezed,
    Object? list = freezed,
    Object? listItem = freezed,
  }) {
    return _then(_DeleteListItemFromExisting(
      serverListContend: serverListContend == freezed
          ? _value.serverListContend
          : serverListContend // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ActiveList>>,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ActiveList,
      listItem: listItem == freezed
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as ActiveListPosition,
    ));
  }

  @override
  $ActiveListCopyWith<$Res> get list {
    return $ActiveListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }

  @override
  $ActiveListPositionCopyWith<$Res> get listItem {
    return $ActiveListPositionCopyWith<$Res>(_value.listItem, (value) {
      return _then(_value.copyWith(listItem: value));
    });
  }
}

/// @nodoc

class _$_DeleteListItemFromExisting implements _DeleteListItemFromExisting {
  const _$_DeleteListItemFromExisting(
      {required this.serverListContend,
      required this.list,
      required this.listItem});

  @override
  final Either<Failure, List<ActiveList>> serverListContend;
  @override
  final ActiveList list;
  @override
  final ActiveListPosition listItem;

  @override
  String toString() {
    return 'OnlinelistsEvent.deleteListItemFromExisting(serverListContend: $serverListContend, list: $list, listItem: $listItem)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteListItemFromExisting &&
            (identical(other.serverListContend, serverListContend) ||
                const DeepCollectionEquality()
                    .equals(other.serverListContend, serverListContend)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)) &&
            (identical(other.listItem, listItem) ||
                const DeepCollectionEquality()
                    .equals(other.listItem, listItem)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serverListContend) ^
      const DeepCollectionEquality().hash(list) ^
      const DeepCollectionEquality().hash(listItem);

  @JsonKey(ignore: true)
  @override
  _$DeleteListItemFromExistingCopyWith<_DeleteListItemFromExisting>
      get copyWith => __$DeleteListItemFromExistingCopyWithImpl<
          _DeleteListItemFromExisting>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() listViewRequested,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend)
        listViewReceived,
    required TResult Function(CreateListParameter aNewList) insertNewList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)
        insertNewListIntoExisting,
    required TResult Function(ActiveList list, ActiveListPosition listItem)
        deleteListItem,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list,
            ActiveListPosition listItem)
        deleteListItemFromExisting,
    required TResult Function(ActiveList list) deleteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return deleteListItemFromExisting(serverListContend, list, listItem);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? listViewRequested,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult Function(CreateListParameter aNewList)? insertNewList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult Function(ActiveList list)? deleteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (deleteListItemFromExisting != null) {
      return deleteListItemFromExisting(serverListContend, list, listItem);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ListViewRequested value) listViewRequested,
    required TResult Function(ListViewReceived value) listViewReceived,
    required TResult Function(_InsertNewList value) insertNewList,
    required TResult Function(_InsertNewListIntoExisting value)
        insertNewListIntoExisting,
    required TResult Function(_DeleteListItem value) deleteListItem,
    required TResult Function(_DeleteListItemFromExisting value)
        deleteListItemFromExisting,
    required TResult Function(_DeleteList value) deleteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return deleteListItemFromExisting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ListViewRequested value)? listViewRequested,
    TResult Function(ListViewReceived value)? listViewReceived,
    TResult Function(_InsertNewList value)? insertNewList,
    TResult Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult Function(_DeleteListItem value)? deleteListItem,
    TResult Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult Function(_DeleteList value)? deleteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (deleteListItemFromExisting != null) {
      return deleteListItemFromExisting(this);
    }
    return orElse();
  }
}

abstract class _DeleteListItemFromExisting implements OnlinelistsEvent {
  const factory _DeleteListItemFromExisting(
      {required Either<Failure, List<ActiveList>> serverListContend,
      required ActiveList list,
      required ActiveListPosition listItem}) = _$_DeleteListItemFromExisting;

  Either<Failure, List<ActiveList>> get serverListContend =>
      throw _privateConstructorUsedError;
  ActiveList get list => throw _privateConstructorUsedError;
  ActiveListPosition get listItem => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteListItemFromExistingCopyWith<_DeleteListItemFromExisting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteListCopyWith<$Res> {
  factory _$DeleteListCopyWith(
          _DeleteList value, $Res Function(_DeleteList) then) =
      __$DeleteListCopyWithImpl<$Res>;
  $Res call({ActiveList list});

  $ActiveListCopyWith<$Res> get list;
}

/// @nodoc
class __$DeleteListCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res>
    implements _$DeleteListCopyWith<$Res> {
  __$DeleteListCopyWithImpl(
      _DeleteList _value, $Res Function(_DeleteList) _then)
      : super(_value, (v) => _then(v as _DeleteList));

  @override
  _DeleteList get _value => super._value as _DeleteList;

  @override
  $Res call({
    Object? list = freezed,
  }) {
    return _then(_DeleteList(
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ActiveList,
    ));
  }

  @override
  $ActiveListCopyWith<$Res> get list {
    return $ActiveListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }
}

/// @nodoc

class _$_DeleteList implements _DeleteList {
  const _$_DeleteList({required this.list});

  @override
  final ActiveList list;

  @override
  String toString() {
    return 'OnlinelistsEvent.deleteList(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteList &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$DeleteListCopyWith<_DeleteList> get copyWith =>
      __$DeleteListCopyWithImpl<_DeleteList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() listViewRequested,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend)
        listViewReceived,
    required TResult Function(CreateListParameter aNewList) insertNewList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)
        insertNewListIntoExisting,
    required TResult Function(ActiveList list, ActiveListPosition listItem)
        deleteListItem,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list,
            ActiveListPosition listItem)
        deleteListItemFromExisting,
    required TResult Function(ActiveList list) deleteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return deleteList(list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? listViewRequested,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult Function(CreateListParameter aNewList)? insertNewList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult Function(ActiveList list)? deleteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (deleteList != null) {
      return deleteList(list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ListViewRequested value) listViewRequested,
    required TResult Function(ListViewReceived value) listViewReceived,
    required TResult Function(_InsertNewList value) insertNewList,
    required TResult Function(_InsertNewListIntoExisting value)
        insertNewListIntoExisting,
    required TResult Function(_DeleteListItem value) deleteListItem,
    required TResult Function(_DeleteListItemFromExisting value)
        deleteListItemFromExisting,
    required TResult Function(_DeleteList value) deleteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return deleteList(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ListViewRequested value)? listViewRequested,
    TResult Function(ListViewReceived value)? listViewReceived,
    TResult Function(_InsertNewList value)? insertNewList,
    TResult Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult Function(_DeleteListItem value)? deleteListItem,
    TResult Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult Function(_DeleteList value)? deleteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (deleteList != null) {
      return deleteList(this);
    }
    return orElse();
  }
}

abstract class _DeleteList implements OnlinelistsEvent {
  const factory _DeleteList({required ActiveList list}) = _$_DeleteList;

  ActiveList get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteListCopyWith<_DeleteList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DeleteListFromExistingCopyWith<$Res> {
  factory _$DeleteListFromExistingCopyWith(_DeleteListFromExisting value,
          $Res Function(_DeleteListFromExisting) then) =
      __$DeleteListFromExistingCopyWithImpl<$Res>;
  $Res call(
      {Either<Failure, List<ActiveList>> serverListContend, ActiveList list});

  $ActiveListCopyWith<$Res> get list;
}

/// @nodoc
class __$DeleteListFromExistingCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res>
    implements _$DeleteListFromExistingCopyWith<$Res> {
  __$DeleteListFromExistingCopyWithImpl(_DeleteListFromExisting _value,
      $Res Function(_DeleteListFromExisting) _then)
      : super(_value, (v) => _then(v as _DeleteListFromExisting));

  @override
  _DeleteListFromExisting get _value => super._value as _DeleteListFromExisting;

  @override
  $Res call({
    Object? serverListContend = freezed,
    Object? list = freezed,
  }) {
    return _then(_DeleteListFromExisting(
      serverListContend: serverListContend == freezed
          ? _value.serverListContend
          : serverListContend // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ActiveList>>,
      list: list == freezed
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ActiveList,
    ));
  }

  @override
  $ActiveListCopyWith<$Res> get list {
    return $ActiveListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }
}

/// @nodoc

class _$_DeleteListFromExisting implements _DeleteListFromExisting {
  const _$_DeleteListFromExisting(
      {required this.serverListContend, required this.list});

  @override
  final Either<Failure, List<ActiveList>> serverListContend;
  @override
  final ActiveList list;

  @override
  String toString() {
    return 'OnlinelistsEvent.deleteListFromExisting(serverListContend: $serverListContend, list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteListFromExisting &&
            (identical(other.serverListContend, serverListContend) ||
                const DeepCollectionEquality()
                    .equals(other.serverListContend, serverListContend)) &&
            (identical(other.list, list) ||
                const DeepCollectionEquality().equals(other.list, list)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(serverListContend) ^
      const DeepCollectionEquality().hash(list);

  @JsonKey(ignore: true)
  @override
  _$DeleteListFromExistingCopyWith<_DeleteListFromExisting> get copyWith =>
      __$DeleteListFromExistingCopyWithImpl<_DeleteListFromExisting>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() listViewRequested,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend)
        listViewReceived,
    required TResult Function(CreateListParameter aNewList) insertNewList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)
        insertNewListIntoExisting,
    required TResult Function(ActiveList list, ActiveListPosition listItem)
        deleteListItem,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list,
            ActiveListPosition listItem)
        deleteListItemFromExisting,
    required TResult Function(ActiveList list) deleteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return deleteListFromExisting(serverListContend, list);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? listViewRequested,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult Function(CreateListParameter aNewList)? insertNewList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult Function(ActiveList list)? deleteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (deleteListFromExisting != null) {
      return deleteListFromExisting(serverListContend, list);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(ListViewRequested value) listViewRequested,
    required TResult Function(ListViewReceived value) listViewReceived,
    required TResult Function(_InsertNewList value) insertNewList,
    required TResult Function(_InsertNewListIntoExisting value)
        insertNewListIntoExisting,
    required TResult Function(_DeleteListItem value) deleteListItem,
    required TResult Function(_DeleteListItemFromExisting value)
        deleteListItemFromExisting,
    required TResult Function(_DeleteList value) deleteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return deleteListFromExisting(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(ListViewRequested value)? listViewRequested,
    TResult Function(ListViewReceived value)? listViewReceived,
    TResult Function(_InsertNewList value)? insertNewList,
    TResult Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult Function(_DeleteListItem value)? deleteListItem,
    TResult Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult Function(_DeleteList value)? deleteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (deleteListFromExisting != null) {
      return deleteListFromExisting(this);
    }
    return orElse();
  }
}

abstract class _DeleteListFromExisting implements OnlinelistsEvent {
  const factory _DeleteListFromExisting(
      {required Either<Failure, List<ActiveList>> serverListContend,
      required ActiveList list}) = _$_DeleteListFromExisting;

  Either<Failure, List<ActiveList>> get serverListContend =>
      throw _privateConstructorUsedError;
  ActiveList get list => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DeleteListFromExistingCopyWith<_DeleteListFromExisting> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$OnlinelistsStateTearOff {
  const _$OnlinelistsStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  Loading loading() {
    return const Loading();
  }

  Loaded loaded({required List<ActiveList> onlineLists}) {
    return Loaded(
      onlineLists: onlineLists,
    );
  }

  Error error({required Failure failure}) {
    return Error(
      failure: failure,
    );
  }
}

/// @nodoc
const $OnlinelistsState = _$OnlinelistsStateTearOff();

/// @nodoc
mixin _$OnlinelistsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ActiveList> onlineLists) loaded,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ActiveList> onlineLists)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinelistsStateCopyWith<$Res> {
  factory $OnlinelistsStateCopyWith(
          OnlinelistsState value, $Res Function(OnlinelistsState) then) =
      _$OnlinelistsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OnlinelistsStateCopyWithImpl<$Res>
    implements $OnlinelistsStateCopyWith<$Res> {
  _$OnlinelistsStateCopyWithImpl(this._value, this._then);

  final OnlinelistsState _value;
  // ignore: unused_field
  final $Res Function(OnlinelistsState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$OnlinelistsStateCopyWithImpl<$Res>
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
    return 'OnlinelistsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ActiveList> onlineLists) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ActiveList> onlineLists)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OnlinelistsState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$OnlinelistsStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'OnlinelistsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ActiveList> onlineLists) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ActiveList> onlineLists)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements OnlinelistsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  $Res call({List<ActiveList> onlineLists});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$OnlinelistsStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? onlineLists = freezed,
  }) {
    return _then(Loaded(
      onlineLists: onlineLists == freezed
          ? _value.onlineLists
          : onlineLists // ignore: cast_nullable_to_non_nullable
              as List<ActiveList>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded({required this.onlineLists});

  @override
  final List<ActiveList> onlineLists;

  @override
  String toString() {
    return 'OnlinelistsState.loaded(onlineLists: $onlineLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.onlineLists, onlineLists) ||
                const DeepCollectionEquality()
                    .equals(other.onlineLists, onlineLists)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(onlineLists);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ActiveList> onlineLists) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return loaded(onlineLists);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ActiveList> onlineLists)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(onlineLists);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements OnlinelistsState {
  const factory Loaded({required List<ActiveList> onlineLists}) = _$Loaded;

  List<ActiveList> get onlineLists => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$OnlinelistsStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(Error(
      failure: failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  $FailureCopyWith<$Res> get failure {
    return $FailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error({required this.failure});

  @override
  final Failure failure;

  @override
  String toString() {
    return 'OnlinelistsState.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.failure, failure) ||
                const DeepCollectionEquality().equals(other.failure, failure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failure);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ActiveList> onlineLists) loaded,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ActiveList> onlineLists)? loaded,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(Loading value) loading,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(Loading value)? loading,
    TResult Function(Loaded value)? loaded,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements OnlinelistsState {
  const factory Error({required Failure failure}) = _$Error;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
