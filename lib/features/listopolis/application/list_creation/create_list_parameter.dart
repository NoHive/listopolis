import 'package:flutter/material.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:uuid/uuid.dart';

enum PositionType{start, end}

String buildPositionTypeLocalString(PositionType pType, String locale){
  String lString;
  if(pType == PositionType.end)
    lString = "Ende";
  else
    lString = "Anfang";

    return lString;
}

class CreateListParameter{
  String listName;
  ListType type;
  PositionType positioning;
  String id;

  List<CreateListItemParameter> listitems;

  CreateListParameter({@required this.listName, @required this.type, @required this.positioning}){
    listitems = [];
    id = Uuid().v1();
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
      listitems.add(CreateListItemParameter(position: 1, name: ""));
    }else{
      for(CreateListItemParameter item in listitems){
        if(item.position >= insertIndex){
          item.position = item.position + 1;
        }
      }
      listitems.add(CreateListItemParameter(position: insertIndex, name: ""));
    }
  }
   void reoveListPositionAtIndex(int index){
    
      listitems.removeWhere((element) => element.position == index);
      for(CreateListItemParameter item in listitems){
        if(item.position > index){
          item.position = item.position - 1;
        }
      }
   }
  
  CreateListItemParameter _findAtPos(int idx){
    return listitems[idx];
  }
  void reorderListPosition(int oldIndex, int newIndex){
      
      CreateListItemParameter changeOnItem = _findAtPos(oldIndex);
      int oldPosition = changeOnItem.position;
      int newPosition = newIndex+1;
      if(newPosition < oldPosition){
        for(CreateListItemParameter item in listitems){
          
            if(item.position >= newPosition && item.position < oldPosition){
              item.position = item.position + 1;
            }
          
        }
      
      }else{
        newPosition = newIndex;
        for(CreateListItemParameter item in listitems){
          
            if(item.position <= newPosition && item.position > oldPosition){
              item.position = item.position -1;
            }
          
        }
      
      }
        changeOnItem.position = newPosition;
      
    
  }
  List<CreateListItemParameter> getSorted(){
    listitems.sort((a,b) => a.position.compareTo(b.position));
    return listitems;
  }

}
class CreateListItemParameter{
  String name;
  int position;
  String id;
  CreateListItemParameter({@required this.name, @required this.position}){
    id = Uuid().v1();
  }

}