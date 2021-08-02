// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:connectivity/connectivity.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i13;

import 'features/listopolis/application/active_lists/activelist_bloc.dart'
    as _i18;
import 'features/listopolis/application/authentication/authentication_bloc.dart'
    as _i14;
import 'features/listopolis/application/connectivity/connectivity_bloc.dart'
    as _i15;
import 'features/listopolis/application/list_creation/createlist_bloc.dart'
    as _i19;
import 'features/listopolis/application/online_lists/onlinelists_bloc.dart'
    as _i12;
import 'features/listopolis/application/templates/template_bloc.dart' as _i17;
import 'features/listopolis/data/core/injectable_modules.dart' as _i21;
import 'features/listopolis/data/datasources/data_source.dart' as _i10;
import 'features/listopolis/data/datasources/local_storage.dart' as _i11;
import 'features/listopolis/data/repositories/auth_repository_implementations.dart'
    as _i8;
import 'features/listopolis/data/repositories/connectivity_implementation.dart'
    as _i20;
import 'features/listopolis/data/repositories/repository_implementations.dart'
    as _i16;
import 'features/listopolis/data/repositories/stream_repository_implementations.dart'
    as _i9;
import 'features/listopolis/domain/repositories/repositories.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final connectivityModule = _$ConnectivityModule();
  final firebaseAuthModule = _$FirebaseAuthModule();
  final firebaseFirestoreModule = _$FirebaseFirestoreModule();
  final googleSignInModule = _$GoogleSignInModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final localDataSourceModule = _$LocalDataSourceModule();
  gh.factory<_i3.Connectivity>(() => connectivityModule.connectivity);
  gh.factory<_i4.FirebaseAuth>(() => firebaseAuthModule.firebaseAuth);
  await gh.factoryAsync<_i5.FirebaseFirestore>(
      () => firebaseFirestoreModule.cloudFireStore,
      preResolve: true);
  gh.factory<_i6.GoogleSignIn>(() => googleSignInModule.gSignIn);
  gh.lazySingleton<_i7.IAuthRepository>(() => _i8.FirebaseAuthRespository(
      get<_i6.GoogleSignIn>(), get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i7.IStreamRepository>(
      () => _i9.FireStorePublicListsRepository(get<_i5.FirebaseFirestore>()));
  gh.lazySingleton<_i10.IUserDataSource>(() => _i11.BackupDataSource(),
      instanceName: 'BackupData');
  gh.factory<_i12.OnlinelistsBloc>(
      () => _i12.OnlinelistsBloc(get<_i7.IStreamRepository>()));
  await gh.factoryAsync<_i13.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.factory<String>(() => localDataSourceModule.preferenceKey,
      instanceName: 'PreferenceKey');
  gh.factory<_i14.AuthenticationBloc>(
      () => _i14.AuthenticationBloc(get<_i7.IAuthRepository>()));
  gh.factory<_i15.ConnectivityBloc>(
      () => _i15.ConnectivityBloc(get<_i7.IConnectivityChecker>()));
  gh.lazySingleton<_i10.IUserDataSource>(
      () => _i10.LocalDataSourceImpl(
          sharedPreferences: get<_i13.SharedPreferences>(),
          preferenceKey: get<String>(instanceName: 'PreferenceKey')),
      instanceName: 'UserData');
  gh.lazySingleton<_i7.IRepository>(() => _i16.RepositoryImpl(
      dataSource: get<_i10.IUserDataSource>(instanceName: 'UserData'),
      backupDataSource: get<_i10.IUserDataSource>(instanceName: 'BackupData')));
  gh.factory<_i17.TemplateBloc>(
      () => _i17.TemplateBloc(repository: get<_i7.IRepository>()));
  gh.factory<_i18.ActivelistBloc>(
      () => _i18.ActivelistBloc(repository: get<_i7.IRepository>()));
  gh.factory<_i19.CreatelistBloc>(
      () => _i19.CreatelistBloc(repository: get<_i7.IRepository>()));
  gh.singleton<_i7.IConnectivityChecker>(
      _i20.ConnectivityImpl(get<_i3.Connectivity>()));
  return get;
}

class _$ConnectivityModule extends _i21.ConnectivityModule {}

class _$FirebaseAuthModule extends _i21.FirebaseAuthModule {}

class _$FirebaseFirestoreModule extends _i21.FirebaseFirestoreModule {}

class _$GoogleSignInModule extends _i21.GoogleSignInModule {}

class _$SharedPreferencesModule extends _i21.SharedPreferencesModule {}

class _$LocalDataSourceModule extends _i21.LocalDataSourceModule {}
