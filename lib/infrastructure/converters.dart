import 'package:flutter_android/models/accomodation_verification_status.dart';
import 'package:intl/intl.dart';

DateTime dateTimeFromString(String dateString) {
  final customDateFormat = DateFormat('dd/MM/yyyy hh:mm:ss');
  return customDateFormat.parse(dateString);
}

String dateTimeToString(DateTime dateTime) {
  final customDateFormat = DateFormat('dd/MM/yyyy hh:mm:ss');
  return customDateFormat.format(dateTime);
}
