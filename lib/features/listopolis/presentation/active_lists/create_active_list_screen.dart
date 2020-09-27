import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/core/localization/localization.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';


class CreateListPage extends StatefulWidget  {
  final ActivelistBloc activelistBloc;
  CreateListPage(this.activelistBloc, {Key key}) : super(key: key);
  
  @override
  _CreateListPageState createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> with CommonPageFunctions{

  String currentlistName;
  ListType currentListType;
  PositionType currentPositionType;
  List<bool> selected = [false, true];
  CreateListParameter currentCreatedList;
   @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if(! BlocProvider.of<CreatelistBloc>(context).isListEditing){
    BlocProvider.of<CreatelistBloc>(context)
      ..add(CreatelistEvent.startListCreation());
    }
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope (
          onWillPop: (){return Future.value(true);},
          child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
                    icon: Icon(Icons.arrow_back), 
                    onPressed: () => _returnToMainScreenAskSave(context)                    
                  ),
          title: Text(CreateListPageStrings.APP_BAR_TITLE),
          actions: [appBarToggles(context)],
        ),
      body: Container(
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

  Widget appBarToggles(BuildContext context){
    List<Widget> toggleItems = [
      Icon(Icons.swap_vert),
      Icon(Icons.list)
    ];
    

    return ToggleButtons(
        children: toggleItems,
        isSelected: selected,
        selectedColor: Colors.black,
        color: Colors.lightBlue,
        highlightColor: Colors.cyanAccent,
        onPressed: (idx){
          print(idx);
          CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
          if(idx == 0){
            aBloc.add(CreatelistEvent.switchViewToReorder());
          }else{
            aBloc.add(CreatelistEvent.switchViewToCreation());
          }
          setState(() {
            
          });
        },
    );
  }

  _returnToMainScreenAskSave(BuildContext context){
    CreatelistBloc createListBloc = BlocProvider.of<CreatelistBloc>(context);
    showDialog(context: context,
    builder: (context) {
      return AlertDialog(actions: [
          MaterialButton(onPressed: (){
              
              if(createListBloc.isListEditing){
                  ActiveList actList = createListBloc.editList;
                  createListBloc.isListEditing = false;
                  createListBloc.editList = null;
                  widget.activelistBloc.add(ActivelistEvent.replaceActiveList(listParameter: currentCreatedList, list: actList));
              }else{
                widget.activelistBloc.add(ActivelistEvent.insertNewList(listParameter: currentCreatedList));
              }
              Navigator.of(context).pop();
              Navigator.of(context).pop();
          },
              child: Text("Übernehmen"),
          ),
          MaterialButton(onPressed: (){Navigator.pop(context);Navigator.of(context).pop();},
              child: Text("Verwerfen"),
          )
      ],
      content: Text("Soll die Liste übernommen werden?"),
      );
    },
    );
  }

  Widget showEditList(BuildContext context, CreateListParameter list){
   selected = [true, false];
   currentCreatedList = list;
   List<Widget> widgets = [
                 _buildListName(context, list ),
                // _buildListType(context, list),
                // _buildAppendType(context, list),
                _buildListTypeAndPosType(context, list)
                  
    ];
    widgets.add( Container(child: _buildListItems(context, list.getSorted()),));
    return ListView(children: widgets, physics: ClampingScrollPhysics(),);

  }
   Widget showReorderList(BuildContext context, CreateListParameter list){
     selected = [false, true];
     currentCreatedList = list;
    return _buildReorderList(context, list.getSorted(), _buildListName(context, list ));
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
                          cursorColor: Colors.white,
                          style: TextStyle(color: ListColors.TEXTCOLOR_ON_LIGHT_BG),
                          decoration: InputDecoration(
                            hintText: CreateListPageStrings.LIST_NAME,
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                            labelText: CreateListPageStrings.LIST_NAME,
                            labelStyle: TextStyle(color:  ListColors.TEXTCOLOR_ON_LIGHT_BG),
                            
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
                    Text("Listen-Typ", style: TextStyle(fontSize: 10),),
                    Container(
                        child: DropdownButton(
                                  items:  listTypes.map((qpv){ 
                                    return DropdownMenuItem<ListType>(
                                              child: Text(ListType.buildLocalName( qpv, "de"), 
                                                          style: TextStyle(color: ListColors.TEXTCOLOR_ON_LIGHT_BG),
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
                  Text("Einfügeposition", style: TextStyle(fontSize: 10),), 
                  Container(
                    child: DropdownButton(
                              items: listTypes.map((qpv){ 
                                  return DropdownMenuItem<PositionType>(
                                            child: Text(buildPositionTypeLocalString( qpv, "de"), 
                                                        style: TextStyle(color: ListColors.TEXTCOLOR_ON_LIGHT_BG),
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
    
    return ReorderableListView(
             // header: headerWidget,
              children: childrenWidgets,
              onReorder: (oldIdx, newIdx){
                  CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
                  aBloc.add(CreatelistEvent.changeListItemOrder(oldIndex: oldIdx, newIndex: newIdx));
              },
          );
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
            return ListTile(
              key: ValueKey(listItem.id),
              title: Text("${listItem.position} - ${currentlistName}")
            
            );
 }
 Widget _buildListItemInput(BuildContext context, CreateListItemParameter listItem){
   currentlistName = listItem.name;
            return ListTile(
              key: ValueKey(listItem.id),
              leading: _buildRemovePosition(listItem, context),
              title: TextField(
                          onSubmitted: (value){ currentlistName=value; listItem.name=value;},
                          textInputAction: TextInputAction.search,
                          controller: TextEditingController()..text = currentlistName,
                          cursorColor: Colors.white,
                          style: TextStyle(color: ListColors.TEXTCOLOR_ON_LIGHT_BG),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                            labelText: "${CreateListPageStrings.LIST_POSITION} ${listItem.position}",
                            labelStyle: TextStyle(color:  ListColors.TEXTCOLOR_ON_LIGHT_BG),
                            
                          ),
            ),
            trailing: _buildCreatePosition(listItem, context),
            );
 }
 Widget _buildCreatePosition(CreateListItemParameter listItem, BuildContext context){
    return IconButton(icon: Icon(Icons.add),
    onPressed: (){
        CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
        aBloc.add(CreatelistEvent.addListPositionAfter(index: listItem.position));
     },
    );
 }
  Widget _buildRemovePosition(CreateListItemParameter listItem, BuildContext context){
    return IconButton(icon: Icon(Icons.delete),
    
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
  static const APP_BAR_TITLE = "Liste erstellen";
  static const LIST_NAME = "Listen-Name";
  static const LIST_TYPE = "Listen-Typ";
  static const LIST_POSITIONING = "Einfügen";
  static const LIST_POSITION = "Listenposition";
}