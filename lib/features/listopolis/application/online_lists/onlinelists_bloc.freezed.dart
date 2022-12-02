// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onlinelists_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
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
    TResult Function(_OverwriteList value)? overwriteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnlinelistsEventCopyWith<$Res> {
  factory $OnlinelistsEventCopyWith(
          OnlinelistsEvent value, $Res Function(OnlinelistsEvent) then) =
      _$OnlinelistsEventCopyWithImpl<$Res, OnlinelistsEvent>;
}

/// @nodoc
class _$OnlinelistsEventCopyWithImpl<$Res, $Val extends OnlinelistsEvent>
    implements $OnlinelistsEventCopyWith<$Res> {
  _$OnlinelistsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
  }) {
    return started?.call();
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
  }) {
    return started?.call(this);
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
    TResult Function(_OverwriteList value)? overwriteList,
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
abstract class _$$ListViewRequestedCopyWith<$Res> {
  factory _$$ListViewRequestedCopyWith(
          _$ListViewRequested value, $Res Function(_$ListViewRequested) then) =
      __$$ListViewRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ListViewRequestedCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res, _$ListViewRequested>
    implements _$$ListViewRequestedCopyWith<$Res> {
  __$$ListViewRequestedCopyWithImpl(
      _$ListViewRequested _value, $Res Function(_$ListViewRequested) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ListViewRequested);
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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return listViewRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
  }) {
    return listViewRequested?.call();
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return listViewRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
  }) {
    return listViewRequested?.call(this);
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
    TResult Function(_OverwriteList value)? overwriteList,
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
abstract class _$$ListViewReceivedCopyWith<$Res> {
  factory _$$ListViewReceivedCopyWith(
          _$ListViewReceived value, $Res Function(_$ListViewReceived) then) =
      __$$ListViewReceivedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<Failure, List<ActiveList>> serverListContend});
}

