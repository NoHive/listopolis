import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/core/localization/localization.dart';
import 'package:listopolis/features/listopolis/application/active_lists/activelist_bloc.dart';
import 'package:listopolis/features/listopolis/application/authentication/authentication_bloc.dart';
import 'package:listopolis/features/listopolis/application/connectivity/connectivity_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/application/list_creation/createlist_bloc.dart';
import 'package:listopolis/features/listopolis/application/list_creation/list_creation_mode.dart';
import 'package:listopolis/features/listopolis/application/online_lists/onlinelists_bloc.dart';
import 'package:listopolis/features/listopolis/application/templates/template_bloc.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/presentation/authentication/authentication_screen.dart';
import 'package:listopolis/features/listopolis/presentation/color_constants.dart';
import 'package:listopolis/features/listopolis/presentation/common_page_functions.dart';
import 'package:listopolis/features/listopolis/presentation/online_lists/online_list_screen.dart';



class CreateListPage extends StatefulWidget  {
  final ActivelistBloc activelistBloc;
  final TemplateBloc templateBloc;
  CreateListPage(this.activelistBloc, this.templateBloc, {Key? key}) : super(key: key);
  
  @override
  _CreateListPageState createState() => _CreateListPageState();
}

class _CreateListPageState extends State<CreateListPage> with WidgetsBindingObserver, CommonPageFunctions{

  String? currentlistName;
  ListType? currentListType;
  PositionType? currentPositionType;
  CreateListParameter? currentCreatedList;
  BuildContext? ctxLastBuild;
  //  @override
  // void didChangeDependencies() {
  //   super.didChangeDependencies();
  //   if(! BlocProvider.of<CreatelistBloc>(context).isListEditing){
  //   BlocProvider.of<CreatelistBloc>(context)
  //     ..add(CreatelistEvent.startListCreation());
  //   }
  // }


  String currentListNameChanges = "";

  TextEditingController listNameController = TextEditingController(
    text: "egal",

  );
 
  List<TextEditingController> controllerList = [];

