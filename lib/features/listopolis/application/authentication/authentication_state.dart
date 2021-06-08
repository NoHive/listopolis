part of 'authentication_bloc.dart';

@freezed
class AuthenticationState with _$AuthenticationState {
  const factory AuthenticationState.initial() = _Initial;
  const factory AuthenticationState.waitingForService() = _WaitingForService;
  const factory AuthenticationState.error({required Failure failure}) = _Error;
  const factory AuthenticationState.signedIn() = _SignedIn;
  const factory AuthenticationState.signedOut() = _SignedOut;

}
