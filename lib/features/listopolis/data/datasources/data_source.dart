import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:listopolis/features/listopolis/data/models/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IUserDataSource{
  Future<Option<UserData>> readUserData();
  Future<void> writeUserData(UserData data);
}

class LocalDataSourceImpl implements IUserDataSource{
  
  final SharedPreferences sharedPreferences;
  final String preferenceKey;

  LocalDataSourceImpl(
    {
      @required this.sharedPreferences, 
      @required this.preferenceKey
    });
  
  
  
  @override
  Future<Option<UserData>> readUserData() {
    //  final jsonString = sharedPreferences.getString(preferenceKey);
    // if(jsonString != null){
    //   return Future.value(NumberTriviaModel.fromJson(json.decode(jsonString)));
    // }else{
    //   throw CacheException();
    // }
  }

  @override
  Future<void> writeUserData(UserData data) {
    // TODO: implement writeUserData
    throw UnimplementedError();
  }

}