part of 'createlist_bloc.dart';

@freezed
abstract class CreatelistEvent with _$CreatelistEvent {
  const factory CreatelistEvent.started() = _Started;
  const factory CreatelistEvent.startListCreation() = _StartListCreation;
  const factory CreatelistEvent.startTemplateCreation() = _StartTemplateCreation;
  const factory CreatelistEvent.changeList({required CreateListParameter listParam}) = _ChangeList;
  const factory CreatelistEvent.switchViewToCreation({required CreateListParameter listParam}) = _SwitchToCreation;
  const factory CreatelistEvent.switchViewToReorder({required CreateListParameter listParam}) = _SwitchToReorder;
  const factory CreatelistEvent.addListPositionAfter({required CreateListParameter listParam, @Default(1) int index}) = _AddListPositionAfter;
  const factory CreatelistEvent.removeListPosition({required CreateListParameter listParam, @Default(1) int index}) = _RemoveListPosition;
  const factory CreatelistEvent.changeListItemOrder({required CreateListParameter listParam, @Default(1) int oldIndex, @Default(1) int newIndex}) = _ChangeItemOrder;
  const factory CreatelistEvent.editActiveList({required ActiveList list}) = _EditActiveList;
  const factory CreatelistEvent.editTemplate({required ListTemplate template}) = _EditTemplate;
  const factory CreatelistEvent.useTemplateAsList({required ListTemplate template}) = _UseTemplateAsList;
  
}