import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
abstract class Failure with _$Failure {
  const factory Failure.unexpected() = _Unexpected;
  const factory Failure.insufficientPermissions() = _InsufficientPermissions;
  const factory Failure.canceledByUser() = _CanceledByUser;
}
