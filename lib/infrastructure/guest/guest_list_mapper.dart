import 'package:flutter_android/models/domain/guest.dart';
import 'package:flutter_android/models/dto/guest_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:phonenumbers/phonenumbers.dart';

@injectable
class GuestListMapper {
  List<Guest> call(List<GuestDto> dtos) => dtos
      .map((e) => Guest(
            fullName: e.fullName,
            email: e.email,
            normalizedPhoneNumber: PhoneNumber.normalize(e.phoneNumber),
            priorityStatus: e.priorityStatus,
            priorityDate: e.priorityDate,
            totalPeopleCount: e.peopleInGroup,
            adultMaleCount: e.adultMaleCount,
            adultFemaleCount: e.adultFemaleCount,
          ))
      .toList(growable: false);
}
