import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:listopolis/features/listopolis/data/datasources/data_source.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:listopolis/features/listopolis/data/models/user_data.dart';
import 'package:listopolis/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:listopolis/features/listopolis/data/models/user_info.dart';
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart';
import 'package:listopolis/features/listopolis/domain/repositories/user_info.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class RepositoryImpl implements IRepository{

  final IUserDataSource dataSource;
  RepositoryImpl(this.dataSource);
  Option<UserData> uDataCache = None();

  @override
  Future<Either<Failure, Option<UserData>>> requestData(String userID) async{
    try{
        if(uDataCache.isNone()){
          uDataCache = await dataSource.readUserData();
        }
        return Future.value(Right(uDataCache));
    }catch(e){
      return Future.value(Left(Failure.serviceAccessFailed()));
    }  
  }
  
    @override
    Future<Either<Failure, Unit>> sendData() async{
    try{
      
        uDataCache.map((currentData) async => await dataSource.writeUserData(currentData));
        return Future.value(Right(unit));
    }catch(e){
      return Future.value(Left(Failure.serviceAccessFailed()));
    }  
  }

  @override
  Future<Either<Failure, Option<UserData>>> initDataSource(String userID) async {
     UserData udata = UserData(id: userID, name: userID);
     try{
        await dataSource.writeUserData(udata);
        uDataCache = Some(udata);
        return Future.value(Right(Some(udata)));
    }catch(e){ 
      return Future.value(Left(Failure.serviceAccessFailed()));
    } 
  }

  @override
  Future<Either<Failure, List<ActiveList>>> getActiveLists() {
    // TODO: implement getActiveLists
    
    Option<List<ActiveList>> activeLists  = uDataCache.map((userdata) => userdata.activeLists);
    return Future.value(Right(activeLists.getOrElse(() => List())));
    
    
  }

  @override
  Future<Either<Failure, List<ListTemplate>>> getTemplates() {
    Option<List<ListTemplate>> templateOption  = uDataCache.map((userdata) => userdata.templates);
    return Future.value(Right(templateOption.getOrElse(() => List())));
  }

  @override
  bool isInitialized() {
    return uDataCache.isSome();
  }

}

class LocalUserInfoImpl implements IUserInfoRepository{


  final SharedPreferences sharedPreferences;
  final String preferenceKey;
  UserInfo cachedUserInfo;

  LocalUserInfoImpl(
    {
      @required this.sharedPreferences, 
      @required this.preferenceKey
    });
  

  @override
  Future<Either<Failure, UserInfo>> getUserInfo() {

    if(cachedUserInfo != null){
      return Future.value(Right(cachedUserInfo));
    }
    final jsonString = sharedPreferences.getString(preferenceKey);
    if(jsonString != null){
      cachedUserInfo = UserInfo.fromJson(jsonDecode(jsonString));
      return  Future.value(Right(cachedUserInfo));
    }else{
     cachedUserInfo = new UserInfo(userID: Uuid().v1());
      sharedPreferences.setString(preferenceKey, jsonEncode(cachedUserInfo.toJson()));
      return  Future.value(Right(cachedUserInfo));
    }
  }

}