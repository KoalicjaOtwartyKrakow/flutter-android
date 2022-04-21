import 'package:flutter_android/models/domain/guest.dart';
import 'package:flutter_android/models/dto/guest_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class GuestListMapper {
  List<Guest> call(List<GuestDto> dtos) => dtos
      .map((e) => Guest(
            e.fullName,
            e.email,
            e.phoneNumber,
            e.priorityStatus,
            e.priorityDate,
          ))
      .toList(growable: false);
}
