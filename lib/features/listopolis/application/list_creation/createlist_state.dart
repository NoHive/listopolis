part of 'createlist_bloc.dart';

@freezed
abstract class CreatelistState with _$CreatelistState {
  const factory CreatelistState.initial() = _Initial;
  const factory CreatelistState.listChanged({required CreateListParameter creationParam}) = _ListChanged;
  const factory CreatelistState.switchedToCreate({required CreateListParameter creationParam}) = _SwitchedToCreate;
  const factory CreatelistState.switchedToReorder({required CreateListParameter creationParam}) = _SwitchedToReorder;
  
}
