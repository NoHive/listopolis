import 'package:injectable/injectable.dart';
import 'package:listopolis/core/local_storage/shared_preferences_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

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