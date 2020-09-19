part of 'createlist_bloc.dart';

@freezed
abstract class CreatelistState with _$CreatelistState {
  const factory CreatelistState.initial() = _Initial;
  const factory CreatelistState.listUpdated({@required ActiveList list}) = _ListUpdated;
}
