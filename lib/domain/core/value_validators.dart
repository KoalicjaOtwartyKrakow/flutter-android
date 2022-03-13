import 'package:dartz/dartz.dart';
import 'failures.dart';
import 'value_objects.dart';
import 'package:kt_dart/kt.dart';



Either<ValueFailure<String>, String> validateEmail(String input) {
  const emailRegex =
  r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePhoneNumber(
    String input
    ) {
  int minLength = 9;
  if (input.length >= minLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.shortLength(failedValue: input, minLength: minLength));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input,
    int maxLength,
    ) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, maxLength: maxLength));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>> validateMaxListLength<T>(
    KtList<T> input,
    int maxLength,
    ) {
  if (input.size <= maxLength) {
    return right(input);
  } else {
    return left(
        ValueFailure.exceedingLength(failedValue: input, maxLength: maxLength));
  }
}

Either<ValueFailure<KtList<T>>, KtList<T>>
validateValueObjectList<T extends ValueObject>(
    KtList<T> input,
    ) {
  final invalidValues = input.filterNot((element) => element.isValid());
  if (invalidValues.size == 0) {
    return right(input);
  } else {
    return left(ValueFailure.invalidListContents(failedValues: invalidValues));
  }
}

Either<ValueFailure<String>, String> validateJunctionId(String input) {
  if (input.split('_').length <= 1) {
    return left(
      ValueFailure.notJunctionId(failedValue: input),
    );
  } else {
    return right(input);
  }
}