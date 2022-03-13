import 'package:dartz/dartz.dart';
import '../../presentation/guest/widgets/guest_form.dart';
import '../core/failures.dart';
import '../core/value_objects.dart';
import '../core/value_validators.dart';

class Email extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Email(String input) {
    return Email._(
      validateEmail(input),
    );
  }

  const Email._(this.value);
}

class PhoneNumber extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const minLength = 6;

  factory PhoneNumber(String input) {
    return PhoneNumber._(
      validatePhoneNumber(
        input
      ),
    );
  }

  const PhoneNumber._(this.value);
}