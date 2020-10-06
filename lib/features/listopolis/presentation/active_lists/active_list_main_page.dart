

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/core/localization/localization.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/application/templates/template_bloc.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/presentation/active_lists/create_active_list_screen.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';
import 'package:listopolis/features/listopolis/presentation/templates/template_main_page.dart';

class ActiveListMainPage extends StatefulWidget {
  ActiveListMainPage({Key key}) : super(key: key);

  @override
  _ActiveListMainPageState get createState => _ActiveListMainPageState();
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
      BlocProvider.of<CreatelistBloc>(context).add(CreatelistEvent.startListCreation());
     Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: BlocProvider.of<CreatelistBloc>(context),
                  child: CreateListPage(BlocProvider.of<ActivelistBloc>(context), BlocProvider.of<TemplateBloc>(context)),
                ),
              ),
      );
   }
      navigateToTemplateMainScreen(BuildContext context) {
     Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: BlocProvider.of<TemplateBloc>(context),
                  child: TemplateMainPage(BlocProvider.of<ActivelistBloc>(context),  BlocProvider.of<CreatelistBloc>(context)),
                ),
              ),
      );
   }

  _onSelectMenueItem(String choice){
      if(choice == ActiveListPageMenueStrings.CREATE_NEW_LIST){
        navigateToCreateListScreen(context);
      }else if(choice == ActiveListPageMenueStrings.EDIT_TEMPlATES){
        navigateToTemplateMainScreen(context);
      }else if(choice == ActiveListPageMenueStrings.SAVE_CURRENT_USER_DATA){
        BlocProvider.of<ActivelistBloc>(context).add(ActivelistEvent.backupData());
      }else if(choice == ActiveListPageMenueStrings.LOAD_EXTERN_DATA){
        _replaceDateWithBackup(context);
        //BlocProvider.of<ActivelistBloc>(context).add(ActivelistEvent.loadDataFromBackup());
      }
      else{
        print("not supported");
      }
  }

  Widget buildLoadedLists(BuildContext context, List<ActiveList> lists){
    lists.sort((l1, l2) => l1.position.compareTo(l2.position));
    final int listCount = lists.length;
    return ListView.builder(itemBuilder: ( context, i){
                              return  Container(alignment: Alignment.center, 
                                                margin: EdgeInsets.all(1),
                                               
                                                child: ExpansionTile( 
                                                          leading: _buildMainItemExpandableTrailing(lists[i], context),
                                                          title: _buildMainItemExpandableTitle(lists[i], context),
                                                          initiallyExpanded: lists[i].opened,
                                                          children: [ _buildSubElements(context,  lists[i], lists[i].listItems)],
                                                )
                              );
                          },
                           itemCount: listCount,
                           shrinkWrap: false,
                           );
  }

  Widget _buildMainItemExpandableIcon(ActiveList list, BuildContext context){
    Icon leadingIcon;
    if(list.type == ListType.todo()){
      leadingIcon = Icon(Icons.playlist_add_check);
    }else{
      leadingIcon = Icon(Icons.lightbulb_outline);
    }
    return  leadingIcon;
  }

  Widget _buildMainItemExpandableTitle(ActiveList list, BuildContext context){
    
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //leadingIcon,
          Text(list.name)
        ],
      ),
    );
    
    // return ListTile( 
    //           leading: leadingIcon, 
    //           title:  Text(list.name), 
    //           dense: true,
    //       );
    // return Text(list.name);
  }
  _buildMainItemExpandableTrailing(ActiveList list, BuildContext context){
    
    const String locale = "de";
    
    return PopupMenuButton(
                          child: _buildMainItemExpandableIcon(list, context),
                          onSelected: (element){
                            if(element == MainListItemMenueStr.DELETE){
                              BlocProvider.of<ActivelistBloc>(context)..add(ActivelistEvent.deleteActiveList(list: list));
                            }else if(element == MainListItemMenueStr.EDIT){
                              BlocProvider.of<CreatelistBloc>(context)..add(CreatelistEvent.editActiveList(list: list));
                              navigateToCreateListScreen(context);
                            }
                          },
                          itemBuilder: (context) {
                              return <PopupMenuItem>[
                                          new PopupMenuItem(
                                                value: MainListItemMenueStr.DELETE,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.delete),
                                                              Text("  ${MainListItemMenueStr.buildLocalName(MainListItemMenueStr.DELETE, locale)}"),
                                                        ],
                                                      )
                                          ),
                                          new PopupMenuItem(
                                                value: MainListItemMenueStr.EDIT,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.edit),
                                                              Text("  ${MainListItemMenueStr.buildLocalName(MainListItemMenueStr.EDIT, locale)}"),
                                                        ],
                                                      )
                                          )
                                      ];
                          },
                        );
  }

   _replaceDateWithBackup(BuildContext context){
    ActivelistBloc listBloc = BlocProvider.of<ActivelistBloc>(context);
    showDialog(context: context,
    builder: (context) {
      return AlertDialog(actions: [
          MaterialButton(onPressed: (){
            listBloc.add(ActivelistEvent.loadDataFromBackup());
            Navigator.of(context).pop();
          },
              child: Text("Ja Daten überschreiben"),
          ),
          MaterialButton(onPressed: (){Navigator.pop(context);},
              child: Text("Ups...nee bitte nicht!"),
          )
      ],
      content: Text("Willst du die aktuellen Listen und Vorlagen durch die Sicherung ersetzen?"),
      );
    },
    );
  }

  Widget _buildSubElements(BuildContext ontext, ActiveList list, List<ActiveListPosition> listItems){
    final int listCount = listItems.length;
    
   
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
    
    if(list.type == ListType.todo()){
      return Dismissible(key: new Key(listPosition.id),
              onDismissed: (direction){
                BlocProvider.of<ActivelistBloc>(context)..
                add(ActivelistEvent.deleteActiveListPosition(list: list, position: listPosition));
              },
              child: ListTile(title: Text(listPosition.name)),
              background: _buildDismissBarItem(context, list, listPosition),
      
      );
    }else{
      return ListTile(title: Text(listPosition.name));
    }
  }
}
Widget _buildDismissBarItem(BuildContext context, ActiveList list, ActiveListPosition listPosition){
  return new Container(
              color:ListColors.DISSMISS_LIST_ITEM,
              child: Align(
                        alignment: Alignment.centerLeft, 
                        child:  Padding(padding: EdgeInsets.only(left: 10),
                                        child: Icon(Icons.check_circle_outline, color: Colors.blueAccent,)
                                )
                    ),
  );
}




class ActiveListStrings implements ListopolisString{
  static const APP_BAR_TITLE = "Deine Listen";
}

class ActiveListPageMenueStrings{
  static const String CREATE_NEW_LIST = "Liste anlegen";
  static const String EDIT_TEMPlATES = "Vorlagen";
  static const String SAVE_CURRENT_USER_DATA = "Daten sichern";
  static const String LOAD_EXTERN_DATA = "Daten aus Sicherung einlesen";
  

  static const List<String> choises = [CREATE_NEW_LIST,EDIT_TEMPlATES, SAVE_CURRENT_USER_DATA, LOAD_EXTERN_DATA];
}
class MainListItemMenueStr{
  static const String EDIT = "edit";
  static const String DELETE = "delete";

  static String buildLocalName(String str, String locale){
    if(locale == "de"){
      if(str == EDIT)
        return "Bearbeiten";
      else if(str == DELETE)
        return "Löschen";
    }else{
      return str;
    }
    

  }
}