import 'package:flutter_android/models/domain/stay_duration.dart';
import 'package:injectable/injectable.dart';

final _durationRegExp = RegExp(r'(\d+)([dwmy])');

@injectable
class StayDurationDtoToDomainMapper {
  StayDuration? call(String? durationString) {
    if (durationString == null) return null;

    final allMatches = _durationRegExp.allMatches(durationString);
    if (allMatches.isEmpty) return null;
    return allMatches.map((m) {
      final value = int.tryParse(m.group(1)!);
      final unit = _durationUnitFromString(m.group(2)!);

      return value != null && unit != null ? StayDuration(value, unit) : null;
    }).last;
  }
}

DurationUnit? _durationUnitFromString(String unitString) {
  switch (unitString) {
    case 'd':
      return DurationUnit.day;
    case 'w':
      return DurationUnit.week;
    case 'm':
      return DurationUnit.month;
    case 'y':
      return DurationUnit.year;
    default:
      return null;
  }
}
