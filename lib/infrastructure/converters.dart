import 'package:flutter_android/models/guest.dart';
import 'package:intl/intl.dart';

DateTime dateTimeFromString(String dateString) {
  final customDateFormat = DateFormat('dd/MM/yyyy hh:mm:ss');
  return customDateFormat.parse(dateString);
}

String dateTimeToString(DateTime dateTime) {
  final customDateFormat = DateFormat('dd/MM/yyyy hh:mm:ss');
  return customDateFormat.format(dateTime);
}

String? nullableDateTimeToString(DateTime? dateTime) {
  if (dateTime != null) {
    return dateTimeToString(dateTime);
  }
  return null;
}

List<ChildAge> childrenAgesFromString(String childrenAgesStr) {
  List<ChildAge> childrenAges = [];
  childrenAgesStr.replaceAll("[", '');
  childrenAgesStr.replaceAll("]", '');
  var splitAges = childrenAgesStr.split(',');
  for (String ageStr in splitAges) {
    ChildAge childAge = ChildAge();
    childAge.age = int.parse(ageStr);
    childrenAges.add(childAge);
  }
  return childrenAges;
}

String childrenAgesToString(List<ChildAge> childrenAges) {
  String childrenAgesStr = '[';
  for (ChildAge age in childrenAges) {
    childrenAgesStr += age.toString() + ",";
  }
  childrenAgesStr += "]";
  return childrenAgesStr;
}


String? nullableChildenAgesToString(List<ChildAge>? childrenAges) {
  if (childrenAges != null) {
    return childrenAgesToString(childrenAges);
  }
  return null;
}