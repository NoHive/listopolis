import 'package:flutter/material.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
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
  late String id;

  late List<CreateListItemParameter> listitems=[];

  CreateListParameter({required this.listName, required this.type, required this.positioning}){
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


  factory CreateListParameter.asEditFromList(ActiveList input){
    CreateListParameter newList = CreateListParameter(listName: input.name, positioning: PositionType.end, type: input.type);

    for(ActiveListPosition item in input.listItems){
      newList.listitems.add(CreateListItemParameter(position: item.position, name: item.name));
    }
    return newList;
  }
  factory CreateListParameter.asEditFromTemplate(ListTemplate input){
    CreateListParameter newList = CreateListParameter(listName: input.name, positioning: PositionType.end, type: input.type);

    for(ListTemplatePosition item in input.templatePositions){
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

   ListInsertResult createNeededUpdateOnInsert({required List<ActiveList> existingActiveLists}){
      List<ActiveList> neededUpates = [];
          
      int aNewPosition = 1;
      if(existingActiveLists.length > 0){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
        
        if(positioning == PositionType.start){
          neededUpates = existingActiveLists.map((e) => e.copyWith(position: e.position +1 )).toList();
          aNewPosition = 1;
        }else{
          aNewPosition = existingActiveLists.last.position+1;
        }
      }
      
      List<ActiveListPosition> newListPositions = [];

      for(CreateListItemParameter listItemParam in listitems){
        newListPositions.add(ActiveListPosition.fromCreateListItemParameter(listItemParam));
      }

      ActiveList aNewList = ActiveList( id: Uuid().v1(), 
                                            name: listName, 
                                            type: type, 
                                            position: aNewPosition, 
                                            done: false,
                                            opened: false,
                                            listItems: newListPositions
                                            );
      
       
    return ListInsertResult(updatedLists:neededUpates, newList:aNewList);
  }

}
class CreateListItemParameter{
  String name;
  int position;
  late String id;
  CreateListItemParameter({required this.name, required this.position}){
    id = Uuid().v1();
  }

}

class ListInsertResult{
  final List<ActiveList> updatedLists;
  final ActiveList newList;

  ListInsertResult({required this.updatedLists, required this.newList});
}