part of 'activelist_bloc.dart';

@freezed
abstract class ActivelistEvent with _$ActivelistEvent {
  const factory ActivelistEvent.load() = _LoadLists;
  const factory ActivelistEvent.loadForReorder() = _LoadForReorder;
  const factory ActivelistEvent.insertNewList({required CreateListParameter listParameter}) = _InsertNewList;
  const factory ActivelistEvent.deleteActiveListPosition({ required ActiveList list, required ActiveListPosition position }) = _DeleteActiveListPosition;
  const factory ActivelistEvent.deleteActiveList({ required ActiveList list}) = _DeleteActiveList;
  const factory ActivelistEvent.replaceActiveList({ required CreateListParameter listParameter, required ActiveList list}) = _ReplaceActiveList;
  const factory ActivelistEvent.backupData() = _BackupData;
  const factory ActivelistEvent.loadDataFromBackup() = _LoadDataFromBackup;
  const factory ActivelistEvent.useListAsTemplate({ required ActiveList list}) = _UseListAsTemplate;
  const factory ActivelistEvent.changeListPosition({ required ActiveList list, required int oldIndex, required int newIndex}) = _ChangeListPosition;
  const factory ActivelistEvent.copyListToClipBoard({ required ActiveList list}) = _CopyListToClipBoard;
  const factory ActivelistEvent.createListFromClipBoard() = _CreateListFromClipBoard;
}