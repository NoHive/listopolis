import 'package:dartz/dartz.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:listopolis/features/listopolis/data/models/user_info.dart';

abstract class IUserInfoRepository{
  Future<Either<Failure, UserInfo>> getUserInfo();
}