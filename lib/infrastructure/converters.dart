import 'package:intl/intl.dart';

final _dateFormat = DateFormat('yyyy-MM-ddThh:mm:ssZ');

DateTime? dateTimeFromString(String? dateString) => dateString != null ? _dateFormat.parse(dateString) : null;

String dateTimeToString(DateTime dateTime) => _dateFormat.format(dateTime);

String? nullableDateTimeToString(DateTime? dateTime) {
  if (dateTime != null) {
    return dateTimeToString(dateTime);
  }
  return null;
}
