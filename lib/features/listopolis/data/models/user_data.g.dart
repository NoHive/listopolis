// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      id: json['id'] as String? ?? '0815',
      name: json['name'] as String? ?? 'some User',
      templates: (json['templates'] as List<dynamic>?)
              ?.map((e) => ListTemplate.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      activeLists: (json['activeLists'] as List<dynamic>?)
              ?.map((e) => ActiveList.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'templates': instance.templates,
      'activeLists': instance.activeLists,
    };
