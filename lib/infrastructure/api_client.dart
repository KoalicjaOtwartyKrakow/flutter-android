import 'package:dio/dio.dart';
import 'package:flutter_android/models/accomodation.dart';
import 'package:flutter_android/models/dto/guest_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

import '../models/guest.dart';

part 'api_client.g.dart';

@injectable
@RestApi(
    baseUrl: "https://europe-central2-salamlab-aparatments.cloudfunctions.net/")
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET("/accomodation")
  Future<List<Accommodation>> getAccomodations();

  @GET("/accomodation/{id}")
  Future<List<Accommodation>> getAccomodationById(@Path("id") String id);

  @POST("/accomodation")
  Future<Accommodation> createAccomodation(@Body() Accommodation accomodation);

  @GET("/dev/doc/contract")
  Future<String> getContractDownloadUrl();

  @GET("/guest")
  Future<List<GuestDto>> getGuests();

  @POST("/guest")
  Future<Guest> postGuest(Guest guest);
}

// This is needed to be injected into ApiClient through injectable_generator
@module
abstract class RegisterModule {
  Dio get dio => Dio();
  String get baseUrl =>
      'https://europe-central2-salamlab-aparatments.cloudfunctions.net';
}
