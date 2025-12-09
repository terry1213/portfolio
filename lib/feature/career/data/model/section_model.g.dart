// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'section_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SectionModelImpl _$$SectionModelImplFromJson(Map<String, dynamic> json) =>
    _$SectionModelImpl(
      period: json['period'] as String,
      detail: json['detail'] as String,
      works: (json['works'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$SectionModelImplToJson(_$SectionModelImpl instance) =>
    <String, dynamic>{
      'period': instance.period,
      'detail': instance.detail,
      'works': instance.works,
    };