/// @nodoc
class __$$ListViewReceivedCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res, _$ListViewReceived>
    implements _$$ListViewReceivedCopyWith<$Res> {
  __$$ListViewReceivedCopyWithImpl(
      _$ListViewReceived _value, $Res Function(_$ListViewReceived) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverListContend = null,
  }) {
    return _then(_$ListViewReceived(
      serverListContend: null == serverListContend
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
        (other.runtimeType == runtimeType &&
            other is _$ListViewReceived &&
            (identical(other.serverListContend, serverListContend) ||
                other.serverListContend == serverListContend));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serverListContend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListViewReceivedCopyWith<_$ListViewReceived> get copyWith =>
      __$$ListViewReceivedCopyWithImpl<_$ListViewReceived>(this, _$identity);

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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return listViewReceived(serverListContend);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
  }) {
    return listViewReceived?.call(serverListContend);
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return listViewReceived(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
  }) {
    return listViewReceived?.call(this);
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
    TResult Function(_OverwriteList value)? overwriteList,
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
      {required final Either<Failure, List<ActiveList>>
          serverListContend}) = _$ListViewReceived;

  Either<Failure, List<ActiveList>> get serverListContend;
  @JsonKey(ignore: true)
  _$$ListViewReceivedCopyWith<_$ListViewReceived> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InsertNewListCopyWith<$Res> {
  factory _$$_InsertNewListCopyWith(
          _$_InsertNewList value, $Res Function(_$_InsertNewList) then) =
      __$$_InsertNewListCopyWithImpl<$Res>;
  @useResult
  $Res call({CreateListParameter aNewList});
}

/// @nodoc
class __$$_InsertNewListCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res, _$_InsertNewList>
    implements _$$_InsertNewListCopyWith<$Res> {
  __$$_InsertNewListCopyWithImpl(
      _$_InsertNewList _value, $Res Function(_$_InsertNewList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? aNewList = null,
  }) {
    return _then(_$_InsertNewList(
      aNewList: null == aNewList
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
        (other.runtimeType == runtimeType &&
            other is _$_InsertNewList &&
            (identical(other.aNewList, aNewList) ||
                other.aNewList == aNewList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, aNewList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertNewListCopyWith<_$_InsertNewList> get copyWith =>
      __$$_InsertNewListCopyWithImpl<_$_InsertNewList>(this, _$identity);

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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return insertNewList(aNewList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
  }) {
    return insertNewList?.call(aNewList);
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return insertNewList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
  }) {
    return insertNewList?.call(this);
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
    TResult Function(_OverwriteList value)? overwriteList,
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
  const factory _InsertNewList({required final CreateListParameter aNewList}) =
      _$_InsertNewList;

  CreateListParameter get aNewList;
  @JsonKey(ignore: true)
  _$$_InsertNewListCopyWith<_$_InsertNewList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InsertNewListIntoExistingCopyWith<$Res> {
  factory _$$_InsertNewListIntoExistingCopyWith(
          _$_InsertNewListIntoExisting value,
          $Res Function(_$_InsertNewListIntoExisting) then) =
      __$$_InsertNewListIntoExistingCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<Failure, List<ActiveList>> serverListContend,
      CreateListParameter aNewList});
}

/// @nodoc
class __$$_InsertNewListIntoExistingCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res, _$_InsertNewListIntoExisting>
    implements _$$_InsertNewListIntoExistingCopyWith<$Res> {
  __$$_InsertNewListIntoExistingCopyWithImpl(
      _$_InsertNewListIntoExisting _value,
      $Res Function(_$_InsertNewListIntoExisting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverListContend = null,
    Object? aNewList = null,
  }) {
    return _then(_$_InsertNewListIntoExisting(
      serverListContend: null == serverListContend
          ? _value.serverListContend
          : serverListContend // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ActiveList>>,
      aNewList: null == aNewList
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
        (other.runtimeType == runtimeType &&
            other is _$_InsertNewListIntoExisting &&
            (identical(other.serverListContend, serverListContend) ||
                other.serverListContend == serverListContend) &&
            (identical(other.aNewList, aNewList) ||
                other.aNewList == aNewList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serverListContend, aNewList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InsertNewListIntoExistingCopyWith<_$_InsertNewListIntoExisting>
      get copyWith => __$$_InsertNewListIntoExistingCopyWithImpl<
          _$_InsertNewListIntoExisting>(this, _$identity);

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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return insertNewListIntoExisting(serverListContend, aNewList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
  }) {
    return insertNewListIntoExisting?.call(serverListContend, aNewList);
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return insertNewListIntoExisting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
  }) {
    return insertNewListIntoExisting?.call(this);
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
    TResult Function(_OverwriteList value)? overwriteList,
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
          {required final Either<Failure, List<ActiveList>> serverListContend,
          required final CreateListParameter aNewList}) =
      _$_InsertNewListIntoExisting;

  Either<Failure, List<ActiveList>> get serverListContend;
  CreateListParameter get aNewList;
  @JsonKey(ignore: true)
  _$$_InsertNewListIntoExistingCopyWith<_$_InsertNewListIntoExisting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteListItemCopyWith<$Res> {
  factory _$$_DeleteListItemCopyWith(
          _$_DeleteListItem value, $Res Function(_$_DeleteListItem) then) =
      __$$_DeleteListItemCopyWithImpl<$Res>;
  @useResult
  $Res call({ActiveList list, ActiveListPosition listItem});

  $ActiveListCopyWith<$Res> get list;
  $ActiveListPositionCopyWith<$Res> get listItem;
}

/// @nodoc
class __$$_DeleteListItemCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res, _$_DeleteListItem>
    implements _$$_DeleteListItemCopyWith<$Res> {
  __$$_DeleteListItemCopyWithImpl(
      _$_DeleteListItem _value, $Res Function(_$_DeleteListItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? listItem = null,
  }) {
    return _then(_$_DeleteListItem(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ActiveList,
      listItem: null == listItem
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as ActiveListPosition,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActiveListCopyWith<$Res> get list {
    return $ActiveListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$_DeleteListItem &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.listItem, listItem) ||
                other.listItem == listItem));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, listItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteListItemCopyWith<_$_DeleteListItem> get copyWith =>
      __$$_DeleteListItemCopyWithImpl<_$_DeleteListItem>(this, _$identity);

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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return deleteListItem(list, listItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
  }) {
    return deleteListItem?.call(list, listItem);
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return deleteListItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
  }) {
    return deleteListItem?.call(this);
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
    TResult Function(_OverwriteList value)? overwriteList,
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
      {required final ActiveList list,
      required final ActiveListPosition listItem}) = _$_DeleteListItem;

  ActiveList get list;
  ActiveListPosition get listItem;
  @JsonKey(ignore: true)
  _$$_DeleteListItemCopyWith<_$_DeleteListItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteListItemFromExistingCopyWith<$Res> {
  factory _$$_DeleteListItemFromExistingCopyWith(
          _$_DeleteListItemFromExisting value,
          $Res Function(_$_DeleteListItemFromExisting) then) =
      __$$_DeleteListItemFromExistingCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<Failure, List<ActiveList>> serverListContend,
      ActiveList list,
      ActiveListPosition listItem});

  $ActiveListCopyWith<$Res> get list;
  $ActiveListPositionCopyWith<$Res> get listItem;
}

/// @nodoc
class __$$_DeleteListItemFromExistingCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res, _$_DeleteListItemFromExisting>
    implements _$$_DeleteListItemFromExistingCopyWith<$Res> {
  __$$_DeleteListItemFromExistingCopyWithImpl(
      _$_DeleteListItemFromExisting _value,
      $Res Function(_$_DeleteListItemFromExisting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverListContend = null,
    Object? list = null,
    Object? listItem = null,
  }) {
    return _then(_$_DeleteListItemFromExisting(
      serverListContend: null == serverListContend
          ? _value.serverListContend
          : serverListContend // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ActiveList>>,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ActiveList,
      listItem: null == listItem
          ? _value.listItem
          : listItem // ignore: cast_nullable_to_non_nullable
              as ActiveListPosition,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActiveListCopyWith<$Res> get list {
    return $ActiveListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$_DeleteListItemFromExisting &&
            (identical(other.serverListContend, serverListContend) ||
                other.serverListContend == serverListContend) &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.listItem, listItem) ||
                other.listItem == listItem));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, serverListContend, list, listItem);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteListItemFromExistingCopyWith<_$_DeleteListItemFromExisting>
      get copyWith => __$$_DeleteListItemFromExistingCopyWithImpl<
          _$_DeleteListItemFromExisting>(this, _$identity);

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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return deleteListItemFromExisting(serverListContend, list, listItem);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
  }) {
    return deleteListItemFromExisting?.call(serverListContend, list, listItem);
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return deleteListItemFromExisting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
  }) {
    return deleteListItemFromExisting?.call(this);
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
    TResult Function(_OverwriteList value)? overwriteList,
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
          {required final Either<Failure, List<ActiveList>> serverListContend,
          required final ActiveList list,
          required final ActiveListPosition listItem}) =
      _$_DeleteListItemFromExisting;

  Either<Failure, List<ActiveList>> get serverListContend;
  ActiveList get list;
  ActiveListPosition get listItem;
  @JsonKey(ignore: true)
  _$$_DeleteListItemFromExistingCopyWith<_$_DeleteListItemFromExisting>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteListCopyWith<$Res> {
  factory _$$_DeleteListCopyWith(
          _$_DeleteList value, $Res Function(_$_DeleteList) then) =
      __$$_DeleteListCopyWithImpl<$Res>;
  @useResult
  $Res call({ActiveList list});

  $ActiveListCopyWith<$Res> get list;
}

/// @nodoc
class __$$_DeleteListCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res, _$_DeleteList>
    implements _$$_DeleteListCopyWith<$Res> {
  __$$_DeleteListCopyWithImpl(
      _$_DeleteList _value, $Res Function(_$_DeleteList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
  }) {
    return _then(_$_DeleteList(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ActiveList,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$_DeleteList &&
            (identical(other.list, list) || other.list == list));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteListCopyWith<_$_DeleteList> get copyWith =>
      __$$_DeleteListCopyWithImpl<_$_DeleteList>(this, _$identity);

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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return deleteList(list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
  }) {
    return deleteList?.call(list);
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return deleteList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
  }) {
    return deleteList?.call(this);
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
    TResult Function(_OverwriteList value)? overwriteList,
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
  const factory _DeleteList({required final ActiveList list}) = _$_DeleteList;

  ActiveList get list;
  @JsonKey(ignore: true)
  _$$_DeleteListCopyWith<_$_DeleteList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_OverwriteListCopyWith<$Res> {
  factory _$$_OverwriteListCopyWith(
          _$_OverwriteList value, $Res Function(_$_OverwriteList) then) =
      __$$_OverwriteListCopyWithImpl<$Res>;
  @useResult
  $Res call({ActiveList list, CreateListParameter changedList});

  $ActiveListCopyWith<$Res> get list;
}

/// @nodoc
class __$$_OverwriteListCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res, _$_OverwriteList>
    implements _$$_OverwriteListCopyWith<$Res> {
  __$$_OverwriteListCopyWithImpl(
      _$_OverwriteList _value, $Res Function(_$_OverwriteList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? list = null,
    Object? changedList = null,
  }) {
    return _then(_$_OverwriteList(
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ActiveList,
      changedList: null == changedList
          ? _value.changedList
          : changedList // ignore: cast_nullable_to_non_nullable
              as CreateListParameter,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ActiveListCopyWith<$Res> get list {
    return $ActiveListCopyWith<$Res>(_value.list, (value) {
      return _then(_value.copyWith(list: value));
    });
  }
}

/// @nodoc

class _$_OverwriteList implements _OverwriteList {
  const _$_OverwriteList({required this.list, required this.changedList});

  @override
  final ActiveList list;
  @override
  final CreateListParameter changedList;

  @override
  String toString() {
    return 'OnlinelistsEvent.overwriteList(list: $list, changedList: $changedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OverwriteList &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.changedList, changedList) ||
                other.changedList == changedList));
  }

  @override
  int get hashCode => Object.hash(runtimeType, list, changedList);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OverwriteListCopyWith<_$_OverwriteList> get copyWith =>
      __$$_OverwriteListCopyWithImpl<_$_OverwriteList>(this, _$identity);

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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return overwriteList(list, changedList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
  }) {
    return overwriteList?.call(list, changedList);
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (overwriteList != null) {
      return overwriteList(list, changedList);
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return overwriteList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
  }) {
    return overwriteList?.call(this);
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
    TResult Function(_OverwriteList value)? overwriteList,
    TResult Function(_DeleteListFromExisting value)? deleteListFromExisting,
    required TResult orElse(),
  }) {
    if (overwriteList != null) {
      return overwriteList(this);
    }
    return orElse();
  }
}

abstract class _OverwriteList implements OnlinelistsEvent {
  const factory _OverwriteList(
      {required final ActiveList list,
      required final CreateListParameter changedList}) = _$_OverwriteList;

  ActiveList get list;
  CreateListParameter get changedList;
  @JsonKey(ignore: true)
  _$$_OverwriteListCopyWith<_$_OverwriteList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteListFromExistingCopyWith<$Res> {
  factory _$$_DeleteListFromExistingCopyWith(_$_DeleteListFromExisting value,
          $Res Function(_$_DeleteListFromExisting) then) =
      __$$_DeleteListFromExistingCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {Either<Failure, List<ActiveList>> serverListContend, ActiveList list});

  $ActiveListCopyWith<$Res> get list;
}

/// @nodoc
class __$$_DeleteListFromExistingCopyWithImpl<$Res>
    extends _$OnlinelistsEventCopyWithImpl<$Res, _$_DeleteListFromExisting>
    implements _$$_DeleteListFromExistingCopyWith<$Res> {
  __$$_DeleteListFromExistingCopyWithImpl(_$_DeleteListFromExisting _value,
      $Res Function(_$_DeleteListFromExisting) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? serverListContend = null,
    Object? list = null,
  }) {
    return _then(_$_DeleteListFromExisting(
      serverListContend: null == serverListContend
          ? _value.serverListContend
          : serverListContend // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<ActiveList>>,
      list: null == list
          ? _value.list
          : list // ignore: cast_nullable_to_non_nullable
              as ActiveList,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$_DeleteListFromExisting &&
            (identical(other.serverListContend, serverListContend) ||
                other.serverListContend == serverListContend) &&
            (identical(other.list, list) || other.list == list));
  }

  @override
  int get hashCode => Object.hash(runtimeType, serverListContend, list);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteListFromExistingCopyWith<_$_DeleteListFromExisting> get copyWith =>
      __$$_DeleteListFromExistingCopyWithImpl<_$_DeleteListFromExisting>(
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
    required TResult Function(ActiveList list, CreateListParameter changedList)
        overwriteList,
    required TResult Function(
            Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)
        deleteListFromExisting,
  }) {
    return deleteListFromExisting(serverListContend, list);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? listViewRequested,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend)?
        listViewReceived,
    TResult? Function(CreateListParameter aNewList)? insertNewList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            CreateListParameter aNewList)?
        insertNewListIntoExisting,
    TResult? Function(ActiveList list, ActiveListPosition listItem)?
        deleteListItem,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list, ActiveListPosition listItem)?
        deleteListItemFromExisting,
    TResult? Function(ActiveList list)? deleteList,
    TResult? Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
    TResult? Function(Either<Failure, List<ActiveList>> serverListContend,
            ActiveList list)?
        deleteListFromExisting,
  }) {
    return deleteListFromExisting?.call(serverListContend, list);
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
    TResult Function(ActiveList list, CreateListParameter changedList)?
        overwriteList,
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
    required TResult Function(_OverwriteList value) overwriteList,
    required TResult Function(_DeleteListFromExisting value)
        deleteListFromExisting,
  }) {
    return deleteListFromExisting(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(ListViewRequested value)? listViewRequested,
    TResult? Function(ListViewReceived value)? listViewReceived,
    TResult? Function(_InsertNewList value)? insertNewList,
    TResult? Function(_InsertNewListIntoExisting value)?
        insertNewListIntoExisting,
    TResult? Function(_DeleteListItem value)? deleteListItem,
    TResult? Function(_DeleteListItemFromExisting value)?
        deleteListItemFromExisting,
    TResult? Function(_DeleteList value)? deleteList,
    TResult? Function(_OverwriteList value)? overwriteList,
    TResult? Function(_DeleteListFromExisting value)? deleteListFromExisting,
  }) {
    return deleteListFromExisting?.call(this);
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
    TResult Function(_OverwriteList value)? overwriteList,
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
      {required final Either<Failure, List<ActiveList>> serverListContend,
      required final ActiveList list}) = _$_DeleteListFromExisting;

  Either<Failure, List<ActiveList>> get serverListContend;
  ActiveList get list;
  @JsonKey(ignore: true)
  _$$_DeleteListFromExistingCopyWith<_$_DeleteListFromExisting> get copyWith =>
      throw _privateConstructorUsedError;
}

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ActiveList> onlineLists)? loaded,
    TResult? Function(Failure failure)? error,
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
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
      _$OnlinelistsStateCopyWithImpl<$Res, OnlinelistsState>;
}

