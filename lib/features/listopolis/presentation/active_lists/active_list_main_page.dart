

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/core/localization/localization.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/presentation/active_lists/create_active_list_screen.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';

class ActiveListMainPage extends StatefulWidget {
  ActiveListMainPage({Key key}) : super(key: key);

  @override
  _ActiveListMainPageState createState() => _ActiveListMainPageState();
}

class _ActiveListMainPageState extends State<ActiveListMainPage> with CommonPageFunctions {
   @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<ActivelistBloc>(context)
      ..add(ActivelistEvent.load());
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text(ActiveListStrings.APP_BAR_TITLE),
        actions: <Widget>[_buildOverflowMenue(context)],
    ),
    body: Container(
      child: BlocBuilder<ActivelistBloc, ActivelistState>(
          builder: (context, state){
            return state.map(
              initial: (s) => showInitial(), 
              loading: (s) => showLoadingIndicator(), 
              loaded: (s) => buildLoadedLists(context, s.userLists), 
              error: (s) => showAppError(mapFailureToLocalizedString(s.failure)),
             // initCreateList: (s) => showLoadingIndicator()
            );
          },
        ),
      ),
    );
    
  }
   Widget _buildOverflowMenue(BuildContext context){
    return PopupMenuButton<String>(
      onSelected: _onSelectMenueItem,
      itemBuilder: (BuildContext context){
          return ActiveListPageMenueStrings.choises.map((menueOption) {
            return PopupMenuItem<String>(value: menueOption,
                                        child: Text(menueOption, style: TextStyle(fontSize: 10),),
            );
          }).toList();
      }
    
    );

  }
   navigateToCreateListScreen(BuildContext context) {
     Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: BlocProvider.of<CreatelistBloc>(context),
                  child: CreateListPage(),
                ),
              ),
      );
   }

  _onSelectMenueItem(String choice){
      if(choice == ActiveListPageMenueStrings.CREATE_NEW_LIST){
        navigateToCreateListScreen(context);
      }else{
        print("not supported");
      }
  }

  Widget buildLoadedLists(BuildContext context, List<ActiveList> lists){
    final int listCount = lists.length;
    return ListView.builder(itemBuilder: ( context, i){
                              return  Container(alignment: Alignment.center, 
                                                margin: EdgeInsets.all(1),
                                               
                                                child: ExpansionTile( 
                                                          title: _buildMainItemExpandableTitle(lists[i]),
                                                          initiallyExpanded: lists[i].opened,
                                                          children: [ _buildSubElements(context,  lists[i], lists[i].listItems)],
                                                )
                              );

                          },
                           itemCount: listCount,
                           shrinkWrap: false,
                           );
  }
    
  Widget _buildMainItemExpandableTitle(ActiveList list){
  return Text(list.name);
}
  Widget _buildSubElements(BuildContext ontext, ActiveList list, List<ActiveListPosition> listItems){
    final int listCount = listItems.length;
    print("listcount = ${listItems.length}");

    //return Container(child:  Text("egal"));
    // result.add(
     
     return ListView.builder(itemBuilder: ( context, i){
                              return  Container(alignment: Alignment.center, 
                                                child:_buildActiveListItem(context, list, listItems[i])
                              );

                          },
                          itemCount: listCount,
                          shrinkWrap: true,
                          physics: ClampingScrollPhysics()
     );
    // return result;
  }

  Widget _buildActiveListItem(BuildContext context, ActiveList list, ActiveListPosition listPosition){
    print("constructing ${listPosition.name}");
    //return ListTile(title: Text(listPosition.name));
    return Dismissible(key: new Key(listPosition.id),
            onDismissed: (direction){
              BlocProvider.of<ActivelistBloc>(context)..
              add(ActivelistEvent.deleteActiveListPosition(list: list, position: listPosition));
            },
            child: ListTile(title: Text(listPosition.name)),
            background: new Container(color:Colors.green),
    
    );
  }
}




class ActiveListStrings implements ListopolisString{
  static const APP_BAR_TITLE = "Deine Listen";
}

class ActiveListPageMenueStrings{
  static const String CREATE_NEW_LIST = "Liste anlegen";
  static const String EDIT_TEMPlATES = "Vorlagen verwalten";
  static const String CREATE_NEW_LIST_FROM_TEMPLATE = "Liste aus Vorlage anlegen";

  static const List<String> choises = [CREATE_NEW_LIST,EDIT_TEMPlATES, CREATE_NEW_LIST_FROM_TEMPLATE];
}