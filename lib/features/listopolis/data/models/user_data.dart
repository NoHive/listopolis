

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_template.dart';
import 'package:uuid/uuid.dart';

part 'user_data.freezed.dart';

@freezed
abstract class UserData with _$UserData{
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
                                            done: false);
      
       
      aNewList.add(aNewListItem);

      return data.copyWith(activeLists:aNewList);

      
  }
}