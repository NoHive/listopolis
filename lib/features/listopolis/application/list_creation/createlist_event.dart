part of 'createlist_bloc.dart';

@freezed
abstract class CreatelistEvent with _$CreatelistEvent {
  const factory CreatelistEvent.started() = _Started;
  const factory CreatelistEvent.startListCreation() = _StartListCreation;
  const factory CreatelistEvent.createNewList({@required CreateListParameter listInfo}) = _CreateList;
  const factory CreatelistEvent.createNewListPosition({@required CreateListItemParameter listPos}) = _CreateListItem;
}