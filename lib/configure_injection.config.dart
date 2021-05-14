// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i9;

import 'features/listopolis/application/active_lists/activelist_bloc.dart'
    as _i12;
import 'features/listopolis/application/list_creation/createlist_bloc.dart'
    as _i13;
import 'features/listopolis/application/online_lists/onlinelists_bloc.dart'
    as _i8;
import 'features/listopolis/application/templates/template_bloc.dart' as _i11;
import 'features/listopolis/data/core/injectable_modules.dart' as _i14;
import 'features/listopolis/data/datasources/data_source.dart' as _i6;
import 'features/listopolis/data/datasources/local_storage.dart' as _i7;
import 'features/listopolis/data/repositories/repository_implementations.dart'
    as _i10;
import 'features/listopolis/data/repositories/stream_repository_implementations.dart'
    as _i5;
import 'features/listopolis/domain/repositories/repositories.dart'
    as _i4; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseFirestoreModule = _$FirebaseFirestoreModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final localDataSourceModule = _$LocalDataSourceModule();
  await gh.factoryAsync<_i3.FirebaseFirestore>(
      () => firebaseFirestoreModule.cloudFireStore,
      preResolve: true);
  gh.lazySingleton<_i4.IStreamRepository>(
      () => _i5.FireStorePublicListsRepository(get<_i3.FirebaseFirestore>()));
  gh.lazySingleton<_i6.IUserDataSource>(() => _i7.BackupDataSource(),
      instanceName: 'BackupData');
  gh.factory<_i8.OnlinelistsBloc>(
      () => _i8.OnlinelistsBloc(get<_i4.IStreamRepository>()));
  await gh.factoryAsync<_i9.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.factory<String>(() => localDataSourceModule.preferenceKey,
      instanceName: 'PreferenceKey');
  gh.lazySingleton<_i6.IUserDataSource>(
      () => _i6.LocalDataSourceImpl(
          sharedPreferences: get<_i9.SharedPreferences>(),
          preferenceKey: get<String>(instanceName: 'PreferenceKey')),
      instanceName: 'UserData');
  gh.lazySingleton<_i4.IRepository>(() => _i10.RepositoryImpl(
      dataSource: get<_i6.IUserDataSource>(instanceName: 'UserData'),
      backupDataSource: get<_i6.IUserDataSource>(instanceName: 'BackupData')));
  gh.factory<_i11.TemplateBloc>(
      () => _i11.TemplateBloc(repository: get<_i4.IRepository>()));
  gh.factory<_i12.ActivelistBloc>(
      () => _i12.ActivelistBloc(repository: get<_i4.IRepository>()));
  gh.factory<_i13.CreatelistBloc>(
      () => _i13.CreatelistBloc(repository: get<_i4.IRepository>()));
  return get;
}

class _$FirebaseFirestoreModule extends _i14.FirebaseFirestoreModule {}

class _$SharedPreferencesModule extends _i14.SharedPreferencesModule {}

class _$LocalDataSourceModule extends _i14.LocalDataSourceModule {}
