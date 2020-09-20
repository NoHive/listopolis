import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/data/repositories/repository_implementations.dart';
import 'package:listopolis/features/listopolis/presentation/active_lists/active_list_main_page.dart';

void main() {
  runApp(ListopolisRoot());
}

class ListopolisRoot extends StatelessWidget {
  const ListopolisRoot({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Listopolis",
      home: MultiBlocProvider(
            providers: [ 
              BlocProvider<ActivelistBloc> (
                create: (context) => ActivelistBloc(repository: DemoRepositoryImpl()),
              ),
              BlocProvider<CreatelistBloc> (
                create: (context) => CreatelistBloc(repository: DemoRepositoryImpl()),
              ),
            ],
            child: ActiveListMainPage(),
          )
    );
  }

}