import 'package:flutter_android/infrastructure/guest/stay_duration_dto_to_domain_mapper.dart';
import 'package:flutter_android/models/domain/guest.dart';
import 'package:flutter_android/models/dto/guest_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:phonenumbers/phonenumbers.dart';

@injectable
class GuestListMapper {
  final StayDurationDtoToDomainMapper _stayDurationMapper;

  GuestListMapper(this._stayDurationMapper);

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
            childrenAges: e.childrenAges,
            howLongToStay: _stayDurationMapper(e.howLongToStay),
            specialNeeds: e.specialNeeds,
            foodAllergies: e.foodAllergies,
            havePets: e.havePets,
            meatFreeDiet: e.meatFreeDiet,
            lactoseFreeDiet: e.lactoseFreeDiet,
            glutenFreeDiet: e.glutenFreeDiet,
          ))
          .toList(growable: false);
}
