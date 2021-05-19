import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/features/listopolis/application/online_lists/onlinelists_bloc.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/presentation/active_lists/active_list_main_page.dart';
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
                              //navigateToEditListScreen(context, list);
                            }else if(element == MainListItemMenueStr.USE_AS_TEMPLATE){
                              //BlocProvider.of<ActivelistBloc>(context)..add(ActivelistEvent.useListAsTemplate(list: list));
                            }else if(element == MainListItemMenueStr.COPY_LIST_TO_CLIPOARD){
                              //BlocProvider.of<ActivelistBloc>(context)..add(ActivelistEvent.copyListToClipBoard(list: list));
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
                                           new PopupMenuItem(
                                                value: MainListItemMenueStr.USE_AS_TEMPLATE,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.receipt, color:ListColors.ICON_LIST_TO_TEMPLATE),
                                                              Text("  ${MainListItemMenueStr.buildLocalName(MainListItemMenueStr.USE_AS_TEMPLATE, locale)}", style: ListColors.DEF_TEXT_STYLE),
                                                        ],
                                                      )
                                          ),
                                          new PopupMenuItem(
                                                value: MainListItemMenueStr.COPY_LIST_TO_CLIPOARD,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.copy, color:ListColors.ICON_COPY_LIST_TO_CLIPBOARD),
                                                              Text("  ${MainListItemMenueStr.buildLocalName(MainListItemMenueStr.COPY_LIST_TO_CLIPOARD, locale)}", style: ListColors.DEF_TEXT_STYLE),
                                                        ],
                                                      )
                                          )
                                      ];
                          },
                        );
  }

  

  
 
  

   _deleteList(BuildContext context, ActiveList list){
    // ActivelistBloc listBloc = BlocProvider.of<ActivelistBloc>(context);
    // showDialog(context: context,
    // builder: (context) {
    //   return AlertDialog(actions: [
    //       MaterialButton(onPressed: (){
    //         listBloc.add(ActivelistEvent.deleteActiveList(list: list));
    //         Navigator.of(context).pop();
    //       },
    //           child: Text("Ja, Liste löschen", style: ListColors.DEF_TEXT_STYLE),
    //           color: ListColors.DIALOG_BUTTON,
    //       ),
    //       MaterialButton(onPressed: (){Navigator.pop(context);},
    //           child: Text("Ups...nee bitte nicht!", style: ListColors.DEF_TEXT_STYLE),
    //           color: ListColors.DIALOG_BUTTON,
    //       )
    //   ],
    //   content: Text("Willst du die Liste wirklich löschen?", style: ListColors.DEF_TEXT_STYLE),
    //   backgroundColor: ListColors.DIALOG_BACKGROUND,
    //   );
    // },
    // );
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
                //BlocProvider.of<ActivelistBloc>(context)..
                //add(ActivelistEvent.deleteActiveListPosition(list: list, position: listPosition));
                BlocProvider.of<OnlinelistsBloc>(context)..add(OnlinelistsEvent.deleteListItem(list: list, listItem: listPosition));
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