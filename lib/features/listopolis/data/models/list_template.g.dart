// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_template.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListTemplate _$$_ListTemplateFromJson(Map<String, dynamic> json) =>
    _$_ListTemplate(
      id: json['id'] as String? ?? '0815',
      name: json['name'] as String? ?? 'a template',
      position: json['position'] as int? ?? 1,
      type: json['type'] == null
          ? const ListType.todo()
          : listTypeFromJson(json['type'] as String),
      templatePositions: (json['templatePositions'] as List<dynamic>?)
              ?.map((e) =>
                  ListTemplatePosition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ListTemplateToJson(_$_ListTemplate instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': instance.position,
      'type': listTypeToJson(instance.type),
      'templatePositions': instance.templatePositions,
    };

_$_ListTemplatePosition _$$_ListTemplatePositionFromJson(
        Map<String, dynamic> json) =>
    _$_ListTemplatePosition(
      name: json['name'] as String? ?? 'a Name',
      id: json['id'] as String? ?? '0815',
      position: json['position'] as int? ?? 1,
    );

Map<String, dynamic> _$$_ListTemplatePositionToJson(
        _$_ListTemplatePosition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'position': instance.position,
    };
