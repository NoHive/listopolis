

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/core/localization/localization.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/application/templates/template_bloc.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/presentation/active_lists/create_active_list_screen.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';

class TemplateMainPage extends StatefulWidget {
  final CreatelistBloc createlistBloc;
  final ActivelistBloc activelistBloc;
  TemplateMainPage(this.activelistBloc, this.createlistBloc, {Key key}) : super(key: key);

  @override
  _TemplateMainPageState createState() => _TemplateMainPageState();
}

class _TemplateMainPageState extends State<TemplateMainPage> with CommonPageFunctions {
   @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    BlocProvider.of<TemplateBloc>(context)
      ..add(TemplateEvent.load());
  }
   @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text(TemplateStrings.APP_BAR_TITLE),
        actions: <Widget>[_buildOverflowMenue(context)],
    ),
    body: Container(
      child: BlocBuilder<TemplateBloc, TemplateState>(
          builder: (context, state){
            return state.map(
              initial: (s) => showInitial(), 
              loading: (s) => showLoadingIndicator(), 
              loaded: (s) => buildLoadedLists(context, s.userTemplates),
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
          return TemplatePageMenueStrings.choises.map((menueOption) {
            return PopupMenuItem<String>(value: menueOption,
                                        child: Text(menueOption, style: TextStyle(fontSize: 10),),
            );
          }).toList();
      }
    
    );

  }
   navigateToCreateListScreen(BuildContext context) {
     widget.createlistBloc.add(CreatelistEvent.startTemplateCreation());
     Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  //value: BlocProvider.of<CreatelistBloc>(context),
                  value:widget.createlistBloc,
                  child: CreateListPage(widget.activelistBloc, BlocProvider.of<TemplateBloc>(context)),
                ),
              ),
      );
   }

  _onSelectMenueItem(String choice){
      if(choice == TemplatePageMenueStrings.CREATE_NEW_TEMPLATE){
        navigateToCreateListScreen(context);
      }else{
        print("not supported");
      }
  }

  Widget buildLoadedLists(BuildContext context, List<ListTemplate> lists){
    lists.sort((l1, l2) => l1.position.compareTo(l2.position));
    final int listCount = lists.length;
    return ListView.builder(itemBuilder: ( context, i){
                              return  Container(alignment: Alignment.center, 
                                                margin: EdgeInsets.all(1),
                                               
                                                child: ExpansionTile( 
                                                          leading: _buildMainItemExpandableTrailing(lists[i], context),
                                                          title: _buildMainItemExpandableTitle(lists[i], context),
                                                          children: [ _buildSubElements(context,  lists[i], lists[i].templatePositions)],
                                                )
                              );
                          },
                           itemCount: listCount,
                           shrinkWrap: false,
                           );
  }

  Widget _buildMainItemExpandableIcon(ListTemplate list, BuildContext context){
    Icon leadingIcon;
    if(list.type == ListType.todo()){
      leadingIcon = Icon(Icons.playlist_add_check);
    }else{
      leadingIcon = Icon(Icons.lightbulb_outline);
    }
    return  leadingIcon;
  }

  Widget _buildMainItemExpandableTitle(ListTemplate list, BuildContext context){
    
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
  _buildMainItemExpandableTrailing(ListTemplate list, BuildContext context){
    
    const String locale = "de";
    
    return PopupMenuButton(
                          child: _buildMainItemExpandableIcon(list, context),
                          onSelected: (element){
                            if(element == MainTemplateItemMenueStr.DELETE){
                              BlocProvider.of<TemplateBloc>(context)..add(TemplateEvent.deleteTemplate(list: list));
                            }else if(element == MainTemplateItemMenueStr.EDIT){
                              BlocProvider.of<CreatelistBloc>(context)..add(CreatelistEvent.editTemplate(template: list));
                              navigateToCreateListScreen(context);
                            }
                          },
                          itemBuilder: (context) {
                              return <PopupMenuItem>[
                                          new PopupMenuItem(
                                                value: MainTemplateItemMenueStr.DELETE,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.delete),
                                                              Text("  ${MainTemplateItemMenueStr.buildLocalName(MainTemplateItemMenueStr.DELETE, locale)}"),
                                                        ],
                                                      )
                                          ),
                                          new PopupMenuItem(
                                                value: MainTemplateItemMenueStr.EDIT,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.edit),
                                                              Text("  ${MainTemplateItemMenueStr.buildLocalName(MainTemplateItemMenueStr.EDIT, locale)}"),
                                                        ],
                                                      )
                                          )
                                      ];
                          },
                        );
  }
 

  Widget _buildSubElements(BuildContext ontext, ListTemplate list, List<ListTemplatePosition> listItems){
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

  Widget _buildActiveListItem(BuildContext context, ListTemplate list, ListTemplatePosition listPosition){
    return ListTile(title: Text(listPosition.name));
  }
}




class TemplateStrings implements ListopolisString{
  static const APP_BAR_TITLE = "Deine Listen-Vorlagen";
}

class TemplatePageMenueStrings{
  static const String CREATE_NEW_TEMPLATE = "Vorlage anlegen";
  static const List<String> choises = [CREATE_NEW_TEMPLATE];
}
class MainTemplateItemMenueStr{
  static const String EDIT = "edit";
  static const String DELETE = "delete";

  static String buildLocalName(String str, String locale){
    if(locale == "de"){
      if(str == EDIT)
        return "Bearbeiten";
      else if(str == DELETE)
        return "Löschen";
    }
    return str;

  }
}