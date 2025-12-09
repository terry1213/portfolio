// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProjectModelImpl _$$ProjectModelImplFromJson(Map<String, dynamic> json) =>
    _$ProjectModelImpl(
      title: json['title'] as String,
      period: json['period'] as String,
      team: json['team'] as String,
      detail: json['detail'] as String,
      function: json['function'] as String,
      techStack: json['techStack'] as String,
      git: json['git'] as String,
      link: json['link'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$ProjectModelImplToJson(_$ProjectModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'period': instance.period,
      'team': instance.team,
      'detail': instance.detail,
      'function': instance.function,
      'techStack': instance.techStack,
      'git': instance.git,
      'link': instance.link,
      'image': instance.image,
    };
