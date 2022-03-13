import 'package:dartz/dartz.dart';
import 'package:flutter_android/domain/core/value_validators.dart';
import 'errors.dart';
import 'failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  T getOrCrash() {
    return value.fold(
          (l) => throw UnexpectedValueError(l),
      // id - identity, special function equivalent to: (a) => a
      id,
    );
  }

  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
          (failure) => left(failure),
          (correctVal) => right(unit),
    );
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'ValueObject($value)';
}

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId.fromUniqueString(String uniqueId) {
    return UniqueId._(
      right(uniqueId),
    );
  }

  factory UniqueId() {
    return UniqueId._(
      right(const Uuid().v1()),
    );
  }

  const UniqueId._(this.value);
}

class JunctionUniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory JunctionUniqueId.fromUniqueString(String uniqueId) {
    return JunctionUniqueId._(
      validateJunctionId(
        uniqueId,
      ),
    );
  }

  factory JunctionUniqueId(List<String> listOfUniqueIds) {
    return JunctionUniqueId._(
      right(
        listOfUniqueIds.join('_'),
      ),
    );
  }

  const JunctionUniqueId._(this.value);
}