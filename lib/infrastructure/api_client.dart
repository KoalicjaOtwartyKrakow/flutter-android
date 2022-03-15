import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_android/models/apartment.dart';
import 'package:flutter_android/presentation/guest/submit_failure.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../models/guest.dart';

part 'api_client.g.dart';

@injectable
@RestApi(baseUrl: "https://cu2kg3w6c1.execute-api.eu-west-1.amazonaws.com")
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/dev/apartments")
  Future<List<Apartment>> listApartments();

  @POST("/dev/apartments")
  Future<Apartment> postAnApartment(@Body() Apartment apartment);

  @GET("/dev/doc/contract")
  Future<String> getContractDownloadUrl();

  @POST("/dev/guests")
  Future<Guest> postAGuest(@Body() Guest guest);
}

// This is needed to be injected into ApiClient through injectable_generator
@module
abstract class RegisterModule {
  Dio get dio => Dio();
  String get baseUrl =>
      'https://cu2kg3w6c1.execute-api.eu-west-1.amazonaws.com';
}
