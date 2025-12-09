import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.network({
    required String message,
    String? details,
  }) = NetworkFailure;

  const factory Failure.parsing({
    required String message,
    String? details,
  }) = ParsingFailure;

  const factory Failure.notFound({
    required String message,
  }) = NotFoundFailure;

  const factory Failure.timeout({
    required String message,
  }) = TimeoutFailure;

  const factory Failure.unknown({
    required String message,
    String? details,
  }) = UnknownFailure;
}
