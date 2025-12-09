// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_post_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BlogPostModel _$BlogPostModelFromJson(Map<String, dynamic> json) {
  return _BlogPostModel.fromJson(json);
}

/// @nodoc
mixin _$BlogPostModel {
  String get title => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get url1Text => throw _privateConstructorUsedError;
  String get url1 => throw _privateConstructorUsedError;
  String get url2Text => throw _privateConstructorUsedError;
  String get url2 => throw _privateConstructorUsedError;

  /// Serializes this BlogPostModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BlogPostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BlogPostModelCopyWith<BlogPostModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogPostModelCopyWith<$Res> {
  factory $BlogPostModelCopyWith(
          BlogPostModel value, $Res Function(BlogPostModel) then) =
      _$BlogPostModelCopyWithImpl<$Res, BlogPostModel>;
  @useResult
  $Res call(
      {String title,
      String detail,
      String image,
      String url1Text,
      String url1,
      String url2Text,
      String url2});
}

/// @nodoc
class _$BlogPostModelCopyWithImpl<$Res, $Val extends BlogPostModel>
    implements $BlogPostModelCopyWith<$Res> {
  _$BlogPostModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BlogPostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? detail = null,
    Object? image = null,
    Object? url1Text = null,
    Object? url1 = null,
    Object? url2Text = null,
    Object? url2 = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url1Text: null == url1Text
          ? _value.url1Text
          : url1Text // ignore: cast_nullable_to_non_nullable
              as String,
      url1: null == url1
          ? _value.url1
          : url1 // ignore: cast_nullable_to_non_nullable
              as String,
      url2Text: null == url2Text
          ? _value.url2Text
          : url2Text // ignore: cast_nullable_to_non_nullable
              as String,
      url2: null == url2
          ? _value.url2
          : url2 // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BlogPostModelImplCopyWith<$Res>
    implements $BlogPostModelCopyWith<$Res> {
  factory _$$BlogPostModelImplCopyWith(
          _$BlogPostModelImpl value, $Res Function(_$BlogPostModelImpl) then) =
      __$$BlogPostModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String detail,
      String image,
      String url1Text,
      String url1,
      String url2Text,
      String url2});
}

/// @nodoc
class __$$BlogPostModelImplCopyWithImpl<$Res>
    extends _$BlogPostModelCopyWithImpl<$Res, _$BlogPostModelImpl>
    implements _$$BlogPostModelImplCopyWith<$Res> {
  __$$BlogPostModelImplCopyWithImpl(
      _$BlogPostModelImpl _value, $Res Function(_$BlogPostModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of BlogPostModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? detail = null,
    Object? image = null,
    Object? url1Text = null,
    Object? url1 = null,
    Object? url2Text = null,
    Object? url2 = null,
  }) {
    return _then(_$BlogPostModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      url1Text: null == url1Text
          ? _value.url1Text
          : url1Text // ignore: cast_nullable_to_non_nullable
              as String,
      url1: null == url1
          ? _value.url1
          : url1 // ignore: cast_nullable_to_non_nullable
              as String,
      url2Text: null == url2Text
          ? _value.url2Text
          : url2Text // ignore: cast_nullable_to_non_nullable
              as String,
      url2: null == url2
          ? _value.url2
          : url2 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BlogPostModelImpl implements _BlogPostModel {
  const _$BlogPostModelImpl(
      {required this.title,
      required this.detail,
      required this.image,
      required this.url1Text,
      required this.url1,
      required this.url2Text,
      required this.url2});

  factory _$BlogPostModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$BlogPostModelImplFromJson(json);

  @override
  final String title;
  @override
  final String detail;
  @override
  final String image;
  @override
  final String url1Text;
  @override
  final String url1;
  @override
  final String url2Text;
  @override
  final String url2;

  @override
  String toString() {
    return 'BlogPostModel(title: $title, detail: $detail, image: $image, url1Text: $url1Text, url1: $url1, url2Text: $url2Text, url2: $url2)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BlogPostModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.url1Text, url1Text) ||
                other.url1Text == url1Text) &&
            (identical(other.url1, url1) || other.url1 == url1) &&
            (identical(other.url2Text, url2Text) ||
                other.url2Text == url2Text) &&
            (identical(other.url2, url2) || other.url2 == url2));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, title, detail, image, url1Text, url1, url2Text, url2);

  /// Create a copy of BlogPostModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BlogPostModelImplCopyWith<_$BlogPostModelImpl> get copyWith =>
      __$$BlogPostModelImplCopyWithImpl<_$BlogPostModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BlogPostModelImplToJson(
      this,
    );
  }
}

abstract class _BlogPostModel implements BlogPostModel {
  const factory _BlogPostModel(
      {required final String title,
      required final String detail,
      required final String image,
      required final String url1Text,
      required final String url1,
      required final String url2Text,
      required final String url2}) = _$BlogPostModelImpl;

  factory _BlogPostModel.fromJson(Map<String, dynamic> json) =
      _$BlogPostModelImpl.fromJson;

  @override
  String get title;
  @override
  String get detail;
  @override
  String get image;
  @override
  String get url1Text;
  @override
  String get url1;
  @override
  String get url2Text;
  @override
  String get url2;

  /// Create a copy of BlogPostModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BlogPostModelImplCopyWith<_$BlogPostModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
