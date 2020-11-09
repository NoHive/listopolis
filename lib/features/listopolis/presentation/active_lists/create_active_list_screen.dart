import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/core/localization/localization.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/application/templates/template_bloc.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';



class CreateListPage extends StatefulWidget  {
  final ActivelistBloc activelistBloc;
  final TemplateBloc templateBloc;
  CreateListPage(this.activelistBloc, this.templateBloc, {Key key}) : super(key: key);
  
  @override
  _CreateListPageState createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> with CommonPageFunctions{

  String currentlistName;
  ListType currentListType;
  PositionType currentPositionType;
  CreateListParameter currentCreatedList;
  //  @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   if(! BlocProvider.of<CreatelistBloc>(context).isListEditing){
  //   BlocProvider.of<CreatelistBloc>(context)
  //     ..add(CreatelistEvent.startListCreation());
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return WillPopScope (
          onWillPop: (){return Future.value(true);},
          child: Scaffold(
        appBar: AppBar(
          backgroundColor: ListColors.APP_BAR_COLOR,
          leading: IconButton(
                    icon: Icon(Icons.arrow_back), 
                    onPressed: () => _returnToMainScreenAskSave(context)                    
                  ),
          title: _buildAppBar(context),
          actions: [appBarToggles(context)],
        ),
      body: Container(
        color: ListColors.LIST_BACKGROUND,
         child: BlocBuilder<CreatelistBloc, CreatelistState>
            (builder: (context, state){
              return state.map(
                initial: (s) => showLoadingIndicator(),
                listChanged: (s) => showEditList(context, s.creationParam),
                switchedToCreate: (s) => showEditList(context, s.creationParam),
                switchedToReorder:  (s) => showReorderList(context, s.creationParam)
              );
            }
            ,),
      )),
    );
  }

  ToggleButtons buildToggleButtons(List<bool> selected, BuildContext context){
    List<Widget> toggleItems = [
      Icon(Icons.swap_vert),
      Icon(Icons.list)
    ];
    return ToggleButtons(
        children: toggleItems,
        isSelected: selected,
        selectedColor: ListColors.ICON_ACTIVE_LIST_CEATION_MODE,
        //color: Colors.lightBlue,
        onPressed: (idx){
          
          CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
          if(idx == 0){
            aBloc.add(CreatelistEvent.switchViewToReorder());
          }else{
            aBloc.add(CreatelistEvent.switchViewToCreation());
          }
          // setState(() {
            
          // });
        },
    );
  }

  Widget appBarToggles(BuildContext context){
    
  return BlocBuilder<CreatelistBloc, CreatelistState>
            (builder: (context, state){
              return state.map(
                initial: (s) => buildToggleButtons([false, true], context),
                listChanged: (s) => buildToggleButtons([false, true], context),
                switchedToCreate: (s) => buildToggleButtons([false, true], context),
                switchedToReorder:  (s) => buildToggleButtons([true, false], context)
              );
            }
            );
   
  }

