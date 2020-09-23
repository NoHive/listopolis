import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:listopolis/core/localization/localization.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
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

  String currentlistName;
  ListType currentListType;
  PositionType currentPositionType;
  
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
              listChanged: (s) => showEditList(context, s.creationParam), 
            );
          }
          ,),
    ));
  }

  Widget showEditList(BuildContext context, CreateListParameter list){
   List<Widget> widgets = [
                 _buildListName(context, list ),
                 _buildListType(context, list),
                 _buildAppendType(context, list),
                  
    ];
    widgets.add( Container(child: _buildListItems(context, list.listitems),));
    return ListView(children: widgets);
    
  }
  Widget _buildListName(BuildContext context, CreateListParameter list){
      currentlistName = list.listName;
       return// Expanded(child: 
            Padding(padding: EdgeInsets.fromLTRB(0, 5, 0, 0), child:
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
  Widget _buildListType(BuildContext context,  CreateListParameter list){
    List<ListType> listTypes =[ListType.remember(), ListType.todo()];
    currentListType =list.type;

      return  DropdownButton(
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
                    
                    // SampleBloc aBloc =  BlocProvider.of<SampleBloc>(context);
                    // aBloc.add(SampleValueChanged(measureSample:sample, samplingElement:samplingElement, value: value));
                  },
                  value: currentListType,
                  // hint: Text(ILMeasureDetailStrings.MESURE_QUALITATIVE_NO_VALUE, style: TextStyle(color: ILimsColors.TEXTCOLOR_ON_DARK_BG)),
                  // dropdownColor: ILimsColors.BLUE_TRANSPARENT,
      );

  }

  _commitListChanges(BuildContext context){

    CreatelistBloc aBloc =  BlocProvider.of<CreatelistBloc>(context);
     aBloc.add(CreatelistEvent.changeList());
  }

  Widget _buildAppendType(BuildContext context,  CreateListParameter list){
    List<PositionType> listTypes =[PositionType.end, PositionType.start];
    currentPositionType =list.positioning;

      return  DropdownButton(
                  items:  listTypes.map((qpv){ 
                            return DropdownMenuItem<PositionType>(
                                      child: Text(buildPositionTypeLocalString( qpv, "de"), 
                                                  style: TextStyle(color: ListColors.TEXTCOLOR_ON_LIGHT_BG),
                                              ), 
                                      value: qpv,
                            );
                          } ).toList(),
                    onChanged: (value) {
                    currentPositionType = null;
                    list.positioning = value;
                    _commitListChanges(context);
                    // SampleBloc aBloc =  BlocProvider.of<SampleBloc>(context);
                    // aBloc.add(SampleValueChanged(measureSample:sample, samplingElement:samplingElement, value: value));
                  },
                  value: currentPositionType,
                  hint: Text(CreateListPageStrings.LIST_POSITIONING, style: TextStyle(color: ListColors.TEXTCOLOR_ON_LIGHT_BG)),
                  
                  // dropdownColor: ILimsColors.BLUE_TRANSPARENT,
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
 Widget _buildListItemInput(BuildContext context, CreateListItemParameter listItem){
   currentlistName = listItem.name;
            return ListTile(title: 
              TextField(
                          onSubmitted: (value){ currentlistName=value; listItem.name=value;},
                          textInputAction: TextInputAction.search,
                          controller: TextEditingController()..text = currentlistName,
                          cursorColor: Colors.white,
                          style: TextStyle(color: ListColors.TEXTCOLOR_ON_LIGHT_BG),
                          decoration: InputDecoration(
                            hintText: CreateListPageStrings.LIST_POSITION,
                            hintStyle: TextStyle(color: Colors.white),
                            border: OutlineInputBorder(borderRadius: BorderRadius.circular(2)),
                            labelText: CreateListPageStrings.LIST_POSITION,
                            labelStyle: TextStyle(color:  ListColors.TEXTCOLOR_ON_LIGHT_BG),
                            
                          ),
            ),
            trailing: _buildCreatePosition(listItem, context),
            );
 }
 Widget _buildCreatePosition(CreateListItemParameter listItem, BuildContext context){
    return IconButton(icon: Icon(Icons.add),
    onPressed: (){},
    );
 }

  Widget showUpdatedList(BuildContext context){

  }

}

class CreateListPageStrings implements ListopolisString{
  static const APP_BAR_TITLE = "eine neue Liste erstellen";
  static const LIST_NAME = "Listen-Name";
  static const LIST_TYPE = "Listen-Typ";
  static const LIST_POSITIONING = "Einfügen";
  static const LIST_POSITION = "Listenposition";
}