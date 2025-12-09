// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'career.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Career {
  String get company => throw _privateConstructorUsedError;
  String get period => throw _privateConstructorUsedError;
  String get position => throw _privateConstructorUsedError;
  String get detail => throw _privateConstructorUsedError;
  List<Section> get sections => throw _privateConstructorUsedError;

  /// Create a copy of Career
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CareerCopyWith<Career> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CareerCopyWith<$Res> {
  factory $CareerCopyWith(Career value, $Res Function(Career) then) =
      _$CareerCopyWithImpl<$Res, Career>;
  @useResult
  $Res call(
      {String company,
      String period,
      String position,
      String detail,
      List<Section> sections});
}

/// @nodoc
class _$CareerCopyWithImpl<$Res, $Val extends Career>
    implements $CareerCopyWith<$Res> {
  _$CareerCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Career
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
              as List<Section>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CareerImplCopyWith<$Res> implements $CareerCopyWith<$Res> {
  factory _$$CareerImplCopyWith(
          _$CareerImpl value, $Res Function(_$CareerImpl) then) =
      __$$CareerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String company,
      String period,
      String position,
      String detail,
      List<Section> sections});
}

/// @nodoc
class __$$CareerImplCopyWithImpl<$Res>
    extends _$CareerCopyWithImpl<$Res, _$CareerImpl>
    implements _$$CareerImplCopyWith<$Res> {
  __$$CareerImplCopyWithImpl(
      _$CareerImpl _value, $Res Function(_$CareerImpl) _then)
      : super(_value, _then);

  /// Create a copy of Career
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
    return _then(_$CareerImpl(
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
              as List<Section>,
    ));
  }
}

/// @nodoc

class _$CareerImpl implements _Career {
  const _$CareerImpl(
      {required this.company,
      required this.period,
      required this.position,
      required this.detail,
      required final List<Section> sections})
      : _sections = sections;

  @override
  final String company;
  @override
  final String period;
  @override
  final String position;
  @override
  final String detail;
  final List<Section> _sections;
  @override
  List<Section> get sections {
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sections);
  }

  @override
  String toString() {
    return 'Career(company: $company, period: $period, position: $position, detail: $detail, sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CareerImpl &&
            (identical(other.company, company) || other.company == company) &&
            (identical(other.period, period) || other.period == period) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @override
  int get hashCode => Object.hash(runtimeType, company, period, position,
      detail, const DeepCollectionEquality().hash(_sections));

  /// Create a copy of Career
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CareerImplCopyWith<_$CareerImpl> get copyWith =>
      __$$CareerImplCopyWithImpl<_$CareerImpl>(this, _$identity);
}

abstract class _Career implements Career {
  const factory _Career(
      {required final String company,
      required final String period,
      required final String position,
      required final String detail,
      required final List<Section> sections}) = _$CareerImpl;

  @override
  String get company;
  @override
  String get period;
  @override
  String get position;
  @override
  String get detail;
  @override
  List<Section> get sections;

  /// Create a copy of Career
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CareerImplCopyWith<_$CareerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
