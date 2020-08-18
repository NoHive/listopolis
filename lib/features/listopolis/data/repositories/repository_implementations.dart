import 'package:listopolis/features/listopolis/data/datasources/data_source.dart';
import 'package:listopolis/features/listopolis/data/models/user_data.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';

class RepositoryImpl implements IRepository{

  final IUserDataSource dataSource;
  RepositoryImpl(this.dataSource);
  Option<UserData> uDataCache = None();

  @override
  Future<Either<RepositoryFailure, Option<UserData>>> requestData(String userID) async{
    try{
        if(uDataCache.isNone()){
          uDataCache = await dataSource.readUserData();
        }
        return Future.value(Right(uDataCache));
    }catch(e){
      return Future.value(Left(RepositoryFailure.serviceAccessFailed()));
    }  
  }
  
    @override
    Future<Either<RepositoryFailure, Unit>> sendData(UserData data) async{
    try{
        await dataSource.writeUserData(data);
        return Future.value(Right(unit));
    }catch(e){
      return Future.value(Left(RepositoryFailure.serviceAccessFailed()));
    }  
  }

}