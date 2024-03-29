import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:listopolis/features/listopolis/data/models/repetition_config.dart';
import 'package:uuid/uuid.dart';

part 'list.freezed.dart';
part 'list.g.dart'; 

@freezed
@Freezed(makeCollectionsUnmodifiable: false)
abstract class ActiveList implements _$ActiveList{
   @JsonSerializable()
  const ActiveList._();
  const factory ActiveList(
    {
      @Default('0815') String id, 
      @Default('list name') String name,
      // ignore: invalid_annotation_target
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
      @Default(ListType.todo()) ListType type,
      @Default(1) int position,
      @Default(false) bool done,
      @Default(false) bool opened,
      @Default(false) bool repeat,
      @Default(false) bool needReminders,
      RepetitionConfig? repetitionConfig,
      @Default([]) List<ActiveListPosition> listItems,
      @Default([]) List<ActiveListPosition> repetitionItems
    }
  ) = _ActiveList;
  factory ActiveList.fromJson(Map<String, dynamic> json) => _$ActiveListFromJson(json);

  factory ActiveList.addListItemAtStart({required ActiveList list, required ActiveListPosition aPosition}){
    List<ActiveListPosition> existingPositions = list.listItems;
    existingPositions.sort((a,b) => a.position.compareTo(b.position));
    ActiveListPosition newPosition = aPosition.copyWith(position:1);
    List<ActiveListPosition> newListPositons = [];
    List<ActiveListPosition> newRepetitionPositons = [];
    newListPositons.add(newPosition);
    existingPositions.forEach((element) {newListPositons.add(element.copyWith(position:element.position+1)); });
    newListPositons.forEach((element) { newRepetitionPositons.add(element.copyWith(position:element.position));});

    return list.copyWith(listItems:newListPositons, repetitionItems: newRepetitionPositons);
  }
  factory ActiveList.addListItemAtEnd({required ActiveList list, required ActiveListPosition aPosition}){
    List<ActiveListPosition> existingPositions = list.listItems;
    existingPositions.sort((a,b) => a.position.compareTo(b.position));
    ActiveListPosition lastPosition = existingPositions.last; 
    ActiveListPosition newPosition = aPosition.copyWith(position:lastPosition.position+1);
    existingPositions.add(newPosition);
    List<ActiveListPosition> newRepetitionPositons = [];
    existingPositions.forEach((element) { newRepetitionPositons.add(element.copyWith(position:element.position));});

    return list.copyWith(listItems:existingPositions, repetitionItems: newRepetitionPositons);
  }
 
}


@freezed
abstract class ActiveListPosition implements _$ActiveListPosition{
  @JsonSerializable()
  const ActiveListPosition._();
  const factory ActiveListPosition(
     {
      @Default('0815') String id,
      @Default('new Position') String name,
      @Default(1) int position,
      @Default(false) bool done
    }
  ) = _ActiveListPosition;
 
  factory ActiveListPosition.fromCreateListItemParameter(CreateListItemParameter listItemParameter){
    return ActiveListPosition(
      id: Uuid().v1(),
      done: false,
      name: listItemParameter.name,
      position: listItemParameter.position
    );
  }
  factory ActiveListPosition.fromJson(Map<String, dynamic> json) => _$ActiveListPositionFromJson(json);
}