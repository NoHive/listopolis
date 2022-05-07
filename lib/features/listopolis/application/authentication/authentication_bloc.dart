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
  AuthenticationBloc(this.authRepository) : super(_Initial()){
    on<_Started>((event, emit) => emit(AuthenticationState.initial()));
    on<_SignInStarted>((event, emit) => _emitSignInStarted(event, emit));
    on<_RequestedSignInStatus>((event, emit) => _emitRequestSignInStatus(event, emit));
    on<_SignOutStarted>((event, emit) => _emitSignedOutStatus(event, emit));
  }

  _emitSignedOutStatus(_SignOutStarted e, Emitter<AuthenticationState> emit) async{
      if(state != AuthenticationState.signedOut()){
          emit( AuthenticationState.waitingForService());
          Either<Failure, Unit> authResult = await authRepository.signOut();
          emit( authResult.fold(
            (failure) {
              return AuthenticationState.error(failure: failure);
            }, 
            (r) {
                return AuthenticationState.signedOut();
            },
          )
          );
      }else{
        emit(AuthenticationState.signedOut());
      }
  }

  _emitRequestSignInStatus(_RequestedSignInStatus e, Emitter<AuthenticationState> emit) async{
     Either<Failure, bool> authInfo = await authRepository.isSignedIn();
      // yield authInfo.fold(
      //   (failure) => AuthenticationState.error(failure: failure), 
      //   (isSignedIn) => isSignedIn ? AuthenticationState.signedIn() : AuthenticationState.signedOut()
      // );
       emit( authInfo.fold(
          (failure) => AuthenticationState.error(failure: failure), 
          (isSignedIn) => isSignedIn ? AuthenticationState.signedIn() : AuthenticationState.signedOut()
        )
       );
  }

  _emitSignInStarted(_SignInStarted e, Emitter<AuthenticationState> emit) async{
      if(state != AuthenticationState.signedIn()){
          emit( AuthenticationState.waitingForService());
          Either<Failure, Unit> authResult = await authRepository.signIn();
          emit( authResult.fold(
                  (failure) {
                    return AuthenticationState.error(failure: failure);
                  }, 
                  (r) {
                    return AuthenticationState.signedIn();
                  },
                )
          );
      }else{
          emit(AuthenticationState.signedIn());
      }
  }
  
  
   @override
  Future<void> close() async {
    // TODO: implement close
    await authRepository.signOut();
    return super.close();

  }
}
