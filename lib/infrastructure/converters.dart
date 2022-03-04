import 'package:flutter_android/models/voivodeship.dart';
import 'package:intl/intl.dart';

DateTime dateTimeFromString(String dateString) {
  final customDateFormat = DateFormat('dd/MM/yyyy hh:mm:ss');
  return customDateFormat.parse(dateString);
}

String dateTimeToString(DateTime dateTime) {
  final customDateFormat = DateFormat('dd/MM/yyyy hh:mm:ss');
  return customDateFormat.format(dateTime);
}

Voivodeship voivodeshipFromString(String value) {
  return Voivodeship.values.firstWhere(
    (e) => e.name == value,
  );
}
