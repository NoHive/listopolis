import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';

class CreateListPage extends StatefulWidget {
  CreateListPage({Key key}) : super(key: key);

  @override
  _CreateListPageState createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> {
  
   @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<ActivelistBloc>(context)
      ..add(ActivelistEvent.load());
  }
  @override
  Widget build(BuildContext context) {
    return Container(
       child: Text("neu"),
    );
  }
}