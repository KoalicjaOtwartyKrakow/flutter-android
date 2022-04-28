import 'dart:core';

import 'package:flutter_android/infrastructure/guest/stay_duration_dto_to_domain_mapper.dart';
import 'package:flutter_android/models/domain/stay_duration.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final mapper = StayDurationDtoToDomainMapper();

  test('deserializes null', () {
    expect(mapper(null), isNull);
  });

  test('deserializes simple values', () {
    expect(mapper('11d'), const StayDuration(11, DurationUnit.day));
    expect(mapper('22w'), const StayDuration(22, DurationUnit.week));
    expect(mapper('33m'), const StayDuration(33, DurationUnit.month));
    expect(mapper('44y'), const StayDuration(44, DurationUnit.year));
  });

  test('deserializes complex values', () {
    expect(mapper('11d,22d'), const StayDuration(22, DurationUnit.day));
    expect(mapper('11d, 22d'), const StayDuration(22, DurationUnit.day));
    expect(mapper('22w,'), const StayDuration(22, DurationUnit.week));
  });

  test('returns null on invalid units', () {
    expect(mapper(''), isNull);
    expect(mapper(','), isNull);
    expect(mapper('22z'), isNull);
    expect(mapper('#w'), isNull);
  });
}
