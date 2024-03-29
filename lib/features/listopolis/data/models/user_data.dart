

import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/core/list/list_tools.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/core/repetition_utils.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:listopolis/features/listopolis/data/models/reminder_time.dart';
import 'package:listopolis/features/listopolis/data/models/repetition_config.dart';
import 'package:uuid/uuid.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart'; 

@freezed
@Freezed(makeCollectionsUnmodifiable: false)
abstract class UserData implements _$UserData {
  @JsonSerializable()  
  const UserData._();
  const factory UserData(
    {
      @Default('0815') String id,
      @Default('some User') String name,
      @Default([]) List<ListTemplate> templates,
      @Default([]) List<ActiveList> activeLists
    }
  ) = _UserData;

  factory UserData.addListFromTemplate(UserData data, ListTemplate template){
      List<ActiveList> existingActiveLists = data.activeLists.toList();
      List<ActiveList> aNewList = [];
      int aNewPosition = 1;
      if(existingActiveLists != null){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
        aNewList = existingActiveLists.toList();
        aNewPosition = existingActiveLists.last.position+1;
      }

      ActiveList aNewListItem = ActiveList( id: Uuid().v1(), 
                                            name: template.name, 
                                            type: template.type, 
                                            position: aNewPosition, 
                                            done: false,
                                            opened: false);
      
       
      aNewList.add(aNewListItem);

      return data.copyWith(activeLists:aNewList);

      
  }
  

   factory UserData.addListFromCreatedList(UserData data, CreateListParameter creationParameter){
      List<ActiveList> existingActiveLists = data.activeLists.toList();
      List<ActiveList> aNewList = [];
      int aNewPosition = 1;
      if(existingActiveLists != null && existingActiveLists.length > 0){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
        
        if(creationParameter.positioning == PositionType.start){
          aNewList = existingActiveLists.map((e) => e.copyWith(position: e.position +1 )).toList();
          aNewPosition = 1;
        }else{
          aNewList = existingActiveLists.toList();
          aNewPosition = existingActiveLists.last.position+1;
        }
      }
      

      List<ActiveListPosition> newListPositions = [];
      List<ActiveListPosition> newListRepetitionPositions = [];

      for(CreateListItemParameter listItemParam in creationParameter.listitems){
        newListPositions.add(ActiveListPosition.fromCreateListItemParameter(listItemParam));
        newListRepetitionPositions.add(ActiveListPosition.fromCreateListItemParameter(listItemParam));
      }

      ActiveList aNewListItem = ActiveList( id: Uuid().v1(), 
                                            name: creationParameter.listName, 
                                            type: creationParameter.type, 
                                            repeat: creationParameter.repeat,
                                            position: aNewPosition, 
                                            done: false,
                                            opened: false,
                                            listItems: newListPositions,
                                            repetitionConfig: creationParameter.repetitionConfig,
                                            repetitionItems: newListRepetitionPositions
                                            );
      
       
      aNewList.add(aNewListItem);

      return data.copyWith(activeLists:aNewList);

      
  }

    factory UserData.addTemplateFromCreatedList(UserData data, CreateListParameter creationParameter){
      List<ListTemplate> existingActiveLists = data.templates.toList();
      List<ListTemplate> aNewList = [];
      int aNewPosition = 1;
      if(existingActiveLists != null && existingActiveLists.length > 0){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
        
        if(creationParameter.positioning == PositionType.start){
          aNewList = existingActiveLists.map((e) => e.copyWith(position: e.position +1 )).toList();
          aNewPosition = 1;
        }else{
          aNewList = existingActiveLists.toList();
          aNewPosition = existingActiveLists.last.position+1;
        }
      }
      

      List<ListTemplatePosition> newListPositions = [];

      for(CreateListItemParameter listItemParam in creationParameter.listitems){
          newListPositions.add(ListTemplatePosition.fromCreateListItemParameter(listItemParam));
      }

      ListTemplate aNewListItem = ListTemplate( id: Uuid().v1(), 
                                            name: creationParameter.listName, 
                                            type: creationParameter.type, 
                                            position: aNewPosition, 
                                            templatePositions: newListPositions
                                            );
      
       
      aNewList.add(aNewListItem);

      return data.copyWith(templates:aNewList);

      
  }

  Map<String, ActiveList> getListMap(){
    Map<String, ActiveList> listMap = {};
      activeLists.forEach((element) {listMap[element.id] = element;});
    return listMap;
  }

