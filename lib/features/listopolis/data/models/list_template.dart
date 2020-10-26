import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/features/listopolis/application/list_creation/create_list_parameter.dart';
import 'package:listopolis/features/listopolis/data/models/list.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:uuid/uuid.dart';

part 'list_template.freezed.dart';
part 'list_template.g.dart'; 

@freezed
abstract class ListTemplate implements _$ListTemplate{
  @JsonSerializable(nullable: false)
  const ListTemplate._();
  const factory ListTemplate(
    {
      @required String id, 
      @required String name,
      @required int position,
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
      @required ListType type,
      List<ListTemplatePosition> templatePositions
    }
    ) = _ListTemplate;
    factory ListTemplate.fromJson(Map<String, dynamic> json) => _$ListTemplateFromJson(json);

     factory ListTemplate.addListItemAtStart({@required ListTemplate list, @required ListTemplatePosition aPosition}){
    List<ListTemplatePosition> existingPositions = list.templatePositions;
    existingPositions.sort((a,b) => a.position.compareTo(b.position));
    ListTemplatePosition newPosition = aPosition.copyWith(position:1);
    List<ListTemplatePosition> newListPositons = [];
    newListPositons.add(newPosition);
    existingPositions.forEach((element) {newListPositons.add(element.copyWith(position:element.position+1)); });

    return list.copyWith(templatePositions:newListPositons);
  }
  factory ListTemplate.addListItemAtEnd({@required ListTemplate list, @required ListTemplatePosition aPosition}){
    List<ListTemplatePosition> existingPositions = list.templatePositions;
    existingPositions.sort((a,b) => a.position.compareTo(b.position));
    ListTemplatePosition lastPosition = existingPositions.last; 
    ListTemplatePosition newPosition = aPosition.copyWith(position:lastPosition.position+1);
    existingPositions.add(newPosition);
   

    return list.copyWith(templatePositions:existingPositions);
  }
} 

@freezed
abstract class ListTemplatePosition implements _$ListTemplatePosition{
  @JsonSerializable(nullable: false)
  const ListTemplatePosition._();
  const factory ListTemplatePosition(
    {
      @required String name,
      @required String id,
      @required int position,
    }
  ) = _ListTemplatePosition;

  factory ListTemplatePosition.fromCreateListItemParameter(CreateListItemParameter listItemParameter){
    return ListTemplatePosition(
      id: Uuid().v1(),
      name: listItemParameter.name,
      position: listItemParameter.position
    );
  }
  factory ListTemplatePosition.fromActiveListPosition(ActiveListPosition listItemParameter){
    return ListTemplatePosition(
      id: Uuid().v1(),
      name: listItemParameter.name,
      position: listItemParameter.position
    );
  }

  factory ListTemplatePosition.fromJson(Map<String, dynamic> json) => _$ListTemplatePositionFromJson(json);
}

