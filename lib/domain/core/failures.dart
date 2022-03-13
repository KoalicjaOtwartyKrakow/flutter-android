import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/kt.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {

  const factory ValueFailure.exceedingLength({
    required T failedValue,
    required int maxLength,
  }) = ExceedingLength<T>;

  const factory ValueFailure.shortLength({
    required T failedValue,
    required int minLength,
  }) = ShortLength<T>;

  const factory ValueFailure.invalidListContents({
    required T failedValues,
  }) = InvalidListContents<T>;

  const factory ValueFailure.notJunctionId({
    required T failedValue,
  }) = NotJunctionId<T>;

  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;

  const factory ValueFailure.invalidPhoneNumber({
    required T failedValue,
  }) = InvalidEmail<T>;

}