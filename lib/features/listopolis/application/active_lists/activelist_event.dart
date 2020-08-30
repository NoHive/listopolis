part of 'activelist_bloc.dart';

@freezed
abstract class ActivelistEvent with _$ActivelistEvent {
  const factory ActivelistEvent.load() = _LoadLists;
}