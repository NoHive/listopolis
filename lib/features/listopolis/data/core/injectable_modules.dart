import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:listopolis/core/local_storage/shared_preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:firebase_core/firebase_core.dart';

@module
abstract class SharedPreferencesModule{
    @preResolve
    Future<SharedPreferences> get prefs => SharedPreferences.getInstance();
}

@module
abstract class LocalDataSourceModule{
  @Named('PreferenceKey')
  String get preferenceKey => SharedPreferencesKey.USER_DATA_KEY;
}

@module
abstract class FirebaseFirestoreModule{
  //FirebaseFirestore get cloudFireStore => FirebaseFirestore.instance;
  @preResolve
  Future<FirebaseFirestore> get cloudFireStore async{
    await Firebase.initializeApp();
    return FirebaseFirestore.instance;
  }
}