  Widget _buildAppBar(BuildContext context){
    String txt;
    CreatelistBloc listBloc = BlocProvider.of<CreatelistBloc>(context);
    if(listBloc.isListCreation())
      txt = CreateListPageStrings.APP_BAR_TITLE_LIST;
    else if(listBloc.isListEdit())
      txt = CreateListPageStrings.APP_BAR_TITLE_LIST_EDIT;
    else if( listBloc.isTemplateCreation())
      txt = CreateListPageStrings.APP_BAR_TITLE_TEMPLATE;
    else if(listBloc.isTemplateEdit())
      txt = CreateListPageStrings.APP_BAR_TITLE_TEMPLATE_EDIT;
    else if(listBloc.isListTransfer())
      txt = CreateListPageStrings.APP_BAR_TITLE_TEMPLATE_TO_LIST;
    else
      txt = "something ist wrong!";

    return Column(crossAxisAlignment: CrossAxisAlignment.start, 
                  children:<Widget>[ 
                                SingleChildScrollView(scrollDirection: Axis.horizontal, child: Text(txt, style: ListColors.DEF_TEXT_STYLE,),)
                  ]
    );

  }
  _returnToPreviousScreen(BuildContext context){
              Navigator.of(context).pop();
              Navigator.of(context).pop();
  }
  _returnToListScreen(BuildContext context){
              Navigator.of(context).pop();
              Navigator.of(context).pop();
              Navigator.of(context).pop();
  }
  _returnToMainScreenAskSave(BuildContext context){
    CreatelistBloc createListBloc = BlocProvider.of<CreatelistBloc>(context);
    showDialog(context: context,
    builder: (context) {
      return AlertDialog(
        backgroundColor: ListColors.DIALOG_BACKGROUND,
        actions: [
          MaterialButton(onPressed: (){
              
              if(createListBloc.isListEdit()){
                  ActiveList actList = createListBloc.editList;
                  // createListBloc.isListEditing = false;
                  createListBloc.editList = null;
                  widget.activelistBloc.add(ActivelistEvent.replaceActiveList(listParameter: currentCreatedList, list: actList));
                  _returnToPreviousScreen(context);
              }else if(createListBloc.isListCreation()){
                widget.activelistBloc.add(ActivelistEvent.insertNewList(listParameter: currentCreatedList));
                _returnToPreviousScreen(context);
              }else if(createListBloc.isTemplateCreation()){
                widget.templateBloc.add(TemplateEvent.insertNewTemplate(listParameter: currentCreatedList));
                _returnToPreviousScreen(context);
              }else if(createListBloc.isTemplateEdit()){
                widget.templateBloc.add(TemplateEvent.replaceTemplate(listParameter: currentCreatedList, list: createListBloc.editTemplate));
                _returnToPreviousScreen(context);
              }else if(createListBloc.isListTransfer()){
                widget.activelistBloc.add(ActivelistEvent.insertNewList(listParameter: currentCreatedList));
                _returnToListScreen(context)(context);
              }
              
          },
              child: Text("Übernehmen",style: ListColors.DEF_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          ),
          MaterialButton(onPressed: (){Navigator.pop(context);Navigator.of(context).pop();},
              child: Text("Verwerfen", style: ListColors.DEF_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          )
      ],
      content: Text("Soll die Liste übernommen werden?", style: ListColors.DEF_TEXT_STYLE),
      );
    },
    );
  }

  Widget showEditList(BuildContext context, CreateListParameter list){
   currentCreatedList = list;
   List<Widget> widgets = [
                 _buildListName(context, list ),
                // _buildListType(context, list),
                // _buildAppendType(context, list),
                _buildListTypeAndPosType(context, list)
                  
    ];
    widgets.add( Container(child: _buildListItems(context, list.getSorted()),));
    return  Container(
      decoration: BoxDecoration(gradient: ListColors.LIST_ITEM_GRADIENT),
      child: ListView(children: widgets, physics: ClampingScrollPhysics(),));

  }
   Widget showReorderList(BuildContext context, CreateListParameter list){
     currentCreatedList = list;
    return Container(
      decoration: BoxDecoration(gradient: ListColors.LIST_ITEM_GRADIENT),
      child: _buildReorderList(context, list.getSorted(), _buildListName(context, list )));
  }
  Widget _buildListName(BuildContext context, CreateListParameter list){
      currentlistName = list.listName;
       return// Expanded(child: 
            Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 0), child:
              TextField(
                          onSubmitted: (value){ 
                            currentlistName=value; 
                            list.listName = value;
                          _commitListChanges(context);
                          },
                          textInputAction: TextInputAction.search,
                          controller: TextEditingController()..text = currentlistName,
                          cursorColor: ListColors.TEXT,
                          style: TextStyle(color: ListColors.TEXT),
                          decoration: InputDecoration(
                            hintText: CreateListPageStrings.LIST_NAME,
                            hintStyle: TextStyle(color: ListColors.TEXT),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                            labelText: CreateListPageStrings.LIST_NAME,
                            labelStyle: TextStyle(color:  ListColors.TEXT),
                            
                          ),
            ));
           // );

  }

