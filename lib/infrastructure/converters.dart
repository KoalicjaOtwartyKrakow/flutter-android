import 'package:intl/intl.dart';

final _dateFormat = DateFormat('yyyy-MM-ddThh:mm:ssZ');

DateTime? dateTimeFromString(String? dateString) => dateString != null ? _dateFormat.parse(dateString) : null;

String? nullableDateTimeToString(DateTime? dateTime) => dateTime != null ? _dateFormat.format(dateTime) : null;
