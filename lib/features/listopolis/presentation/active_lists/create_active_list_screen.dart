import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/core/localization/localization.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';


class CreateListPage extends StatefulWidget  {
  CreateListPage({Key key}) : super(key: key);

  @override
  _CreateListPageState createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> with CommonPageFunctions{

  String listName;
  
   @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<CreatelistBloc>(context)
      ..add(CreatelistEvent.startListCreation());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text(CreateListPageStrings.APP_BAR_TITLE),),
    body: Container(
       child: BlocBuilder<CreatelistBloc, CreatelistState>
          (builder: (context, state){
            return state.map(
              initial: (s) => showLoadingIndicator(),
              listCreated: (s) => showEditList(context, s.list), 
              listUpdated: (s) => showUpdatedList(context), 
            );
          }
          ,),
    ));
  }

  Widget showEditList(BuildContext context, ActiveList list){
   List<Widget> widgets = [
                  _buildListName(context, list )
                  
    ];
    return ListView(children: widgets);
  }
  Widget _buildListName(BuildContext context, ActiveList list){
      listName = list.name;
       return Expanded(child: 
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0), child:
              TextField(
                          onSubmitted: (value) => listName=value,
                          textInputAction: TextInputAction.search,
                          controller: TextEditingController()..text = listName,
                          cursorColor: Colors.white,
                          style: TextStyle(color: ListColors.TEXTCOLOR_ON_LIGHT_BG),
                          decoration: InputDecoration(
                            hintText: CreateListPageStrings.LIST_NAME,
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                            labelText: CreateListPageStrings.LIST_NAME,
                            labelStyle: TextStyle(color:  ListColors.TEXTCOLOR_ON_LIGHT_BG),
                            fillColor: Color(0x42000000),
                            filled: true,
                          ),
            ))
            );

  }
  Widget _buildListType(BuildContext context){
    List<ListType> typen =[ListType.remember(), ListType.todo()];

  }
  Widget _buildAppendType(BuildContext context){

  }


  Widget showUpdatedList(BuildContext context){

  }

}

class CreateListPageStrings implements ListopolisString{
  static const APP_BAR_TITLE = "eine neue Liste erstellen";
  static const LIST_NAME = "Listen-Name";
}