// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i5;
import 'package:injectable/injectable.dart' as _i2;
import 'package:shared_preferences/shared_preferences.dart' as _i12;

import 'features/listopolis/application/active_lists/activelist_bloc.dart'
    as _i16;
import 'features/listopolis/application/authentication/authentication_bloc.dart'
    as _i13;
import 'features/listopolis/application/list_creation/createlist_bloc.dart'
    as _i17;
import 'features/listopolis/application/online_lists/onlinelists_bloc.dart'
    as _i11;
import 'features/listopolis/application/templates/template_bloc.dart' as _i15;
import 'features/listopolis/data/core/injectable_modules.dart' as _i18;
import 'features/listopolis/data/datasources/data_source.dart' as _i9;
import 'features/listopolis/data/datasources/local_storage.dart' as _i10;
import 'features/listopolis/data/repositories/auth_repository_implementations.dart'
    as _i7;
import 'features/listopolis/data/repositories/repository_implementations.dart'
    as _i14;
import 'features/listopolis/data/repositories/stream_repository_implementations.dart'
    as _i8;
import 'features/listopolis/domain/repositories/repositories.dart'
    as _i6; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseAuthModule = _$FirebaseAuthModule();
  final firebaseFirestoreModule = _$FirebaseFirestoreModule();
  final googleSignInModule = _$GoogleSignInModule();
  final sharedPreferencesModule = _$SharedPreferencesModule();
  final localDataSourceModule = _$LocalDataSourceModule();
  gh.factory<_i3.FirebaseAuth>(() => firebaseAuthModule.firebaseAuth);
  await gh.factoryAsync<_i4.FirebaseFirestore>(
      () => firebaseFirestoreModule.cloudFireStore,
      preResolve: true);
  gh.factory<_i5.GoogleSignIn>(() => googleSignInModule.gSignIn);
  gh.lazySingleton<_i6.IAuthRepository>(() => _i7.FirebaseAuthRespository(
      get<_i5.GoogleSignIn>(), get<_i3.FirebaseAuth>()));
  gh.lazySingleton<_i6.IStreamRepository>(
      () => _i8.FireStorePublicListsRepository(get<_i4.FirebaseFirestore>()));
  gh.lazySingleton<_i9.IUserDataSource>(() => _i10.BackupDataSource(),
      instanceName: 'BackupData');
  gh.factory<_i11.OnlinelistsBloc>(
      () => _i11.OnlinelistsBloc(get<_i6.IStreamRepository>()));
  await gh.factoryAsync<_i12.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true);
  gh.factory<String>(() => localDataSourceModule.preferenceKey,
      instanceName: 'PreferenceKey');
  gh.factory<_i13.AuthenticationBloc>(
      () => _i13.AuthenticationBloc(get<_i6.IAuthRepository>()));
  gh.lazySingleton<_i9.IUserDataSource>(
      () => _i9.LocalDataSourceImpl(
          sharedPreferences: get<_i12.SharedPreferences>(),
          preferenceKey: get<String>(instanceName: 'PreferenceKey')),
      instanceName: 'UserData');
  gh.lazySingleton<_i6.IRepository>(() => _i14.RepositoryImpl(
      dataSource: get<_i9.IUserDataSource>(instanceName: 'UserData'),
      backupDataSource: get<_i9.IUserDataSource>(instanceName: 'BackupData')));
  gh.factory<_i15.TemplateBloc>(
      () => _i15.TemplateBloc(repository: get<_i6.IRepository>()));
  gh.factory<_i16.ActivelistBloc>(
      () => _i16.ActivelistBloc(repository: get<_i6.IRepository>()));
  gh.factory<_i17.CreatelistBloc>(
      () => _i17.CreatelistBloc(repository: get<_i6.IRepository>()));
  return get;
}

class _$FirebaseAuthModule extends _i18.FirebaseAuthModule {}

class _$FirebaseFirestoreModule extends _i18.FirebaseFirestoreModule {}

class _$GoogleSignInModule extends _i18.GoogleSignInModule {}

class _$SharedPreferencesModule extends _i18.SharedPreferencesModule {}

class _$LocalDataSourceModule extends _i18.LocalDataSourceModule {}
