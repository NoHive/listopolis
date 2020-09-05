part of 'activelist_bloc.dart';

@freezed
abstract class ActivelistEvent with _$ActivelistEvent {
  const factory ActivelistEvent.load() = _LoadLists;
  const factory ActivelistEvent.deleteActiveListPosition({@required ActiveList list, @required ActiveListPosition position }) = _DeleteActiveListPosition;
}