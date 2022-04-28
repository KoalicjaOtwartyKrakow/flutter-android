import 'package:equatable/equatable.dart';

class StayDuration extends Equatable {
  final DurationUnit unit;
  final int value;

  const StayDuration(this.value, this.unit);

  @override
  List<Object?> get props => [unit, value];
}

enum DurationUnit { day, week, month, year }
