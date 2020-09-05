

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'user_data.freezed.dart';
part 'user_data.g.dart'; 

@freezed
abstract class UserData implements _$UserData{
  @JsonSerializable(nullable: false)  
  const UserData._();
  const factory UserData(
    {
      @required String id,
      String name,
      List<ListTemplate> templates,
      List<ActiveList> activeLists
    }
  ) = _UserData;

  factory UserData.addListFromTemplate(UserData data, ListTemplate template){
      List<ActiveList> existingActiveLists = data.activeLists;
      List<ActiveList> aNewList = List();
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
  factory UserData.fromRemovedActiveListPosition(UserData data, ActiveList list, ActiveListPosition position){
      List<ActiveList> existingActiveLists = data.activeLists;
      List<ActiveList> aNewList = List();
      
      if(existingActiveLists != null){
        existingActiveLists.sort((e1, e2) => e1.position.compareTo(e2.position));
      }

      final int positionOfDeleteList = list.position;
      final int positionOfDeleteListPos = position.position;

      // if so delete whole list
      if(list.listItems.length <= 1){
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
            else if(aListPosition.position > positionOfDeleteList)
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

      
      

      return data.copyWith(activeLists:aNewList);

      
  }
  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);
}