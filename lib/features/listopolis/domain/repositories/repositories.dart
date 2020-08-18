import 'package:dartz/dartz.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/data/models/user_data.dart';

abstract class Repository{
  Future<Either<RepositoryFailure, Option<UserData>>> requestData(String userID);
  Future<Either<RepositoryFailure, Unit>> sendData(UserData data);
}