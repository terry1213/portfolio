// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BlogPostModelImpl _$$BlogPostModelImplFromJson(Map<String, dynamic> json) =>
    _$BlogPostModelImpl(
      title: json['title'] as String,
      detail: json['detail'] as String,
      image: json['image'] as String,
      url1Text: json['url1Text'] as String,
      url1: json['url1'] as String,
      url2Text: json['url2Text'] as String,
      url2: json['url2'] as String,
    );

Map<String, dynamic> _$$BlogPostModelImplToJson(_$BlogPostModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'detail': instance.detail,
      'image': instance.image,
      'url1Text': instance.url1Text,
      'url1': instance.url1,
      'url2Text': instance.url2Text,
      'url2': instance.url2,
    };