/// @nodoc
class _$OnlinelistsStateCopyWithImpl<$Res, $Val extends OnlinelistsState>
    implements $OnlinelistsStateCopyWith<$Res> {
  _$OnlinelistsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$OnlinelistsStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ActiveList> onlineLists)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return initial?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return initial?.call(this);
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
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res>
    extends _$OnlinelistsStateCopyWithImpl<$Res, _$Loading>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, _then);
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
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ActiveList> onlineLists)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loading?.call();
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loading?.call(this);
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
abstract class _$$LoadedCopyWith<$Res> {
  factory _$$LoadedCopyWith(_$Loaded value, $Res Function(_$Loaded) then) =
      __$$LoadedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ActiveList> onlineLists});
}

/// @nodoc
class __$$LoadedCopyWithImpl<$Res>
    extends _$OnlinelistsStateCopyWithImpl<$Res, _$Loaded>
    implements _$$LoadedCopyWith<$Res> {
  __$$LoadedCopyWithImpl(_$Loaded _value, $Res Function(_$Loaded) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onlineLists = null,
  }) {
    return _then(_$Loaded(
      onlineLists: null == onlineLists
          ? _value._onlineLists
          : onlineLists // ignore: cast_nullable_to_non_nullable
              as List<ActiveList>,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded({required final List<ActiveList> onlineLists})
      : _onlineLists = onlineLists;

  final List<ActiveList> _onlineLists;
  @override
  List<ActiveList> get onlineLists {
    if (_onlineLists is EqualUnmodifiableListView) return _onlineLists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_onlineLists);
  }

  @override
  String toString() {
    return 'OnlinelistsState.loaded(onlineLists: $onlineLists)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Loaded &&
            const DeepCollectionEquality()
                .equals(other._onlineLists, _onlineLists));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_onlineLists));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      __$$LoadedCopyWithImpl<_$Loaded>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ActiveList> onlineLists)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return loaded?.call(onlineLists);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return loaded?.call(this);
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
  const factory Loaded({required final List<ActiveList> onlineLists}) =
      _$Loaded;

  List<ActiveList> get onlineLists;
  @JsonKey(ignore: true)
  _$$LoadedCopyWith<_$Loaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<$Res> {
  factory _$$ErrorCopyWith(_$Error value, $Res Function(_$Error) then) =
      __$$ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});

  $FailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$ErrorCopyWithImpl<$Res>
    extends _$OnlinelistsStateCopyWithImpl<$Res, _$Error>
    implements _$$ErrorCopyWith<$Res> {
  __$$ErrorCopyWithImpl(_$Error _value, $Res Function(_$Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$Error(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
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
        (other.runtimeType == runtimeType &&
            other is _$Error &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<_$Error> get copyWith =>
      __$$ErrorCopyWithImpl<_$Error>(this, _$identity);

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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ActiveList> onlineLists)? loaded,
    TResult? Function(Failure failure)? error,
  }) {
    return error?.call(failure);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(Loading value)? loading,
    TResult? Function(Loaded value)? loaded,
    TResult? Function(Error value)? error,
  }) {
    return error?.call(this);
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
  const factory Error({required final Failure failure}) = _$Error;

  Failure get failure;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<_$Error> get copyWith => throw _privateConstructorUsedError;
}
