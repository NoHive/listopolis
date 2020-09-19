import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:json_annotation/json_annotation.dart';

part 'list.freezed.dart';
part 'list.g.dart'; 

@freezed
abstract class ActiveList implements _$ActiveList{
  
  @JsonSerializable(nullable: false)
  const ActiveList._();
  const factory ActiveList(
    {
      @required String id, 
      @required String name,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
      @required ListType type,
      @required int position,
      @required bool done,
      @required bool opened,
      List<ActiveListPosition> listItems
    }
  ) = _ActiveList;
  factory ActiveList.fromJson(Map<String, dynamic> json) => _$ActiveListFromJson(json);

  factory ActiveList.addListItemAtStart({@required ActiveList list, @required ActiveListPosition aPosition}){
    List<ActiveListPosition> existingPositions = list.listItems;
    existingPositions.sort((a,b) => a.position.compareTo(b.position));
    ActiveListPosition newPosition = aPosition.copyWith(position:1);
    List<ActiveListPosition> newListPositons = [];
    newListPositons.add(newPosition);
    existingPositions.forEach((element) {newListPositons.add(element.copyWith(position:element.position+1)); });

    return list.copyWith(listItems:newListPositons);
  }
  factory ActiveList.addListItemAtEnd({@required ActiveList list, @required ActiveListPosition aPosition}){
    List<ActiveListPosition> existingPositions = list.listItems;
    existingPositions.sort((a,b) => a.position.compareTo(b.position));
    ActiveListPosition lastPosition = existingPositions.last; 
    ActiveListPosition newPosition = aPosition.copyWith(position:lastPosition.position+1);
    existingPositions.add(newPosition);
   

    return list.copyWith(listItems:existingPositions);
  }
 
}


@freezed
abstract class ActiveListPosition implements _$ActiveListPosition{
  @JsonSerializable(nullable: false)
  const ActiveListPosition._();
  const factory ActiveListPosition(
     {
      @required String id,
      @required String name,
      @required int position,
      @required bool done
    }
  ) = _ActiveListPosition;
 
  factory ActiveListPosition.fromJson(Map<String, dynamic> json) => _$ActiveListPositionFromJson(json);
}