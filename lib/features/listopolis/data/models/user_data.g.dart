// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$_$_UserDataFromJson(Map<String, dynamic> json) {
  return _$_UserData(
    id: json['id'] as String,
    name: json['name'] as String,
    templates: (json['templates'] as List)
        ?.map((e) =>
            e == null ? null : ListTemplate.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    activeLists: (json['activeLists'] as List)
        ?.map((e) =>
            e == null ? null : ActiveList.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'templates': instance.templates,
      'activeLists': instance.activeLists,
    };
