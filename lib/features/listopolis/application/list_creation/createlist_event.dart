part of 'createlist_bloc.dart';

@freezed
abstract class CreatelistEvent with _$CreatelistEvent {
  const factory CreatelistEvent.started() = _Started;
  const factory CreatelistEvent.startListCreation() = _StartListCreation;
  const factory CreatelistEvent.changeList() = _ChangeList;
  const factory CreatelistEvent.addListPositionAfter({@required int index}) = _AddListPositionAfter;
  
}