  bool canReturn = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
     WidgetsBinding.instance.addObserver(this);
  }  

  @override
  void dispose() {
    // TODO: implement dispose
    listNameController.dispose();
    controllerList.forEach((controller) { controller.dispose(); });
    WidgetsBinding.instance.removeObserver(this);
    print("Create List-Screen disposed");
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    // TODO: implement didChangeAppLifecycleState
    print("Create List-Screen State changed to $state");
    // if(state == AppLifecycleState.paused ){
    //   if(ctxLastBuild != null){
    //     BuildContext ctxLokal = ctxLastBuild!;
    //      _acceptListChanges(ctxLokal);
    //     canReturn = true;
    //     Navigator.of(ctxLokal).pop();
    //   }
    // }
    
    super.didChangeAppLifecycleState(state);
  }
  
   void didChangeDependencies() {
    super.didChangeDependencies();
 
    BlocProvider.of<AuthenticationBloc>(context)
      ..add(AuthenticationEvent.requestedSignInStatus());
  }

  @override
  Widget build(BuildContext context) {
    ctxLastBuild = context;
    return WillPopScope (
          onWillPop: (){return Future.value(canReturn);},
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

  ToggleButtons buildToggleButtons(CreateListParameter? createListParam, List<bool> selected, BuildContext context){
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
          if(createListParam != null){
            if(idx == 0){
              aBloc.add(CreatelistEvent.switchViewToReorder(listParam: createListParam));
            }else{
              aBloc.add(CreatelistEvent.switchViewToCreation(listParam: createListParam));
            }
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
                initial: (s) => buildToggleButtons(null, [false, true], context),
                listChanged: (s) => buildToggleButtons(s.creationParam, [false, true], context),
                switchedToCreate: (s) => buildToggleButtons(s.creationParam, [false, true], context),
                switchedToReorder:  (s) => buildToggleButtons(s.creationParam, [true, false], context)
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
      canReturn = true;
     CreatelistBloc createListBloc = BlocProvider.of<CreatelistBloc>(context);
    showDialog(context: context,
    builder: (ctx) {

      if(createListBloc.isListCreation() || createListBloc.editMode == ListEditMode.transferTemplateToList()){
        return AlertDialog(
        backgroundColor: ListColors.DIALOG_BACKGROUND,
        actions: [
          MaterialButton(onPressed: (){
            _acceptListChanges(context);

             if(createListBloc.isListEdit())
              _returnToPreviousScreen(context);
            else if(createListBloc.isListCreation())
              _returnToPreviousScreen(context);
           else if(createListBloc.isTemplateCreation())
            _returnToPreviousScreen(context);
          else if(createListBloc.isTemplateEdit())
            _returnToPreviousScreen(context);
          else if(createListBloc.isListTransfer())
            _returnToListScreen(context);
          else if(createListBloc.editMode == ListEditMode.onlinelistEditing())
            _returnToPreviousScreen(context);
          },
              child: Text("Als Liste Übernehmen",style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          ),
           MaterialButton(
             onPressed: (){
               AuthenticationBloc authBloc = BlocProvider.of<AuthenticationBloc>(context);
               ConnectivityBloc connectivityBloc = BlocProvider.of<ConnectivityBloc>(context);
               if(connectivityBloc.state == ConnectivityState.online()){
                  if(authBloc.state == AuthenticationState.signedIn()){
                    _acceptOnlineListChanges(context);
                    Navigator.pop(context);
                    _navigateToOnlineListScreen(context);
                  }
                  else{
                    Navigator.pop(context);
                    _navigateToAuthenticationScreen(context);
                  }
               }else{
                 showOfflineDialog(context);
               }
              
              //Navigator.of(context).pop();
              
              },
              child: Text("Als Online Liste Übernehmen", style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          ),
          MaterialButton(onPressed: (){Navigator.pop(context);Navigator.of(context).pop();},
              child: Text("Verwerfen", style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          ),
         
      ],
      content: Text("Soll die Liste übernommen werden?", style: ListColors.DEF_TEXT_STYLE),
      );
      }else{
        return AlertDialog(
        backgroundColor: ListColors.DIALOG_BACKGROUND,
        actions: [
          MaterialButton(onPressed: (){
            _acceptListChanges(context);

             if(createListBloc.isListEdit())
              _returnToPreviousScreen(context);
            else if(createListBloc.isListCreation())
              _returnToPreviousScreen(context);
           else if(createListBloc.isTemplateCreation())
            _returnToPreviousScreen(context);
          else if(createListBloc.isTemplateEdit())
            _returnToPreviousScreen(context);
          else if(createListBloc.isListTransfer())
            _returnToListScreen(context)(context);
          else if(createListBloc.editMode == ListEditMode.onlinelistEditing())
            _returnToPreviousScreen(context);
          },
              child: Text("Übernehmen",style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          ),
           
          MaterialButton(onPressed: (){Navigator.pop(context);Navigator.of(context).pop();},
              child: Text("Verwerfen", style: ListColors.DEF_DIALOG_TEXT_STYLE),
              color: ListColors.DIALOG_BUTTON,
          ),
         
      ],
      content: Text("Soll die Liste übernommen werden?", style: ListColors.DEF_TEXT_STYLE),
      );
      }
    },
    );
  }

 _navigateToAuthenticationScreen(BuildContext context) {
     //BlocProvider.of<OnlinelistsBloc>(context)..add(OnlinelistsEvent.authenticateUser());
     //BlocProvider.of<OnlinelistsBloc>(context)..add(OnlinelistsEvent.listViewRequested());
     Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => BlocProvider.value(
                  value: BlocProvider.of<AuthenticationBloc>(context),
                  child: AuthenticationScreen(),
                ),
              ),
      );
   }

  _navigateToOnlineListScreen(BuildContext context) {
      //BlocProvider.of<CreatelistBloc>(context).add(CreatelistEvent.startListCreation());
     Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => BlocProvider.value( 
                  value: BlocProvider.of<OnlinelistsBloc>(context),
                  child: OnlineListScreen(),
                ),
              ),
      );
   }

  void _acceptListChanges(BuildContext context){

    CreatelistBloc createListBloc = BlocProvider.of<CreatelistBloc>(context);
    if(createListBloc.isListEdit()){
        ActiveList? actList = createListBloc.editList;
        createListBloc.editList = null;
        if(actList != null)
          widget.activelistBloc.add(ActivelistEvent.replaceActiveList(listParameter: currentCreatedList!, list: actList));
        
    }else if(createListBloc.isListCreation()){
      widget.activelistBloc.add(ActivelistEvent.insertNewList(listParameter: currentCreatedList!));
    }else if(createListBloc.isTemplateCreation()){
      widget.templateBloc.add(TemplateEvent.insertNewTemplate(listParameter: currentCreatedList!));
    }else if(createListBloc.isTemplateEdit()){
      ListTemplate? aListTemplate = createListBloc.editTemplate;
      if(aListTemplate != null)
        widget.templateBloc.add(TemplateEvent.replaceTemplate(listParameter: currentCreatedList!, list: aListTemplate));
    }else if(createListBloc.isListTransfer()){
      widget.activelistBloc.add(ActivelistEvent.insertNewList(listParameter: currentCreatedList!));
    }else if(createListBloc.editMode == ListEditMode.onlinelistEditing()){
         ActiveList? actList = createListBloc.editList;
        createListBloc.editList = null;
      OnlinelistsBloc onlinelistsBloc = BlocProvider.of<OnlinelistsBloc>(context);
      if(actList != null)
        onlinelistsBloc..add(OnlinelistsEvent.overwriteList(list: actList, changedList: currentCreatedList! ));
    }
  }
  void _acceptOnlineListChanges(BuildContext context){

    CreatelistBloc createListBloc = BlocProvider.of<CreatelistBloc>(context);
    OnlinelistsBloc onlinelistsBloc = BlocProvider.of<OnlinelistsBloc>(context);

    if(createListBloc.isListCreation()){
      onlinelistsBloc.add(OnlinelistsEvent.insertNewList(aNewList: currentCreatedList!));
    }else if(createListBloc.isListTransfer()){
      onlinelistsBloc.add(OnlinelistsEvent.insertNewList(aNewList: currentCreatedList!));
    }
  }

  Widget showEditList(BuildContext context, CreateListParameter list){
   currentCreatedList = list;
   List<Widget> widgets = [
                 _buildListName(context, list ),
                // _buildListType(context, list),
                // _buildAppendType(context, list),
                _buildListTypeAndPosType(context, list)
                  
    ];
    widgets.add( Container(child: _buildListItems(context, list, list.getSorted()),));
    return  Container(
      decoration: BoxDecoration(gradient: ListColors.LIST_ITEM_GRADIENT),
      child: ListView(children: widgets, physics: ClampingScrollPhysics(),));

  }
   Widget showReorderList(BuildContext context, CreateListParameter list){
     currentCreatedList = list;
    return Container(
      decoration: BoxDecoration(gradient: ListColors.LIST_ITEM_GRADIENT),
      child: _buildReorderList(context, list, list.getSorted(), _buildListName(context, list )));
  }
  Widget _buildListName(BuildContext context, CreateListParameter list){
      currentlistName = list.listName;
      listNameController.addListener(() { list.listName = listNameController.text;});

       return// Expanded(child: 
            Padding(padding: EdgeInsets.fromLTRB(5, 5, 5, 0), child:
              TextField(
                          onSubmitted: (value){ 
                            currentlistName=value; 
                            list.listName = value;
                          _commitListChanges(context, list);
                          },
                          textInputAction: TextInputAction.search,
                          controller: listNameController..text = currentlistName!,
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
          _buildAppendType(context, list),
          _buildRepeatOption(context, list)
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
                                    if(value is ListType?){
                                      currentListType = value;
                                      list.type = value!;
                                      _commitListChanges(context, list);
                                    }
                                  },
                                  value: currentListType,
                              ),
                    ),
                ]
          )
      );

  }

  _commitListChanges(BuildContext context, CreateListParameter param){
    currentListNameChanges = "";
    CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
     aBloc.add(CreatelistEvent.changeList(listParam: param));
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
                                if(value is PositionType?){
                                  currentPositionType = value;
                                  list.positioning = value!;
                                  _commitListChanges(context, list);
                                }
                              },
                              value: currentPositionType,
                              hint: Text(CreateListPageStrings.LIST_POSITIONING, style: TextStyle(color: ListColors.TEXTCOLOR_ON_LIGHT_BG)),
                          ),
                  ),
                ]
                ),
      );
  }

 Widget _buildListItems(BuildContext context, CreateListParameter list, List<CreateListItemParameter> listitems){
     return ListView.builder(itemBuilder: (context, index){
       return  _buildListItemInput(context, list, listitems[index]);
    },
    itemCount: listitems.length
    ,shrinkWrap: true
    ,physics: ClampingScrollPhysics());
    

 }
  Widget _buildReorderList(BuildContext context, CreateListParameter list, List<CreateListItemParameter> listitems, Widget headerWidget){
    
    List<Widget> childrenWidgets = _buildReorderListItems(listitems, context);
    
    return Theme(data: ThemeData(canvasColor: Colors.transparent), 
    child: ReorderableListView(
             // header: headerWidget,
              children: childrenWidgets,
              onReorder: (oldIdx, newIdx){
                  CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
                  aBloc.add(CreatelistEvent.changeListItemOrder(listParam: list, oldIndex: oldIdx, newIndex: newIdx));
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
 String _stringOrEmpty(String? inhalt){
   if(inhalt != null)
      return inhalt;
  else
    return "";
 }
 Widget _buildListItemInput(BuildContext context, CreateListParameter list, CreateListItemParameter listItem){
   TextEditingController listItemTextController = TextEditingController();
   listItemTextController.addListener(() { listItem.name = listItemTextController.text;});
   controllerList.add(listItemTextController);
   currentlistName = listItem.name;
            return Container(
              decoration: BoxDecoration(border: Border(top: BorderSide(width: 1))),
              child: ListTile(
                key: ValueKey(listItem.id),
                leading: _buildRemovePosition(list, listItem, context),
                title: TextField(
                            onSubmitted: (value){ currentlistName=value; listItem.name=value;},
                            textInputAction: TextInputAction.search,
                            controller: listItemTextController..text = _stringOrEmpty(currentlistName) ,
                            cursorColor: ListColors.TEXT,
                            style: TextStyle(color: ListColors.TEXT),
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                              labelText: "${CreateListPageStrings.LIST_POSITION} ${listItem.position}",
                              labelStyle: TextStyle(color:  ListColors.TEXT),
                              
                            ),
              ),
              trailing: _buildCreatePosition(list, listItem, context),
              ),
            );
 }
 Widget _buildCreatePosition(CreateListParameter list, CreateListItemParameter listItem, BuildContext context){
    return IconButton(icon: Icon(Icons.add, color: ListColors.ICON_TAKE_LIST,),
    onPressed: (){
        CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
        aBloc.add(CreatelistEvent.addListPositionAfter(listParam: list, index: listItem.position));
     },
    );
 }
  Widget _buildRemovePosition(CreateListParameter list, CreateListItemParameter listItem, BuildContext context){
    return IconButton(icon: Icon(Icons.delete, color:Colors.red),
    
    onPressed: (){
        
          CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
          aBloc.add(CreatelistEvent.removeListPosition(listParam: list, index: listItem.position));
        
     },
    );
 }
 
  Widget _buildRepeatOption(BuildContext context, CreateListParameter list) {
    return Padding(padding: EdgeInsets.only(top:10, left:20),
            child: Stack(
              children: [
                Text("Wiederholen", style: TextStyle(fontSize: 10, color: ListColors.TEXT),),
                Switch(value: list.repeat, onChanged: (value) {
                        list.repeat = value;
                        _commitListChanges(context, list);
                        },
                      )
              ],
            )
    );
    // return Switch(value: list.repeat, onChanged: (value) {
    //   list.repeat = value;
    //   _commitListChanges(context, list);
    // },);

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
  static const LIST_POSITION = "LP";
}