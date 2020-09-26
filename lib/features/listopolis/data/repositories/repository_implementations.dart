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
  RepositoryImpl(this.dataSource);
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
     UserData udata = UserData(id: Uuid().v1(), name: "no user name yet");
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

  @override
  Future<Either<Failure, List<ActiveList>>> deleteActiveListPosition(ActiveList list, ActiveListPosition position) {
    // TODO: implement deleteActiveListPosition
    throw UnimplementedError();
  }
  @override
  Future<Either<Failure, List<ActiveList>>> insertActiveList(CreateListParameter listParameter) {
   return getActiveLists();
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
                                      ListTemplatePosition(position: 1,name: "Wasser"),
                                      ListTemplatePosition(position: 2,name: "Sitzunterlage"),
                                      ListTemplatePosition(position: 3,name: "Zeckenzange"),
                                      ListTemplatePosition(position: 4,name: "Energie-Riegel"),
                                      ListTemplatePosition(position: 5,name: "Sonnencreme"),
                                      ListTemplatePosition(position: 6,name: "Sonnenbrille"),
                                      
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