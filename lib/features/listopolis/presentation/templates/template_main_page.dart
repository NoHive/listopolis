

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
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';

class TemplateMainPage extends StatefulWidget {
  final CreatelistBloc createlistBloc;
  final ActivelistBloc activelistBloc;
  TemplateMainPage(this.activelistBloc, this.createlistBloc, {Key key}) : super(key: key);

  @override
  _TemplateMainPageState createState() => _TemplateMainPageState();
}
enum PositionType{start, end}
class _TemplateMainPageState extends State<TemplateMainPage> with CommonPageFunctions {
  
  String lastEditedTemplateName;
  PositionType posType;
  
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
        backgroundColor: ListColors.APP_BAR_COLOR,
        title: Text(TemplateStrings.APP_BAR_TITLE, style: ListColors.DEF_TEXT_STYLE,),
        actions: <Widget>[_buildOverflowMenue(context)],
    ),
    body: Container(
      color: ListColors.LIST_BACKGROUND,
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
      color: ListColors.DIALOG_BACKGROUND,
      onSelected: _onSelectMenueItem,
      itemBuilder: (BuildContext context){
          return TemplatePageMenueStrings.choises.map((menueOption) {
            return PopupMenuItem<String>(value: menueOption,
                                        child: Text(menueOption, style: TextStyle(fontSize: 10, color: ListColors.TEXT),),
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
   navigateToEditListScreen(BuildContext context, ListTemplate templateForEdit) {
     widget.createlistBloc.add(CreatelistEvent.editTemplate(template: templateForEdit));
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
    _deleteTemplate(BuildContext context, ListTemplate template){
    TemplateBloc templateBloc = BlocProvider.of<TemplateBloc>(context);
    showDialog(context: context,
    builder: (context) {
      return AlertDialog(actions: [
          MaterialButton(onPressed: (){
            templateBloc.add(TemplateEvent.deleteTemplate(list: template));
            Navigator.of(context).pop();
          },
              child: Text("Ja, Vorlage löschen", style: ListColors.DEF_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          ),
          MaterialButton(onPressed: (){Navigator.pop(context);},
              child: Text("Ups...nee bitte nicht!", style: ListColors.DEF_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          )
      ],
      content: Text("Willst du die Vorlage wirklich löschen?", style: ListColors.DEF_TEXT_STYLE),
      backgroundColor: ListColors.DIALOG_BACKGROUND,
      );
    },
    );
  }

   
    useTemplateAsList(BuildContext context, ListTemplate templateForEdit) {
      widget.createlistBloc.add(CreatelistEvent.useTemplateAsList(template: templateForEdit));
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
                                                decoration: BoxDecoration(gradient: ListColors.LIST_ITEM_GRADIENT),
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
      leadingIcon = Icon(Icons.playlist_add_check, color: ListColors.LIST_ICON_TODO,);
    }else{
      leadingIcon = Icon(Icons.lightbulb_outline, color: ListColors.LIST_ICON_REMEMBER);
    }
    return  leadingIcon;
  }

  Widget _buildMainItemExpandableTitle(ListTemplate list, BuildContext context){
    
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          //leadingIcon,
          Text(list.name, style: ListColors.DEF_TEXT_STYLE)
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
                          color: ListColors.DIALOG_BACKGROUND,
                          child: _buildMainItemExpandableIcon(list, context),
                          onSelected: (element){
                            if(element == MainTemplateItemMenueStr.DELETE){
                              _deleteTemplate(context, list);
                            }else if(element == MainTemplateItemMenueStr.EDIT){
                              navigateToEditListScreen(context, list);
                            }else if(element == MainTemplateItemMenueStr.CREATE_LIST){
                              useTemplateAsList(context, list);
                            }
                          },
                          itemBuilder: (context) {
                              return <PopupMenuItem>[
                                          new PopupMenuItem(
                                                value: MainTemplateItemMenueStr.DELETE,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.delete, color: ListColors.ICON_DELTE,),
                                                              Text("  ${MainTemplateItemMenueStr.buildLocalName(MainTemplateItemMenueStr.DELETE, locale)}", style: ListColors.DEF_TEXT_STYLE),
                                                        ],
                                                      )
                                          ),
                                          new PopupMenuItem(
                                                value: MainTemplateItemMenueStr.EDIT,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.edit, color: ListColors.ICON_EDIT),
                                                              Text("  ${MainTemplateItemMenueStr.buildLocalName(MainTemplateItemMenueStr.EDIT, locale)}",  style: ListColors.DEF_TEXT_STYLE),
                                                        ],
                                                      )
                                          ),
                                          new PopupMenuItem(
                                                value: MainTemplateItemMenueStr.CREATE_LIST,
                                                child: Row(
                                                         children: <Widget>[
                                                              Icon(Icons.playlist_add, color: ListColors.ICON_TAKE_LIST),
                                                              Text("  ${MainTemplateItemMenueStr.buildLocalName(MainTemplateItemMenueStr.CREATE_LIST, locale)}",  style: ListColors.DEF_TEXT_STYLE),
                                                        ],
                                                      )
                                          )
                                      ];
                          },
                        );
  }
 

  Widget _buildSubElements(BuildContext ontext, ListTemplate list, List<ListTemplatePosition> listItems){
    final int listCount = listItems.length;
    

    //return Container(child:  Text("egal"));
    // result.add(
     
     return ListView.builder(itemBuilder: ( context, i){
                              return  Container(decoration: BoxDecoration(gradient: ListColors.LIST_ITEM_GRADIENT),
                                                alignment: Alignment.center, 
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
    //return ListTile(title: Text(listPosition.name, style: ListColors.DEF_TEXT_STYLE));
    return _buildListItemElement(listPosition);
  }
  Widget _buildListItemElement(ListTemplatePosition listPosition){
    return  
           Container(
            
        decoration: BoxDecoration(
                      gradient: ListColors.LIST_ITEM_GRADIENT,
                      border: Border(top: BorderSide(width: 1))
                    ),
        child: ListTile(title: Text(listPosition.name, style: ListColors.DEF_TEXT_STYLE), ),
      
    );
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
  static const String CREATE_LIST = "create_list";

  static String buildLocalName(String str, String locale){
    if(locale == "de"){
      if(str == EDIT)
        return "Bearbeiten";
      else if(str == DELETE)
        return "Löschen";
      else if(str == CREATE_LIST)
        return "Als Liste übernehmen";
    }
    return str;

  }
}