  Widget _buildListTypeAndPosType(BuildContext context,  CreateListParameter list){
    return SingleChildScrollView(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _buildListType(context, list),
          _buildAppendType(context, list)
        ],
      ) ,
    );
  }
  
  Widget _buildListType(BuildContext context,  CreateListParameter list){
    List<ListType> listTypes =[ListType.remember(), ListType.todo()];
    currentListType =list.type;

      return  
      Padding(padding: EdgeInsets.only(top: 10, left: 10),
        child: 
          Stack(
                  children:[
                    Text("Listen-Typ", style: TextStyle(fontSize: 10, color: ListColors.TEXT),),
                    Container(
                        child: DropdownButton(
                          dropdownColor: ListColors.DIALOG_BACKGROUND,
                                  items:  listTypes.map((qpv){ 
                                    return DropdownMenuItem<ListType>(
                                              child: Text(ListType.buildLocalName( qpv, "de"), 
                                                          style: ListColors.DEF_TEXT_STYLE,
                                                      ), 
                                              value: qpv,
                                    );
                                  } ).toList(),
                                  onChanged: (value) {
                                    currentListType = value;
                                    list.type = value;
                                    _commitListChanges(context);
                                  },
                                  value: currentListType,
                              ),
                    ),
                ]
          )
      );

  }

  _commitListChanges(BuildContext context){

    CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
     aBloc.add(CreatelistEvent.changeList());
  }

  Widget _buildAppendType(BuildContext context,  CreateListParameter list){
    List<PositionType> listTypes =[PositionType.end, PositionType.start];
    currentPositionType =list.positioning;

      return  Padding(padding: EdgeInsets.only(top:10, left:20),
              child: Stack(
                children: [
                  Text("Einfügeposition", style: TextStyle(fontSize: 10, color: ListColors.TEXT),), 
                  Container(
                    child: DropdownButton(
                      dropdownColor: ListColors.DIALOG_BACKGROUND,
                              items: listTypes.map((qpv){ 
                                  return DropdownMenuItem<PositionType>(
                                            child: Text(buildPositionTypeLocalString( qpv, "de"), 
                                                        style: ListColors.DEF_TEXT_STYLE,
                                                    ), 
                                            value: qpv,
                                  );
                                  } 
                              ).toList(),
                              onChanged: (value) {
                                  currentPositionType = value;
                                  list.positioning = value;
                                  _commitListChanges(context);
                              },
                              value: currentPositionType,
                              hint: Text(CreateListPageStrings.LIST_POSITIONING, style: TextStyle(color: ListColors.TEXTCOLOR_ON_LIGHT_BG)),
                          ),
                  ),
                ]
                ),
      );
  }

 Widget _buildListItems(BuildContext context,  List<CreateListItemParameter> listitems){
     return ListView.builder(itemBuilder: (context, index){
       return  _buildListItemInput(context, listitems[index]);
    },
    itemCount: listitems.length
    ,shrinkWrap: true
    ,physics: ClampingScrollPhysics());
    

 }
  Widget _buildReorderList(BuildContext context,  List<CreateListItemParameter> listitems, Widget headerWidget){
    
    List<Widget> childrenWidgets = _buildReorderListItems(listitems, context);
    
    return Theme(data: ThemeData(canvasColor: Colors.transparent), 
    child: ReorderableListView(
             // header: headerWidget,
              children: childrenWidgets,
              onReorder: (oldIdx, newIdx){
                  CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
                  aBloc.add(CreatelistEvent.changeListItemOrder(oldIndex: oldIdx, newIndex: newIdx));
              },
          ));
 }
 List<Widget> _buildReorderListItems(List<CreateListItemParameter> listitems, BuildContext context){
    List<Widget> erg = [];
    for(CreateListItemParameter lItem in listitems){
      erg.add(_buildReorderListItem(context, lItem));
    }
     //listitems.map((e){_buildListItemInput(context, e);}).toList();
    return erg;
 }
  Widget _buildReorderListItem(BuildContext context, CreateListItemParameter listItem){
   currentlistName = listItem.name;
            return Container(
              key: ValueKey(listItem.id),
              decoration: BoxDecoration(border: Border(top: BorderSide(width: 1)) ),
              child: ListTile(
                title: Text("${listItem.position} - ${currentlistName}", style: ListColors.DEF_TEXT_STYLE,)
              
              ),
            );
 }
 Widget _buildListItemInput(BuildContext context, CreateListItemParameter listItem){
   currentlistName = listItem.name;
            return Container(
              decoration: BoxDecoration(border: Border(top: BorderSide(width: 1))),
              child: ListTile(
                key: ValueKey(listItem.id),
                leading: _buildRemovePosition(listItem, context),
                title: TextField(
                            onSubmitted: (value){ currentlistName=value; listItem.name=value;},
                            textInputAction: TextInputAction.search,
                            controller: TextEditingController()..text = currentlistName,
                            cursorColor: ListColors.TEXT,
                            style: TextStyle(color: ListColors.TEXT),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                              labelText: "${CreateListPageStrings.LIST_POSITION} ${listItem.position}",
                              labelStyle: TextStyle(color:  ListColors.TEXT),
                              
                            ),
              ),
              trailing: _buildCreatePosition(listItem, context),
              ),
            );
 }
 Widget _buildCreatePosition(CreateListItemParameter listItem, BuildContext context){
    return IconButton(icon: Icon(Icons.add, color: ListColors.ICON_TAKE_LIST,),
    onPressed: (){
        CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
        aBloc.add(CreatelistEvent.addListPositionAfter(index: listItem.position));
     },
    );
 }
  Widget _buildRemovePosition(CreateListItemParameter listItem, BuildContext context){
    return IconButton(icon: Icon(Icons.delete, color:Colors.red),
    
    onPressed: (){
        
          CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
          aBloc.add(CreatelistEvent.removeListPosition(index: listItem.position));
        
     },
    );
 }

  Widget showUpdatedList(BuildContext context){

  }

}

class CreateListPageStrings implements ListopolisString{
  static const APP_BAR_TITLE_LIST = "Liste erstellen";
  static const APP_BAR_TITLE_LIST_EDIT = "Liste bearbeiten";
  static const APP_BAR_TITLE_TEMPLATE = "Vorlage erstellen";
  static const APP_BAR_TITLE_TEMPLATE_EDIT = "Vorlage bearbeiten";
  static const APP_BAR_TITLE_TEMPLATE_TO_LIST = "als Liste übernehmen";
  static const LIST_NAME = "Listen-Name";
  static const LIST_TYPE = "Listen-Typ";
  static const LIST_POSITIONING = "Einfügen";
  static const LIST_POSITION = "Listenposition";
}