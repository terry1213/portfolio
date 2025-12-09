// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CareerModel _$CareerModelFromJson(Map<String, dynamic> json) {
  return _CareerModel.fromJson(json);
}

/// @nodoc
mixin _$CareerModel {
  String get company => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  List<SectionModel> get sections => throw _privateConstructorUsedError;

  /// Serializes this CareerModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CareerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareerModelCopyWith<CareerModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerModelCopyWith<$Res> {
  factory $CareerModelCopyWith(
          CareerModel value, $Res Function(CareerModel) then) =
      _$CareerModelCopyWithImpl<$Res, CareerModel>;
  @useResult
  $Res call(
      {String company,
      String period,
      String position,
      String detail,
      List<SectionModel> sections});
}

/// @nodoc
class _$CareerModelCopyWithImpl<$Res, $Val extends CareerModel>
    implements $CareerModelCopyWith<$Res> {
  _$CareerModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CareerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? period = null,
    Object? position = null,
    Object? detail = null,
    Object? sections = null,
  }) {
    return _then(_value.copyWith(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CareerModelImplCopyWith<$Res>
    implements $CareerModelCopyWith<$Res> {
  factory _$$CareerModelImplCopyWith(
          _$CareerModelImpl value, $Res Function(_$CareerModelImpl) then) =
      __$$CareerModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String company,
      String period,
      String position,
      String detail,
      List<SectionModel> sections});
}

/// @nodoc
class __$$CareerModelImplCopyWithImpl<$Res>
    extends _$CareerModelCopyWithImpl<$Res, _$CareerModelImpl>
    implements _$$CareerModelImplCopyWith<$Res> {
  __$$CareerModelImplCopyWithImpl(
      _$CareerModelImpl _value, $Res Function(_$CareerModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CareerModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? company = null,
    Object? period = null,
    Object? position = null,
    Object? detail = null,
    Object? sections = null,
  }) {
    return _then(_$CareerModelImpl(
      company: null == company
          ? _value.company
          : company // ignore: cast_nullable_to_non_nullable
              as String,
      period: null == period
          ? _value.period
          : period // ignore: cast_nullable_to_non_nullable
              as String,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      sections: null == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CareerModelImpl implements _CareerModel {
  const _$CareerModelImpl(
      {required this.company,
      required this.period,
      required this.position,
      required this.detail,
      required final List<SectionModel> sections})
      : _sections = sections;

  factory _$CareerModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CareerModelImplFromJson(json);

  @override
  final String company;
  @override
  final String period;
  @override
  final String position;
  @override
  final String detail;
  final List<SectionModel> _sections;
  @override
  List<SectionModel> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'CareerModel(company: $company, period: $period, position: $position, detail: $detail, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerModelImpl &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, company, period, position,
      detail, const DeepCollectionEquality().hash(_sections));

  /// Create a copy of CareerModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareerModelImplCopyWith<_$CareerModelImpl> get copyWith =>
      __$$CareerModelImplCopyWithImpl<_$CareerModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CareerModelImplToJson(
      this,
    );
  }
}

abstract class _CareerModel implements CareerModel {
  const factory _CareerModel(
      {required final String company,
      required final String period,
      required final String position,
      required final String detail,
      required final List<SectionModel> sections}) = _$CareerModelImpl;

  factory _CareerModel.fromJson(Map<String, dynamic> json) =
      _$CareerModelImpl.fromJson;

  @override
  String get company;
  @override
  String get period;
  @override
  String get position;
  @override
  String get detail;
  @override
  List<SectionModel> get sections;

  /// Create a copy of CareerModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareerModelImplCopyWith<_$CareerModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
