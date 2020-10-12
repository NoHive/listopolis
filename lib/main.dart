import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/core/local_storage/shared_preferences_keys.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/application/templates/template_bloc.dart';
import 'package:listopolis/features/listopolis/data/datasources/data_source.dart';
import 'package:listopolis/features/listopolis/data/datasources/local_storage.dart';
import 'package:listopolis/features/listopolis/data/repositories/repository_implementations.dart';
import 'package:listopolis/features/listopolis/presentation/active_lists/active_list_main_page.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:shared_preferences/shared_preferences.dart';


Future<SharedPreferences> init() async {
  
  return Future.value(await SharedPreferences.getInstance());
}

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences prefs = await init();
  runApp(ListopolisRoot(prefs));
}

class ListopolisRoot extends StatelessWidget {
  final SharedPreferences preferences;
  const ListopolisRoot(this.preferences, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
     final RepositoryImpl userDateRepo= RepositoryImpl(
                                          dataSource: LocalDataSourceImpl(
                                                        preferenceKey: SharedPreferencesKey.USER_DATA_KEY,
                                                        sharedPreferences: preferences
                                                      ),
                                          backupDataSource: BackupDataSource(),
                                        );

    return MaterialApp(
      title: "Listopolis",
      color: ListColors.APP_BAR_COLOR,
      home: MultiBlocProvider(
            providers: [ 
              BlocProvider<ActivelistBloc> (
                create: (context) => ActivelistBloc( repository: userDateRepo ),
              ),
              BlocProvider<TemplateBloc> (
                create: (context) => TemplateBloc( repository: userDateRepo ),
              ),
              BlocProvider<CreatelistBloc> (
                create: (context) => CreatelistBloc(
                                        repository: RepositoryImpl(
                                                        dataSource: LocalDataSourceImpl(
                                                          preferenceKey: SharedPreferencesKey.USER_DATA_KEY,
                                                          sharedPreferences: preferences
                                                    ),
                                                    backupDataSource: BackupDataSource(),
                                        ),
                                        
                                      )
              ),
              
            ],
            child: ActiveListMainPage(),
          )
    );
  }
  //  @override
  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     title: "Listopolis",
  //     home: MultiBlocProvider(
  //           providers: [ 
  //             BlocProvider<ActivelistBloc> (
  //               create: (context) => ActivelistBloc(repository: DemoRepositoryImpl()),
  //             ),
  //             BlocProvider<CreatelistBloc> (
  //               create: (context) => CreatelistBloc(repository: DemoRepositoryImpl()),
  //             ),
  //           ],
  //           child: ActiveListMainPage(),
  //         )
  //   );
  // }

}