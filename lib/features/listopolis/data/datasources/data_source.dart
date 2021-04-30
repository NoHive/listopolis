import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/features/listopolis/data/models/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IUserDataSource{
  Future<Option<UserData>> readUserData();
  Future<void> writeUserData(UserData data);
}
@Named('UserData')
@LazySingleton(as: IUserDataSource)
class LocalDataSourceImpl implements IUserDataSource{
  
  final SharedPreferences sharedPreferences;
  final String preferenceKey;

  LocalDataSourceImpl(
    {
      required this.sharedPreferences, 
      @Named('PreferenceKey') required this.preferenceKey
    });
  

  @override
  Future<Option<UserData>> readUserData() {

    final jsonString = sharedPreferences.getString(preferenceKey);
    if(jsonString != null){
      return  Future.value(Some(UserData.fromJson(jsonDecode(jsonString))));
    }else{
      return  Future.value(None());
    }
  }

  @override
  Future<void> writeUserData(UserData data) {
      sharedPreferences.setString(preferenceKey, json.encode(data.toJson()));
      return Future.value();
  }

}

