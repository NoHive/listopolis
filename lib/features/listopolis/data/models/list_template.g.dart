// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListTemplate _$_$_ListTemplateFromJson(Map<String, dynamic> json) {
  return _$_ListTemplate(
    id: json['id'] as String,
    name: json['name'] as String,
    position: json['position'] as int,
    type: listTypeFromJson(json['type'] as String),
    templatePositions: (json['templatePositions'] as List)
        ?.map((e) => e == null
            ? null
            : ListTemplatePosition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ListTemplateToJson(_$_ListTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': instance.position,
      'type': listTypeToJson(instance.type),
      'templatePositions': instance.templatePositions,
    };

_$_ListTemplatePosition _$_$_ListTemplatePositionFromJson(
    Map<String, dynamic> json) {
  return _$_ListTemplatePosition(
    name: json['name'] as String,
    id: json['id'] as String,
    position: json['position'] as int,
  );
}

Map<String, dynamic> _$_$_ListTemplatePositionToJson(
        _$_ListTemplatePosition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'position': instance.position,
    };
