import 'package:json_annotation/json_annotation.dart';

import '../infrastructure/converters.dart';

part 'guest.g.dart';

@JsonSerializable()
class Guest {

  @JsonKey(name: 'GuestId')
  String? id;

  @JsonKey(name: 'FULL_NAME')
  String fullName;

  @JsonKey(name: 'PHONE_NUMBER')
  String phoneNumber;

  @JsonKey(name: 'EMAIL')
  String email;

  @JsonKey(name: 'PEOPLE_IN_GROUP')
  int? peopleInGroup;

  @JsonKey(name: 'ADULT_MALE_COUNT')
  int? adultMaleCount;

  @JsonKey(name: 'ADULT_FEMALE_COUNT')
  int? adultFemaleCount;

  @JsonKey(name: 'CHILDREN_COUNT')
  int? childrenCount;

  @JsonKey(name: 'CHILDREN_AGES')
  List<int>? childrenAges;

  @JsonKey(name: 'HAVE_PETS')
  bool? havePets;

  @JsonKey(name: 'PETS_DESCRIPTION')
  String? petsDescription;

  @JsonKey(name: 'SPECIAL_NEEDS')
  String? specialNeeds;

  @JsonKey(name: 'HOW_LONG_TO_STAY')
  String? howLongToStay;

  @JsonKey(name: 'FINANCE_STATUS')
  String? financeStatus;

  @JsonKey(
    name: 'CreationTime',
    fromJson: dateTimeFromString,
    toJson: nullableDateTimeToString,
  )
  DateTime? createdAt;

  Guest({
    this.id,
    required this.fullName,
    required this.phoneNumber,
    required this.email,
    this.peopleInGroup,
    this.adultMaleCount,
    this.adultFemaleCount,
    this.childrenCount,
    this.childrenAges,
    this.havePets,
    this.petsDescription,
    this.specialNeeds,
    this.howLongToStay,
    this.financeStatus,
    this.createdAt,
  });

  factory Guest.fromJson(Map<String, dynamic> json) =>
      _$GuestFromJson(json);
  Map<String, dynamic> toJson() => _$GuestToJson(this);

  bool isValidated() {
    if (validateFullName(fullName) == null
        && validatePhoneNumber(phoneNumber) == null
        && validateEmail(email) == null
    )
    {
      return true;
    }
    return false;
  }

  static String? validateFullName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Name is required';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone number is required';
    }
    String result = value.replaceAll(new RegExp(r"\D"), "");
    if (result.length < 9) {
      return 'Incorrect phone number';
    }
    return null;
  }

  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email address is required';
    }
    if (!value.contains('@')) {
      return 'Incorrect email address';
    }
    return null;
  }

  static String? validatePeopleInGroup(String? value) {
    if (value?.isEmpty ?? false) {
      if (!isNumeric(value)) {
        return 'Incorrect value';
      }
    }
    return null;
  }

  static String? validateAdultMaleCount(String? value) {
    if (value?.isEmpty ?? false) {
      if (!isNumeric(value)) {
        return 'Incorrect value';
      }
    }
    return null;
  }

  static String? validateAdultFemaleCount(String? value) {
    if (value?.isEmpty ?? false) {
      if (!isNumeric(value)) {
        return 'Incorrect value';
      }
    }
    return null;
  }

  static String? validateChildrenCount(String? value) {
    if (value?.isEmpty ?? false) {
      if (!isNumeric(value)) {
        return 'Incorrect value';
      }
    }
    return null;
  }

  static String? validateChildrenAges(String? value) {
    return null;
  }

  static String? validateHavePets(String? value) {
    return null;
  }

  static String? validatePetsDescription(String? value) {
    return null;
  }

  static String? validateSpecialNeeds(String? value) {
    return null;
  }

  static String? validateFinanceStatus(String? value) {
    return null;
  }

  static String? validateHowLongToStay(String? value) {
    return null;
  }

  static bool isNumeric(String? s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

}



