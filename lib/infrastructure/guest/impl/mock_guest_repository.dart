import 'package:dartz/dartz.dart';
import 'package:flutter_android/infrastructure/guest/i_guest_repository.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:injectable/injectable.dart';

import '../../../models/guest.dart';



@LazySingleton(as: IGuestRepository)
class MockGuestRepository implements IGuestRepository {
  @override
  Future<Either<Failure, Guest>> postGuest(Guest guest) async {
    return right(
      guest
    );
  }
}