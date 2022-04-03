import 'package:dartz/dartz.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:injectable/injectable.dart';

import '../../../models/guest.dart';
import '../api_client.dart';


@injectable
class GuestRepository {

  final ApiClient _apiClient;

  GuestRepository(this._apiClient);

  @override
  Future<Either<Failure, Guest>> postGuest(Guest guest) async {

    try {
      final postGuest = await _apiClient.postGuest(guest);
      return right(
          postGuest
      );
    } catch (e) {
      return const Left(Failure.unexpected());
    }


  }
}