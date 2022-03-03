import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import 'dto/apartment_dto.dart';

part 'api_client.g.dart';

@injectable
@RestApi(baseUrl: "https://cu2kg3w6c1.execute-api.eu-west-1.amazonaws.com/")
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/dev/apartments")
  Future<List<ApartmentDto>> listApartments();

  @POST("/dev/apartments")
  Future<ApartmentDto> postAnApartment(@Body() ApartmentDto apartmentDto);

  @GET("/dev/doc/contract")
  Future<String> getContractDownloadUrl();
}

// This is needed to be injected into ApiClient through injectable_generator
@module
abstract class RegisterModule {
  Dio get dio => Dio();
  String get baseUrl =>
      'https://cu2kg3w6c1.execute-api.eu-west-1.amazonaws.com/';
}
