part of 'connectivity_bloc.dart';

@freezed
class ConnectivityEvent with _$ConnectivityEvent {
  const factory ConnectivityEvent.started() = _Started;
  const factory ConnectivityEvent.goOnline() = _GoOnline;
  const factory ConnectivityEvent.goOffline() = _GoOffline;
}