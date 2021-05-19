part of 'onlinelists_bloc.dart';

@freezed
class OnlinelistsEvent with _$OnlinelistsEvent {
  const factory OnlinelistsEvent.started() = _Started;
  const factory OnlinelistsEvent.listViewRequested() = ListViewRequested;
  const factory OnlinelistsEvent.listViewReceived({required Either<Failure, List<ActiveList>> serverListContend}) = ListViewReceived;
  const factory OnlinelistsEvent.insertNewList({required CreateListParameter aNewList}) = _InsertNewList;
  const factory OnlinelistsEvent.insertNewListIntoExisting({required Either<Failure, List<ActiveList>> serverListContend, required CreateListParameter aNewList}) = _InsertNewListIntoExisting;
  const factory OnlinelistsEvent.deleteListItem({required ActiveList list, required ActiveListPosition listItem}) = _DeleteListItem;
  const factory OnlinelistsEvent.deleteListItemFromExisting({required Either<Failure, List<ActiveList>> serverListContend, required ActiveList list, required ActiveListPosition listItem}) = _DeleteListItemFromExisting;
  const factory OnlinelistsEvent.deleteListFromExisting({required Either<Failure, List<ActiveList>> serverListContend, required ActiveList list}) = _DeleteListFromExisting;

}