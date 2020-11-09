import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/datasources/data_source.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
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
  final IUserDataSource backupDataSource;
  RepositoryImpl({@required this.dataSource, @required this.backupDataSource});
  Option<UserData> uDataCache = None();

  
  
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
  Future<Either<Failure, Option<UserData>>> initDataSource() async {

    Option<UserData> existingUserDataOption = await dataSource.readUserData();
    
    UserData loadedUserData = existingUserDataOption.getOrElse(() => null);
    if(loadedUserData == null){
      UserData udata = UserData(id: Uuid().v1(), 
                                name: "no user name yet",
                                activeLists:List(),
                                templates:List()
                                );
      try{
          await dataSource.writeUserData(udata);
          uDataCache = Some(udata);
          return Future.value(Right(Some(udata)));
      }catch(e){ 
        return Future.value(Left(Failure.serviceAccessFailed()));
      } 
    }else{
      if(loadedUserData.activeLists == null || loadedUserData.templates == null ){
        loadedUserData = loadedUserData.copyWith(activeLists:List(), templates:List());
      }
      uDataCache = Some(loadedUserData);
      return Future.value(Right(uDataCache));
    }
  }

  @override
  Future<Either<Failure, List<ActiveList>>> getActiveLists() async{
    // TODO: implement getActiveLists
    
     if(! isInitialized()){
      await initDataSource();
    }

    Option<List<ActiveList>> activeLists  = uDataCache.map((userdata) => userdata.activeLists);
    return Future.value(Right(activeLists.getOrElse(() => List())));
    
    
  }

  @override
  Future<Either<Failure, List<ListTemplate>>> getTemplates() async{
     if(! isInitialized()){
      await initDataSource();
    }

    Option<List<ListTemplate>> templates  = uDataCache.map((userdata) => userdata.templates);
    return Future.value(Right(templates.getOrElse(() => List())));
  }

  @override
  bool isInitialized() {
    
    return uDataCache.isSome();
  }

 @override
  Future<Either<Failure, List<ActiveList>>> deleteActiveListPosition(ActiveList list, ActiveListPosition position) {
    // TODO: implement deleteActiveListPosition
      UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.fromRemovedActiveListPosition(currentUserData, list, position));
        sendData();
      }
      return getActiveLists();
  }

  @override
  Future<Either<Failure, List<ActiveList>>> insertActiveList(CreateListParameter listParameter) {
     UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.addListFromCreatedList(currentUserData, listParameter));
        sendData();
      }
   return getActiveLists();
  }

  @override
  Future<Either<Failure, List<ActiveList>>> deleteActiveList(ActiveList list) {
    UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.fromRemovedActiveList(currentUserData, list));
        sendData();
      }
      return getActiveLists();
  }

  @override
  Future<Either<Failure, List<ActiveList>>> replaceActiveList(ActiveList list, CreateListParameter listParameter) {
    UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.replaceListFromCreatedList(currentUserData, list, listParameter));
        sendData();
      }
   return getActiveLists();
  }

  @override
  Future<Either<Failure, List<ListTemplate>>> deleteTemplate(ListTemplate list) {
   UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.fromRemovedTemplate(currentUserData, list));
        sendData();
      }
      return getTemplates();
  }

  @override
  Future<Either<Failure, List<ListTemplate>>> deleteTemplatePosition(ListTemplate list, ListTemplatePosition position) {
     UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.fromRemovedTemplatePosition(currentUserData, list, position));
        sendData();
      }
      return getTemplates();
  }

  @override
  Future<Either<Failure, List<ListTemplate>>> insertTemplate(CreateListParameter listParameter) {
     UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.addTemplateFromCreatedList(currentUserData, listParameter));
        sendData();
      }
      return getTemplates();
  }

  @override
  Future<Either<Failure, List<ListTemplate>>> replaceTemplate(ListTemplate list, CreateListParameter listParameter) {
    UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.replaceTemplateFromCreatedList(currentUserData, list, listParameter));
        sendData();
      }
   return getTemplates();
  }

  @override
  Future<Either<Failure, List<ActiveList>>> backupUserData() async {
    try{
      
        uDataCache.map((currentData) async => await backupDataSource.writeUserData(currentData));
        return getActiveLists();
    }catch(e){
      return Future.value(Left(Failure.serviceAccessFailed()));
    } 
  }

  @override
  Future<Either<Failure, List<ActiveList>>> loadUserDataFromBackup() async {
    Option<UserData> existingUserDataOption = await backupDataSource.readUserData();
    if(existingUserDataOption.isNone())
      return getActiveLists();
    UserData loadedUserData = existingUserDataOption.getOrElse(() => null);
    if(loadedUserData != null){
        uDataCache = Some(loadedUserData);
        await sendData();
    }
    return getActiveLists();
  }

  @override
  Future<Either<Failure, List<ActiveList>>> createTemlateFromList(ActiveList list) {
    UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.addTemplateFromActiveList(currentUserData, list));
        sendData();
      }
      return getActiveLists();
  }

  @override
  Future<Either<Failure, List<ActiveList>>> changeListPosition(ActiveList list, int oldPosition, int newPosition) {
     UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.fromChangedListPosition(currentUserData, list, oldPosition, newPosition));
        sendData();
      }
      return getActiveLists();
  }

}


// class LocalUserInfoImpl implements IUserInfoRepository{


//   final SharedPreferences sharedPreferences;
//   final String preferenceKey;
//   UserInfo cachedUserInfo;

//   LocalUserInfoImpl(
//     {
//       @required this.sharedPreferences, 
//       @required this.preferenceKey
//     });
  

//   @override
//   Future<Either<Failure, UserInfo>> getUserInfo() {

//     if(cachedUserInfo != null){
//       return Future.value(Right(cachedUserInfo));
//     }
//     final jsonString = sharedPreferences.getString(preferenceKey);
//     if(jsonString != null){
//       cachedUserInfo = UserInfo.fromJson(jsonDecode(jsonString));
//       return  Future.value(Right(cachedUserInfo));
//     }else{
//      cachedUserInfo = new UserInfo(userID: Uuid().v1());
//       sharedPreferences.setString(preferenceKey, jsonEncode(cachedUserInfo.toJson()));
//       return  Future.value(Right(cachedUserInfo));
//     }
//   }

// }