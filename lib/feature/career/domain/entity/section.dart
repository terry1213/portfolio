import 'package:freezed_annotation/freezed_annotation.dart';

part 'section.freezed.dart';

@freezed
class Section with _$Section {
  const factory Section({
    required String period,
    required String detail,
    required List<String> works,
  }) = _Section;
}
