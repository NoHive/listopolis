import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

@LazySingleton(as:IAuthRepository)
class FirebaseAuthRespository implements IAuthRepository{
  final GoogleSignIn gSignIn;
  final FirebaseAuth firebaseAuth;

  GoogleSignInAccount? googleUser;

  FirebaseAuthRespository(this.gSignIn, this.firebaseAuth);
  @override
  Future<Either<Failure, Unit>> signIn() async{
    
    try{
      if(! await gSignIn.isSignedIn()){
          googleUser = await gSignIn.signIn();
          
          
            GoogleSignInAuthentication gSignAuth = await googleUser!.authentication;
            UserCredential cred = await firebaseAuth.signInWithCredential(
              GoogleAuthProvider.credential(idToken: gSignAuth.idToken,
                                            accessToken: gSignAuth.accessToken
              )
            );
            
          print('Loged in User ${cred.user?.uid}');
          return right(unit);
      }else
        return right(unit);
    }catch(e){
      return left(Failure.userAuthentificationFailed());
    }
  }

  @override
  Future<Either<Failure, Unit>> signOut() async{
     try{
      if( await gSignIn.isSignedIn()){
          await gSignIn.disconnect();
          await firebaseAuth.signOut();
          //googleUser = await gSignIn.signOut();
          return right(unit);
      }else
        return right(unit);
    }catch(e){
      return left(Failure.userAuthentificationFailed());
    }
  }

  @override
  Future<Either<Failure, bool>> isSignedIn() async{
   try{
     User? uOption = firebaseAuth.currentUser;
      if( await gSignIn.isSignedIn()){
          
          return right(true);
      }else
        return right(false);
    }catch(e){
      return left(Failure.userAuthentificationFailed());
    }
  }

}