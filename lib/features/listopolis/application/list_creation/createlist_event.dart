part of 'createlist_bloc.dart';

@freezed
abstract class CreatelistEvent with _$CreatelistEvent {
  const factory CreatelistEvent.started() = _Started;
  const factory CreatelistEvent.startListCreation() = _StartListCreation;
  const factory CreatelistEvent.changeList() = _ChangeList;
  const factory CreatelistEvent.switchViewToCreation() = _SwitchToCreation;
  const factory CreatelistEvent.switchViewToReorder() = _SwitchToReorder;
  const factory CreatelistEvent.addListPositionAfter({@required int index}) = _AddListPositionAfter;
  const factory CreatelistEvent.removeListPosition({@required int index}) = _RemoveListPosition;
  const factory CreatelistEvent.changeListItemOrder({@required int oldIndex, @required int newIndex}) = _ChangeItemOrder;
  
}