// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:connectivity/connectivity.dart' as _i3;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i6;
import 'package:injectable/injectable.dart' as _i2;
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart'
    as _i19;
import 'package:listopolis/features/listopolis/application/authentication/authentication_bloc.dart'
    as _i15;
import 'package:listopolis/features/listopolis/application/connectivity/connectivity_bloc.dart'
    as _i16;
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart'
    as _i20;
import 'package:listopolis/features/listopolis/application/online_lists/onlinelists_bloc.dart'
    as _i13;
import 'package:listopolis/features/listopolis/application/templates/template_bloc.dart'
    as _i18;
import 'package:listopolis/features/listopolis/data/core/injectable_modules.dart'
    as _i21;
import 'package:listopolis/features/listopolis/data/datasources/data_source.dart'
    as _i11;
import 'package:listopolis/features/listopolis/data/datasources/local_storage.dart'
    as _i12;
import 'package:listopolis/features/listopolis/data/repositories/auth_repository_implementations.dart'
    as _i8;
import 'package:listopolis/features/listopolis/data/repositories/connectivity_implementation.dart'
    as _i9;
import 'package:listopolis/features/listopolis/data/repositories/repository_implementations.dart'
    as _i17;
import 'package:listopolis/features/listopolis/data/repositories/stream_repository_implementations.dart'
    as _i10;
import 'package:listopolis/features/listopolis/domain/repositories/repositories.dart'
    as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

/// ignore_for_file: unnecessary_lambdas
/// ignore_for_file: lines_longer_than_80_chars
extension GetItInjectableX on _i1.GetIt {
  /// initializes the registration of main-scope dependencies inside of [GetIt]
  Future<_i1.GetIt> init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
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
      preResolve: true,
    );
    gh.factory<_i6.GoogleSignIn>(() => googleSignInModule.gSignIn);
    gh.lazySingleton<_i7.IAuthRepository>(() => _i8.FirebaseAuthRespository(
          gh<_i6.GoogleSignIn>(),
          gh<_i4.FirebaseAuth>(),
        ));
    gh.singleton<_i7.IConnectivityChecker>(
        _i9.ConnectivityImpl(gh<_i3.Connectivity>()));
    gh.lazySingleton<_i7.IStreamRepository>(
        () => _i10.FireStorePublicListsRepository(gh<_i5.FirebaseFirestore>()));
    gh.lazySingleton<_i11.IUserDataSource>(
      () => _i12.BackupDataSource(),
      instanceName: 'BackupData',
    );
    gh.factory<_i13.OnlinelistsBloc>(
        () => _i13.OnlinelistsBloc(gh<_i7.IStreamRepository>()));
    await gh.factoryAsync<_i14.SharedPreferences>(
      () => sharedPreferencesModule.prefs,
      preResolve: true,
    );
    gh.factory<String>(
      () => localDataSourceModule.preferenceKey,
      instanceName: 'PreferenceKey',
    );
    gh.factory<_i15.AuthenticationBloc>(
        () => _i15.AuthenticationBloc(gh<_i7.IAuthRepository>()));
    gh.factory<_i16.ConnectivityBloc>(
        () => _i16.ConnectivityBloc(gh<_i7.IConnectivityChecker>()));
    gh.lazySingleton<_i11.IUserDataSource>(
      () => _i11.LocalDataSourceImpl(
        sharedPreferences: gh<_i14.SharedPreferences>(),
        preferenceKey: gh<String>(instanceName: 'PreferenceKey'),
      ),
      instanceName: 'UserData',
    );
    gh.lazySingleton<_i7.IRepository>(() => _i17.RepositoryImpl(
          dataSource: gh<_i11.IUserDataSource>(instanceName: 'UserData'),
          backupDataSource:
              gh<_i11.IUserDataSource>(instanceName: 'BackupData'),
        ));
    gh.factory<_i18.TemplateBloc>(
        () => _i18.TemplateBloc(repository: gh<_i7.IRepository>()));
    gh.factory<_i19.ActivelistBloc>(
        () => _i19.ActivelistBloc(repository: gh<_i7.IRepository>()));
    gh.factory<_i20.CreatelistBloc>(
        () => _i20.CreatelistBloc(repository: gh<_i7.IRepository>()));
    return this;
  }
}

class _$SharedPreferencesModule extends _i21.SharedPreferencesModule {}

class _$LocalDataSourceModule extends _i21.LocalDataSourceModule {}

class _$FirebaseFirestoreModule extends _i21.FirebaseFirestoreModule {}

class _$GoogleSignInModule extends _i21.GoogleSignInModule {}

class _$FirebaseAuthModule extends _i21.FirebaseAuthModule {}

class _$ConnectivityModule extends _i21.ConnectivityModule {}
