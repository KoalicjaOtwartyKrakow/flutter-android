import 'package:dartz/dartz.dart';
import 'package:flutter_android/infrastructure/api_client.dart';
import 'package:flutter_android/models/accomodation.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:injectable/injectable.dart';

@injectable
class ApartmentFormRepository {
  final ApiClient _apiClient;

  ApartmentFormRepository(this._apiClient);

  Future<Either<Failure, Accommodation>> submit(Accommodation accommodation) async {
    try {
      return Right<Failure, Accommodation>(await _apiClient.createAccomodation(accommodation));
    } catch (e) {
      return const Left(Failure.unexpected());
    }
  }
}
