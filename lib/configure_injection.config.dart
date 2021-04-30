// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i5;

import 'features/listopolis/application/active_lists/activelist_bloc.dart'
    as _i9;
import 'features/listopolis/application/list_creation/createlist_bloc.dart'
    as _i10;
import 'features/listopolis/application/templates/template_bloc.dart' as _i8;
import 'features/listopolis/data/core/injectable_modules.dart' as _i11;
import 'features/listopolis/data/datasources/data_source.dart' as _i3;
import 'features/listopolis/data/datasources/local_storage.dart' as _i4;
import 'features/listopolis/data/repositories/repository_implementations.dart'
    as _i7;
import 'features/listopolis/domain/repositories/repositories.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final localDataSourceModule = _$LocalDataSourceModule();
  gh.lazySingleton<_i3.IUserDataSource>(() => _i4.BackupDataSource(),
      instanceName: 'BackupData');
  await gh.factoryAsync<_i5.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.factory<String>(() => localDataSourceModule.preferenceKey,
      instanceName: 'PreferenceKey');
  gh.lazySingleton<_i3.IUserDataSource>(
      () => _i3.LocalDataSourceImpl(
          sharedPreferences: get<_i5.SharedPreferences>(),
          preferenceKey: get<String>(instanceName: 'PreferenceKey')),
      instanceName: 'UserData');
  gh.lazySingleton<_i6.IRepository>(() => _i7.RepositoryImpl(
      dataSource: get<_i3.IUserDataSource>(instanceName: 'UserData'),
      backupDataSource: get<_i3.IUserDataSource>(instanceName: 'BackupData')));
  gh.factory<_i8.TemplateBloc>(
      () => _i8.TemplateBloc(repository: get<_i6.IRepository>()));
  gh.factory<_i9.ActivelistBloc>(
      () => _i9.ActivelistBloc(repository: get<_i6.IRepository>()));
  gh.factory<_i10.CreatelistBloc>(
      () => _i10.CreatelistBloc(repository: get<_i6.IRepository>()));
  return get;
}

class _$SharedPreferencesModule extends _i11.SharedPreferencesModule {}

class _$LocalDataSourceModule extends _i11.LocalDataSourceModule {}
