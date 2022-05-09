import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/application/online_lists/onlinelists_bloc.dart';
import 'package:listopolis/features/listopolis/application/templates/template_bloc.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/presentation/active_lists/active_list_main_page.dart';
import 'package:listopolis/features/listopolis/presentation/active_lists/create_active_list_screen.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';

class OnlineListScreen extends StatefulWidget {
  @override
  _OnlineListScreenState createState() => _OnlineListScreenState();
}

class _OnlineListScreenState extends State<OnlineListScreen> with CommonPageFunctions {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: SingleChildScrollView(scrollDirection: Axis.horizontal, child:  Text("Online - Listen", style: ListColors.DEF_TEXT_STYLE,)),
        backgroundColor: ListColors.APP_BAR_COLOR,
        leading: IconButton(
                    icon: Icon(Icons.arrow_back), 
                    onPressed: () => _returnToHomeScreen(context)                    
                  ),
    ),
    body: Container(
      child: BlocBuilder<OnlinelistsBloc, OnlinelistsState>(
          builder: (context, state){
            return state.map(
              initial: (s) => showInitial(), 
              loading: (s) => showLoadingIndicator(), 
              loaded: (s) => buildLoadedLists(context, s.onlineLists), 
              error: (s) => showAppError(mapFailureToLocalizedString(s.failure)),
             // initCreateList: (s) => showLoadingIndicator()
            );
          },
        ),
        color: ListColors.LIST_BACKGROUND,
      ),
    );
}
_returnToHomeScreen(BuildContext context){
    Navigator.popUntil(context,ModalRoute.withName('/')); 
}



Widget buildLoadedLists(BuildContext context, List<ActiveList> lists){
    lists.sort((l1, l2) => l1.position.compareTo(l2.position));
    final int listCount = lists.length;
    return ListView.builder(itemBuilder: ( context, i){
                              return  Container(alignment: Alignment.center, 
                                                margin: EdgeInsets.only(top:1),
                                                decoration: BoxDecoration(gradient: ListColors.LIST_ITEM_GRADIENT),
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
      leadingIcon = Icon(Icons.playlist_add_check, color:ListColors.LIST_ICON_TODO);
    }else{
      leadingIcon = Icon(Icons.lightbulb_outline, color:ListColors.LIST_ICON_REMEMBER);
    }
    return  leadingIcon;
  }

  Widget _buildMainItemExpandableTitle(ActiveList list, BuildContext context){
    
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //leadingIcon,
          Text(list.name, style: ListColors.DEF_TEXT_STYLE,)
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
    
    return PopupMenuButton(color: ListColors.DIALOG_BACKGROUND,
                          child: _buildMainItemExpandableIcon(list, context),
                          onSelected: (element){
                            if(element == MainListItemMenueStr.DELETE){
                              _deleteList(context, list);
                            }else if(element == MainListItemMenueStr.EDIT){
                              navigateToEditListScreen(context, list);
                            }
                          },
                          itemBuilder: (context) {
                              return <PopupMenuItem>[
                                          new PopupMenuItem(
                                                value: MainListItemMenueStr.DELETE,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.delete, color: ListColors.ICON_DELTE,),
                                                              Text("  ${MainListItemMenueStr.buildLocalName(MainListItemMenueStr.DELETE, locale)}", style: ListColors.DEF_TEXT_STYLE,),
                                                        ],
                                                      )
                                          ),
                                          new PopupMenuItem(
                                                value: MainListItemMenueStr.EDIT,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.edit, color:ListColors.ICON_EDIT),
                                                              Text("  ${MainListItemMenueStr.buildLocalName(MainListItemMenueStr.EDIT, locale)}", style: ListColors.DEF_TEXT_STYLE),
                                                        ],
                                                      )
                                          ),
                                      ];
                          },
                        );
  }

  

  
 navigateToEditListScreen(BuildContext context, ActiveList list) {
      BlocProvider.of<CreatelistBloc>(context).add(CreatelistEvent.editOnlineList(list: list));
     Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: BlocProvider.of<CreatelistBloc>(context),
                  child: CreateListPage(BlocProvider.of<ActivelistBloc>(context), BlocProvider.of<TemplateBloc>(context)),
                ),
              ),
      );
   }
  

   _deleteList(BuildContext context, ActiveList list){
    OnlinelistsBloc listBloc = BlocProvider.of<OnlinelistsBloc>(context);
    showDialog(context: context,
    builder: (context) {
      return AlertDialog(actions: [
          MaterialButton(onPressed: (){
            listBloc.add(OnlinelistsEvent.deleteList(list: list));
            Navigator.of(context).pop();
          },
              child: Text("Ja, Liste löschen", style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          ),
          MaterialButton(onPressed: (){Navigator.pop(context);},
              child: Text("Ups...nee bitte nicht!", style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          )
      ],
      content: Text("Willst du die Liste wirklich löschen?", style: ListColors.DEF_TEXT_STYLE),
      backgroundColor: ListColors.DIALOG_BACKGROUND,
      );
    },
    );
  }

  Widget _buildSubElements(BuildContext ontext, ActiveList list, List<ActiveListPosition> listItems){
    final int listCount = listItems.length;
    
    listItems.sort((lp1, lp2) => lp1.position.compareTo(lp2.position));

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
                //BlocProvider.of<ActivelistBloc>(context)..
                //add(ActivelistEvent.deleteActiveListPosition(list: list, position: listPosition));
                ActiveList opendList = list.copyWith(opened:true);
                BlocProvider.of<OnlinelistsBloc>(context)..add(OnlinelistsEvent.deleteListItem(list: opendList, listItem: listPosition));
              },
              child: _buildListItemElement(listPosition),//ListTile(title: Text(listPosition.name, style: ListColors.DEF_TEXT_STYLE), ),
              background: _buildDismissBarItem(context, list, listPosition),
      
      );
    }else{
      return _buildListItemElement(listPosition);
    }
  }

Widget _buildListItemElement(ActiveListPosition listPosition){
    return  
           Container(
            
        decoration: BoxDecoration(
                      gradient: ListColors.LIST_ITEM_GRADIENT,
                      border: Border(top: BorderSide(width: 1))
                    ),
        child: ListTile(title: Text(listPosition.name, style: ListColors.DEF_TEXT_STYLE), ),
      
    );
}

Widget _buildDismissBarItem(BuildContext context, ActiveList list, ActiveListPosition listPosition){
  return new Container(
              decoration: BoxDecoration(gradient: ListColors.DISMISS_ITEM_GRADIENT),
              child: Align(
                        alignment: Alignment.centerLeft, 
                        child:  Padding(padding: EdgeInsets.only(left: 10),
                                        child: Icon(Icons.check_circle_outline, color: Colors.blueAccent,)
                                )
                    ),
  );
}

}