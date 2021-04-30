
import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/features/listopolis/data/core/file_utils.dart';
import 'package:listopolis/features/listopolis/data/datasources/data_source.dart';
import 'package:listopolis/features/listopolis/data/models/user_data.dart';



@Named('BackupData')
@LazySingleton(as: IUserDataSource)
class BackupDataSource extends IUserDataSource{
  BackupDataSource();
  
  @override
  Future<Option<UserData>> readUserData() async{
    final String jsonString = await FileUtils.readFromBackup();
    
    if(jsonString != null){
      return  Future.value(Some(UserData.fromJson(jsonDecode(jsonString))));
    }else{
      return  Future.value(None());
    }
  }

  @override
  Future<void> writeUserData(UserData data) {
       FileUtils.saveToBackup(json.encode(data.toJson()));
      return Future.value();
  }

}