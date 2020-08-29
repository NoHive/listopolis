import 'package:dartz/dartz.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:listopolis/features/listopolis/data/models/user_data.dart';

abstract class IRepository{
  Future<Either<Failure, List<ActiveList>>> getActiveLists();
  Future<Either<Failure, List<ListTemplate>>> getTemplates();
  bool isInitialized();
  Future<Either<Failure, Option<UserData>>> initDataSource(String userID);
  Future<Either<Failure, Unit>> sendData();
}