import 'package:flutter/material.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';

enum PositionType{start, end}

String buildPositionTypeLocalString(PositionType pType, String locale){
  String lString;
  if(pType == PositionType.end)
    lString = "Anfang";
  else
    lString = "Ende";

    return lString;
}

class CreateListParameter{
  String listName;
  ListType type;
  PositionType positioning;

  List<CreateListItemParameter> listitems;

  CreateListParameter({@required this.listName, @required this.type, @required this.positioning}){
    listitems = [];
  }
  factory CreateListParameter.asCopy(CreateListParameter input){
    CreateListParameter newList = CreateListParameter(listName: input.listName, positioning: input.positioning, type: input.type);
    for(CreateListItemParameter item in input.listitems){
      newList.listitems.add(CreateListItemParameter(position: item.position, name: item.name));
    }
    return newList;
  }

}
class CreateListItemParameter{
  String name;
  int position;

  CreateListItemParameter({@required this.name, @required this.position});

}