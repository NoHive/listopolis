part of 'createlist_bloc.dart';

@freezed
abstract class CreatelistState with _$CreatelistState {
  const factory CreatelistState.initial() = _Initial;
  const factory CreatelistState.listCreationValueChanged({@required CreateListParameter creationParam}) = _ListCreationValueChanged;
  const factory CreatelistState.listItemCreationValueChanged({@required CreateListItemParameter creationParam}) = _ListItemCreationValueChanged;
}
