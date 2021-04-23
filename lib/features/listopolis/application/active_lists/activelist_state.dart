part of 'activelist_bloc.dart';

@freezed
abstract class ActivelistState with _$ActivelistState {
  const factory ActivelistState.initial() = _Initial;
  const factory ActivelistState.loading() = _Loading;
  const factory ActivelistState.loaded({@Default([]) List<ActiveList> userLists}) = _Loaded;
  const factory ActivelistState.listOrderChanged({@Default([]) List<ActiveList> userLists}) = _ListOrderChanged;
  const factory ActivelistState.error({required Failure failure}) = _Error;
}
