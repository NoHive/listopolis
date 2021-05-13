part of 'onlinelists_bloc.dart';

@freezed
class OnlinelistsEvent with _$OnlinelistsEvent {
  const factory OnlinelistsEvent.started() = _Started;
  const factory OnlinelistsEvent.listViewRequested() = ListViewRequested;
  const factory OnlinelistsEvent.listViewReceived({required Either<Failure, List<ActiveList>> serverListContend}) = ListViewReceived;
}