   factory UserData.addTemplateFromActiveList(UserData data, ActiveList creationParameter){
      List<ListTemplate> existingActiveLists = data.templates.toList();
      List<ListTemplate> aNewList = [];
      int aNewPosition = 1;
      if(existingActiveLists != null && existingActiveLists.length > 0){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
        aNewList = existingActiveLists.toList();
        aNewPosition = existingActiveLists.last.position+1;
        
      }
      

      List<ListTemplatePosition> newListPositions = [];

      for(ActiveListPosition listItemParam in creationParameter.listItems){
          newListPositions.add(ListTemplatePosition.fromActiveListPosition(listItemParam));
      }

      ListTemplate aNewListItem = ListTemplate( id: Uuid().v1(), 
                                            name: creationParameter.name, 
                                            type: creationParameter.type, 
                                            position: aNewPosition, 
                                            templatePositions: newListPositions
                                            );
      
       
      aNewList.add(aNewListItem);

      return data.copyWith(templates:aNewList);

      
  }

   factory UserData.fromAddedExternalList(UserData data, String jsonData){
     ActiveList listFromJson;
     try{
        listFromJson = ActiveList.fromJson(json.decode(jsonData));
     }on FormatException {
       return data;
     }


       
     
      List<ActiveList> existingActiveLists = data.activeLists.toList();
      List<ActiveList> aNewActiveLists = [];
      int aNewPosition = 1;
      if(existingActiveLists != null && existingActiveLists.length > 0){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
        aNewPosition = existingActiveLists.last.position+1;
      }

      for(ActiveList existingList in existingActiveLists){
        aNewActiveLists.add(existingList);
      }
      aNewActiveLists.add(listFromJson.copyWith(id:Uuid().v1(), position: aNewPosition));

    return data.copyWith(activeLists:aNewActiveLists);

      
  }

  factory UserData.fromChangedListPosition(UserData data, ActiveList aList, int oldPosition, int newPosition){
     
     
     Map<String, ActiveList> idToList = Map.fromEntries(data.activeLists.map((list) => MapEntry(list.id, list)) );
     List<String> listIds = idToList.keys.toList();

     Map<String, int> listToPosition = ListOrder.reorder(oldPosition, newPosition, aList.id, listIds, 
        (aListId) {
          
            ActiveList? aList = idToList[aListId];
            if(aList != null)
              return aList.position;
            else return 1;
          
        }
     );
     
     List<ActiveList> newActiveLists = [];
     for(ActiveList aList in data.activeLists){
       int? newPosForList = listToPosition[aList.id];
       if(newPosForList != null)
          newActiveLists.add(aList.copyWith(position:newPosForList));
     }

    return data.copyWith(activeLists:newActiveLists);

      
  }
  factory UserData.fromChangedTemplatePosition(UserData data, ListTemplate aList, int oldPosition, int newPosition){
     
     
     Map<String, ListTemplate> idToList = Map.fromEntries(data.templates.map((list) => MapEntry(list.id, list)) );
     List<String> listIds = idToList.keys.toList();

     Map<String, int> listToPosition = ListOrder.reorder(oldPosition, newPosition, aList.id, listIds, 
        (aListId) {
          ListTemplate? aList = idToList[aListId];
          if(aList != null)
            return aList.position;
        }
     );
     
     List<ListTemplate> newTemplates = [];
     for(ListTemplate aList in data.templates){
       int? newPosForList = listToPosition[aList.id];
       if(newPosForList != null)
        newTemplates.add(aList.copyWith(position:newPosForList));
     }

    return data.copyWith(templates:newTemplates);

      
  }

  factory UserData.updateRepetitionSatus(UserData data, ActiveList list){
      List<ActiveList> existingActiveLists = data.activeLists.toList();
      
      ActiveList copyWithoutRepetition = list.copyWith(needReminders: false);
      if( existingActiveLists.length > 0){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
          
      }else{
        return data;
      }

      existingActiveLists.replaceRange(list.position-1, list.position, [copyWithoutRepetition]);


  

      return data.copyWith(activeLists:existingActiveLists);

      
  }

