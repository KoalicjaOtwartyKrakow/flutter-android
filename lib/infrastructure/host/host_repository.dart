import 'package:dartz/dartz.dart';
import 'package:flutter_android/infrastructure/api_client.dart';
import 'package:flutter_android/models/failure.dart';
import 'package:injectable/injectable.dart';

@injectable
class HostRepository {
  final ApiClient _apiClient;

  HostRepository(this._apiClient);

  Future<Either<Failure, String>> downloadContract() async {
    try {
      final downloadUrlWithQuotation = await _apiClient.getContractDownloadUrl();
      final downloadUrl = downloadUrlWithQuotation.substring(1, downloadUrlWithQuotation.length - 1);

      return Right<Failure, String>(downloadUrl);
    } catch (e) {
      return const Left(Failure.unexpected());
    }
  }
}
