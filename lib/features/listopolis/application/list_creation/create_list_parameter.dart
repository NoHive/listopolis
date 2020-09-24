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
  void addListPositionAfterIndex(int index){
    int insertIndex = index + 1;
    if(listitems.length == 0){
      listitems.add(CreateListItemParameter(position: 1, name: "neue Position"));
    }else{
      for(CreateListItemParameter item in listitems){
        if(item.position >= insertIndex){
          item.position = item.position + 1;
        }
      }
      listitems.add(CreateListItemParameter(position: insertIndex, name: "neue Position"));
    }
  }
  List<CreateListItemParameter> getSorted(){
    listitems.sort((a,b) => a.position.compareTo(b.position));
    return listitems;
  }

}
class CreateListItemParameter{
  String name;
  int position;

  CreateListItemParameter({@required this.name, @required this.position});

}