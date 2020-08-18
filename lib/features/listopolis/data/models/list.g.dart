// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ActiveList _$_$_ActiveListFromJson(Map<String, dynamic> json) {
  return _$_ActiveList(
    id: json['id'] as String,
    name: json['name'] as String,
    type: listTypeFromJson(json['type'] as String),
    position: json['position'] as int,
    done: json['done'] as bool,
    opened: json['opened'] as bool,
    listItems: (json['listItems'] as List)
        ?.map((e) => e == null
            ? null
            : ActiveListPosition.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ActiveListToJson(_$_ActiveList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'type': listTypeToJson(instance.type),
      'position': instance.position,
      'done': instance.done,
      'opened': instance.opened,
      'listItems': instance.listItems,
    };

_$_ActiveListPosition _$_$_ActiveListPositionFromJson(
    Map<String, dynamic> json) {
  return _$_ActiveListPosition(
    name: json['name'] as String,
    position: json['position'] as int,
    done: json['done'] as bool,
  );
}

Map<String, dynamic> _$_$_ActiveListPositionToJson(
        _$_ActiveListPosition instance) =>
    <String, dynamic>{
      'name': instance.name,
      'position': instance.position,
      'done': instance.done,
    };
