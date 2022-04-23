import 'package:dartz/dartz.dart';
import 'package:fimber/fimber.dart';
import 'package:flutter_android/infrastructure/api_client.dart';
import 'package:flutter_android/infrastructure/guest/guest_list_mapper.dart';
import 'package:flutter_android/models/domain/guest.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:flutter_android/presentation/core/constants.dart';
import 'package:injectable/injectable.dart';

import '../../models/dto/guest_dto.dart';
import '../api_client.dart';

@injectable
class GuestRepository {
  final ApiClient _apiClient;
  final GuestListMapper _guestListMapper;

  GuestRepository(this._apiClient, this._guestListMapper);

  Future<Either<Failure, List<Guest>>> getGuests({required int offset}) async {
    try {
      final guests = await _apiClient.getGuests(offset, pageSize);
      return Right<Failure, List<Guest>>(_guestListMapper(guests.items));
    } catch (e, st) {
      Fimber.w('Could not fetch guest list', ex: e, stacktrace: st);
      return const Left(Failure.unexpected());
    }
  }

  Future<Either<Failure, GuestDto>> postGuest(GuestDto guest) async {
    try {
      final postGuest = await _apiClient.postGuest(guest);
      return right(postGuest);
    } catch (e, st) {
      Fimber.w('Could not update guest', ex: e, stacktrace: st);
      return const Left(Failure.unexpected());
    }
  }
}
