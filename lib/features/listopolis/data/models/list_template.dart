import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:listopolis/features/listopolis/data/models/list_type.dart';
import 'package:json_annotation/json_annotation.dart';

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
      @JsonKey(fromJson: listTypeFromJson, toJson: listTypeToJson)
      @required ListType type,
      List<ListTemplatePosition> templatePositions
    }
    ) = _ListTemplate;
    factory ListTemplate.fromJson(Map<String, dynamic> json) => _$ListTemplateFromJson(json);
} 

@freezed
abstract class ListTemplatePosition implements _$ListTemplatePosition{
  @JsonSerializable(nullable: false)
  const ListTemplatePosition._();
  const factory ListTemplatePosition(
    {
      @required String name,
      @required int position,
    }
  ) = _ListTemplatePosition;
  factory ListTemplatePosition.fromJson(Map<String, dynamic> json) => _$ListTemplatePositionFromJson(json);
}

