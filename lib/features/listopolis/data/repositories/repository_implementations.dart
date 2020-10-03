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
  RepositoryImpl({@required this.dataSource});
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

}
class DemoRepositoryImpl implements IRepository{

  
  DemoRepositoryImpl();
  Option<UserData> uDataCache = None();

  
  
    @override
    Future<Either<Failure, Unit>> sendData() async{
    try{
      
        return Future.value(Right(unit));
    }catch(e){
      return Future.value(Left(Failure.serviceAccessFailed()));
    }  
  }

  UserData _constructDemoData(){

  ActiveList l1 = ActiveList(done: false, 
                                id: Uuid().v1(), 
                                name: "Einkaufsliste",
                                type: ListType.todo(),
                                position: 1,
                                opened: true,
                                listItems: 
                                    [
                                      ActiveListPosition(id: Uuid().v1(), position: 1,name: "3 Bier", done: false),
                                      ActiveListPosition(id: Uuid().v1(), position: 2,name: "2 Scheibenkäse", done: false),
                                      ActiveListPosition(id: Uuid().v1(), position: 3,name: "1 Milch", done: false),
                                      ActiveListPosition(id: Uuid().v1(), position: 4,name: "6 Äpfel", done: false),
                                      ActiveListPosition(id: Uuid().v1(), position: 5,name: "Antipasti", done: false),
                                      ActiveListPosition(id: Uuid().v1(), position: 6,name: "2 Quark", done: false),
                                    ]
  );
  ActiveList l2 = ActiveList(done: false, 
                                id: Uuid().v1(), 
                                name: "Fahrrad-Tour Survival",
                                type: ListType.remember(),
                                position: 2,
                                opened: false,
                                listItems: 
                                    [
                                      ActiveListPosition(id: Uuid().v1(), position: 1,name: "Wasser", done: false),
                                      ActiveListPosition(id: Uuid().v1(), position: 2,name: "Sonnenbrille", done: false),
                                      ActiveListPosition(id: Uuid().v1(), position: 3,name: "Sonnencreme", done: false),
                                      ActiveListPosition(id: Uuid().v1(), position: 4,name: "Sitzunterlage", done: false),
                                      ActiveListPosition(id: Uuid().v1(), position: 5,name: "Energie-Riegel!", done: false),
                                    ]
  );
  ListTemplate lt1 = ListTemplate(
                                id: Uuid().v1(), 
                                name: "Outdoor Unternehmung Sommer",
                                type: ListType.remember(),
                                position: 1,
                                templatePositions:  
                                    [
                                      ListTemplatePosition(position: 1,name: "Wasser", id: Uuid().v1()),
                                      ListTemplatePosition(position: 2,name: "Sitzunterlage", id: Uuid().v1()),
                                      ListTemplatePosition(position: 3,name: "Zeckenzange", id: Uuid().v1()),
                                      ListTemplatePosition(position: 4,name: "Energie-Riegel", id: Uuid().v1()),
                                      ListTemplatePosition(position: 5,name: "Sonnencreme", id: Uuid().v1()),
                                      ListTemplatePosition(position: 6,name: "Sonnenbrille", id: Uuid().v1()),
                                      
                                    ]
  );

    UserData udata = UserData(id: Uuid().v1(), 
                              name: "no user name yet",
                              activeLists: [l1, l2],
                              templates: [lt1]
                    );
    return udata;
  }

  @override
  Future<Either<Failure, Option<UserData>>> initDataSource() async {
     UserData udata = _constructDemoData();
     try{
        uDataCache = Some(udata);
        return Future.value(Right(Some(udata)));
    }catch(e){ 
      return Future.value(Left(Failure.serviceAccessFailed()));
    } 
  }

  @override
  Future<Either<Failure, List<ActiveList>>> getActiveLists() {
    // TODO: implement getActiveLists

    if(! isInitialized()){
      initDataSource();
    }
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

  @override
  Future<Either<Failure, List<ActiveList>>> deleteActiveListPosition(ActiveList list, ActiveListPosition position) {
    // TODO: implement deleteActiveListPosition
      UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.fromRemovedActiveListPosition(currentUserData, list, position));
      }
      return getActiveLists();
  }

  @override
  Future<Either<Failure, List<ActiveList>>> insertActiveList(CreateListParameter listParameter) {
     UserData currentUserData = uDataCache.getOrElse(() => null);
      if(currentUserData != null){
        uDataCache = Some(UserData.addListFromCreatedList(currentUserData, listParameter));
      }
   return getActiveLists();
  }

  @override
  Future<Either<Failure, List<ActiveList>>> deleteActiveList(ActiveList list) {
    // TODO: implement deleteActiveList
    return getActiveLists();
  }

  @override
  Future<Either<Failure, List<ActiveList>>> replaceActiveList(ActiveList list, CreateListParameter listParameter) {
    // TODO: implement replaceActiveList
    return getActiveLists();
  }

  @override
  Future<Either<Failure, List<ListTemplate>>> deleteTemplate(ListTemplate list) {
    // TODO: implement deleteTemplate
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ListTemplate>>> deleteTemplatePosition(ListTemplate list, ListTemplatePosition position) {
    // TODO: implement deleteTemplatePosition
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ListTemplate>>> insertTemplate(CreateListParameter listParameter) {
    // TODO: implement insertTemplate
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, List<ListTemplate>>> replaceTemplate(ListTemplate list, CreateListParameter listParameter) {
    // TODO: implement replaceTemplate
    throw UnimplementedError();
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