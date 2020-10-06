part of 'activelist_bloc.dart';

@freezed
abstract class ActivelistEvent with _$ActivelistEvent {
  const factory ActivelistEvent.load() = _LoadLists;
  const factory ActivelistEvent.insertNewList({@required CreateListParameter listParameter}) = _InsertNewList;
  const factory ActivelistEvent.deleteActiveListPosition({@required ActiveList list, @required ActiveListPosition position }) = _DeleteActiveListPosition;
  const factory ActivelistEvent.deleteActiveList({@required ActiveList list}) = _DeleteActiveList;
  const factory ActivelistEvent.replaceActiveList({@required CreateListParameter listParameter, @required ActiveList list}) = _ReplaceActiveList;
  const factory ActivelistEvent.backupData() = _BackupData;
  const factory ActivelistEvent.loadDataFromBackup() = _LoadDataFromBackup;
}