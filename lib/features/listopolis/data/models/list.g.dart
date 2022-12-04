// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActiveList _$$_ActiveListFromJson(Map<String, dynamic> json) =>
    _$_ActiveList(
      id: json['id'] as String? ?? '0815',
      name: json['name'] as String? ?? 'list name',
      type: json['type'] == null
          ? const ListType.todo()
          : listTypeFromJson(json['type'] as String),
      position: json['position'] as int? ?? 1,
      done: json['done'] as bool? ?? false,
      opened: json['opened'] as bool? ?? false,
      repeat: json['repeat'] as bool? ?? false,
      repetitionConfig: json['repetitionConfig'] == null
          ? null
          : RepetitionConfig.fromJson(
              json['repetitionConfig'] as Map<String, dynamic>),
      listItems: (json['listItems'] as List<dynamic>?)
              ?.map(
                  (e) => ActiveListPosition.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ActiveListToJson(_$_ActiveList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': listTypeToJson(instance.type),
      'position': instance.position,
      'done': instance.done,
      'opened': instance.opened,
      'repeat': instance.repeat,
      'repetitionConfig': instance.repetitionConfig,
      'listItems': instance.listItems,
    };

_$_ActiveListPosition _$$_ActiveListPositionFromJson(
        Map<String, dynamic> json) =>
    _$_ActiveListPosition(
      id: json['id'] as String? ?? '0815',
      name: json['name'] as String? ?? 'new Position',
      position: json['position'] as int? ?? 1,
      done: json['done'] as bool? ?? false,
    );

Map<String, dynamic> _$$_ActiveListPositionToJson(
        _$_ActiveListPosition instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'position': instance.position,
      'done': instance.done,
    };