  factory UserData.replaceListFromCreatedList(UserData data, ActiveList list, CreateListParameter creationParameter){
      List<ActiveList> existingActiveLists = data.activeLists.toList();
      
      
      if( existingActiveLists.length > 0){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
          
      }else{
        return data;
      }
      

      List<ActiveListPosition> newListPositions = [];

      for(CreateListItemParameter listItemParam in creationParameter.listitems){
        newListPositions.add(ActiveListPosition.fromCreateListItemParameter(listItemParam));
      }

      // @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
      // @Default(ListType.todo()) ListType type,
      // @Default(1) int position,
      // @Default(false) bool done,
      // @Default(false) bool opened,
      // @Default(false) bool repeat,
      // @Default(false) bool needReminders,
      // RepetitionConfig? repetitionConfig,
      // @Default([]) List<ActiveListPosition> listItems,
      // @Default([]) List<ActiveListPosition> repetitionItems

      ActiveList aNewListItem = ActiveList( id: Uuid().v1(), 
                                            name: creationParameter.listName, 
                                            type: creationParameter.type, 
                                            position: list.position, 
                                            needReminders: list.needReminders,
                                            repetitionItems: newListPositions,
                                            repeat: creationParameter.repeat,
                                            done: false,
                                            opened: false,
                                            listItems: newListPositions,
                                            repetitionConfig: creationParameter.repetitionConfig
                                            );
      
       
      existingActiveLists.add(aNewListItem);
      existingActiveLists.removeWhere((aList) => list.id == aList.id);

      return data.copyWith(activeLists:existingActiveLists);

      
}
factory UserData.replaceTemplateFromCreatedList(UserData data, ListTemplate list, CreateListParameter creationParameter){
      List<ListTemplate> existingActiveLists = data.templates.toList();
      
      
      if(existingActiveLists.length > 0){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
          
      }else{
        return data;
      }
      

      List<ListTemplatePosition> newListPositions = [];

      for(CreateListItemParameter listItemParam in creationParameter.listitems){
        newListPositions.add(ListTemplatePosition.fromCreateListItemParameter(listItemParam));
      }

      ListTemplate aNewListItem = ListTemplate( id: Uuid().v1(), 
                                            name: creationParameter.listName, 
                                            type: creationParameter.type, 
                                            position: list.position, 
                                            templatePositions: newListPositions
                                            );
      
       
      existingActiveLists.add(aNewListItem);
      existingActiveLists.removeWhere((aList) => list.id == aList.id);

      return data.copyWith(templates:existingActiveLists);

      
}
  factory UserData.fromRemovedActiveListPosition(UserData data, ActiveList list, ActiveListPosition position){
      List<ActiveList> existingActiveLists = data.activeLists.toList();
      List<ActiveList> aNewList =[];
      
      if(existingActiveLists != null){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
      }

      final int positionOfDeleteList = list.position;
      final int positionOfDeleteListPos = position.position;
      ActiveList? repeatedList;
      // if so delete whole list
      if(list.listItems.length <= 1){

        if(list.repeat)
            repeatedList = _getListCopyForRepetition(list);

        for(ActiveList aList in existingActiveLists){
            if(aList.position < positionOfDeleteList)
              aNewList.add(aList.copyWith());
            else if(aList.position > positionOfDeleteList)
              aNewList.add(aList.copyWith(position:aList.position - 1));
        }
      }else{
        List<ActiveListPosition> newListPositions = [];
        for(ActiveListPosition aListPosition in list.listItems){
            if(aListPosition.position < positionOfDeleteListPos)
              newListPositions.add(aListPosition);
            else if(aListPosition.position > positionOfDeleteListPos)
              newListPositions.add(aListPosition.copyWith(position:aListPosition.position - 1));
        }
        for(ActiveList aList in existingActiveLists){
            if(aList.position < positionOfDeleteList)
              aNewList.add(aList);
            else if(aList.position == positionOfDeleteList){
              aNewList.add(aList.copyWith(listItems: newListPositions));
            }
            else if(aList.position > positionOfDeleteList)
              aNewList.add(aList);
        }
      }
      if(repeatedList != null && aNewList != null){
        aNewList.sort((e1, e2) => e1.position.compareTo(e2.position));
        int listPos = 1;
        if(aNewList.length > 0){
          ActiveList? lastList = aNewList.last;
          
          if(lastList != null)
              listPos = lastList.position+1;
        }
        
        aNewList.add(repeatedList.copyWith(position: listPos));
      }

      


      return data.copyWith(activeLists:aNewList);
  }
    factory UserData.fromRemovedTemplatePosition(UserData data, ListTemplate list, ListTemplatePosition position){
      List<ListTemplate> existingActiveLists = data.templates.toList();
      List<ListTemplate> aNewList = [];
      
      if(existingActiveLists != null){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
      }

      final int positionOfDeleteList = list.position;
      final int positionOfDeleteListPos = position.position;

      // if so delete whole list
      if(list.templatePositions.length <= 1){
        for(ListTemplate aList in existingActiveLists){
            if(aList.position < positionOfDeleteList)
              aNewList.add(aList.copyWith());
            else if(aList.position > positionOfDeleteList)
              aNewList.add(aList.copyWith(position:aList.position - 1));
        }
      }else{
        List<ListTemplatePosition> newListPositions = [];
        for(ListTemplatePosition aListPosition in list.templatePositions){
            if(aListPosition.position < positionOfDeleteListPos)
              newListPositions.add(aListPosition);
            else if(aListPosition.position > positionOfDeleteListPos)
              newListPositions.add(aListPosition.copyWith(position:aListPosition.position - 1));
        }
        for(ListTemplate aList in existingActiveLists){
            if(aList.position < positionOfDeleteList)
              aNewList.add(aList);
            else if(aList.position == positionOfDeleteList){
              aNewList.add(aList.copyWith(templatePositions: newListPositions));
            }
            else if(aList.position > positionOfDeleteList)
              aNewList.add(aList);
        }
      }

      
      

      return data.copyWith(templates:aNewList);

      
  }
  factory UserData.fromRemovedActiveList(UserData data, ActiveList list){
      List<ActiveList> existingActiveLists = data.activeLists.toList();
      List<ActiveList> aNewActiveList = [];
      
      if(existingActiveLists != null){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
      }else{
        return data;
      }

      final int positionOfDeleteList = list.position;
      
      ActiveList repeatList = list.copyWith(listItems: list.repetitionItems);

      // if so delete whole list
      if(existingActiveLists.length > 1){  
      
        for(ActiveList aList in existingActiveLists){
            if(aList.position < positionOfDeleteList)
              aNewActiveList.add(aList);
          
            else if(aList.position > positionOfDeleteList)
              aNewActiveList.add(aList.copyWith(position:aList.position -1));
        }
      }
      return data.copyWith(activeLists:aNewActiveList);
  }
   factory UserData.fromRemovedTemplate(UserData data, ListTemplate list){
      List<ListTemplate> existingActiveLists = data.templates.toList();
      List<ListTemplate> aNewActiveList =[];
      
      if(existingActiveLists != null){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
      }else{
        return data;
      }

      final int positionOfDeleteList = list.position;
      

      // if so delete whole list
      if(existingActiveLists.length > 1){  
      
        for(ListTemplate aList in existingActiveLists){
            if(aList.position < positionOfDeleteList)
              aNewActiveList.add(aList);
          
            else if(aList.position > positionOfDeleteList)
              aNewActiveList.add(aList.copyWith(position:aList.position -1));
        }
      }
      return data.copyWith(templates:aNewActiveList);
  }
   factory UserData.fromUpdatedDailyReminders(UserData data, List<ActiveList> reminderUpdatedLists){
      List<ActiveList> existingActiveLists = data.activeLists.toList();
      List<ActiveList> copiedLists = [];
      
      if(existingActiveLists != null){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
      }else{
        return data;
      }

      for(ActiveList reminderList in reminderUpdatedLists){
        RepetitionConfig repCopy = RepetitionUtil.copyForDailyRepetition(reminderList.repetitionConfig!);
        ActiveList listCopy = reminderList.copyWith(repetitionConfig: repCopy);
        existingActiveLists.replaceRange(reminderList.position-1, reminderList.position, [listCopy]);
      }

      
      return data.copyWith(activeLists:existingActiveLists);
  }
  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
  

  static List<ActiveList> getListsThatNeedDailyReminders(UserData userData){
      List<ActiveList> result = [];
      result = userData.activeLists.where((list) => neddDailyRemindersToday(list)).toList();

      return result;
  }

  static bool neddDailyRemindersToday(ActiveList list){
    if(list.repetitionConfig != null && list.repeat)
        return RepetitionUtil.needDailyReminders(list.repetitionConfig!);
    
    return false;
  }

  
}
ActiveList _getListCopyForRepetition(ActiveList list) {
    
    return list.copyWith( done: false,
                          id: Uuid().v1(),
                          needReminders: true, 
                          listItems: list.repetitionItems, 
                          repetitionConfig: RepetitionUtil.getConfigForNextPeriod(list.repetitionConfig!)
                        );
  }