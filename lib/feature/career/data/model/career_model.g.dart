// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'career_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CareerModelImpl _$$CareerModelImplFromJson(Map<String, dynamic> json) =>
    _$CareerModelImpl(
      company: json['company'] as String,
      period: json['period'] as String,
      position: json['position'] as String,
      detail: json['detail'] as String,
      sections: (json['sections'] as List<dynamic>)
          .map((e) => SectionModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CareerModelImplToJson(_$CareerModelImpl instance) =>
    <String, dynamic>{
      'company': instance.company,
      'period': instance.period,
      'position': instance.position,
      'detail': instance.detail,
      'sections': instance.sections,
    };
