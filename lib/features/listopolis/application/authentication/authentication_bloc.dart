import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';
part 'authentication_bloc.freezed.dart';

@injectable
class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  final IAuthRepository authRepository;
  AuthenticationBloc(this.authRepository) : super(_Initial());
  
  @override
  Stream<AuthenticationState> mapEventToState(
    AuthenticationEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* { 
          yield AuthenticationState.initial();
      }, 
      signInStarted: (e) async* { 
        
        if(state != AuthenticationState.signedIn()){
          yield AuthenticationState.waitingForService();
          Either<Failure, Unit> authResult = await authRepository.signIn();
          yield authResult.fold(
                (failure) {
                  return AuthenticationState.error(failure: failure);
                }, 
                (r) {
                   return AuthenticationState.signedIn();
                },
          );
        }else{
          yield AuthenticationState.signedIn();
        }
      }, 
      requestedSignInStatus: (e) async* { 
        Either<Failure, bool> authInfo = await authRepository.isSignedIn();
        yield authInfo.fold(
          (failure) => AuthenticationState.error(failure: failure), 
          (isSignedIn) => isSignedIn ? AuthenticationState.signedIn() : AuthenticationState.signedOut()
        );
      },
      signOutStarted: (e) async* { 
           if(state != AuthenticationState.signedOut()){
              yield AuthenticationState.waitingForService();
              Either<Failure, Unit> authResult = await authRepository.signOut();
              yield authResult.fold(
                (failure) {
                  return AuthenticationState.error(failure: failure);
                }, 
                (r) {
                   return AuthenticationState.signedOut();
                },
              );
        }else{
          yield AuthenticationState.signedOut();
        }
      }, 
    );
  }
   @override
  Future<void> close() async {
    // TODO: implement close
    await authRepository.signOut();
    return super.close();

  }
}
