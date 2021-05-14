part of 'onlinelists_bloc.dart';

@freezed
class OnlinelistsState with _$OnlinelistsState {
  const factory OnlinelistsState.initial() = _Initial;
  const factory OnlinelistsState.loading() = Loading;
  const factory OnlinelistsState.loaded({required List<ActiveList> onlineLists}) = Loaded;
  const factory OnlinelistsState.error({required Failure failure}) = Error;
}
