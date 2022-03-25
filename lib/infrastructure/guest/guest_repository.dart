import 'package:dartz/dartz.dart';
import 'package:flutter_android/infrastructure/api_client.dart';
import 'package:flutter_android/models/domain/guest.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:injectable/injectable.dart';

@injectable
class GuestRepository {
  final ApiClient _apiClient;

  GuestRepository(this._apiClient);

  Future<Either<Failure, List<Guest>>> getGuests() async {
    try {
      final guests = await _apiClient.getGuests();

      return Right<Failure, List<Guest>>([]);
    } catch (e) {
      return const Left(Failure.unexpected());
    }
  }
}
