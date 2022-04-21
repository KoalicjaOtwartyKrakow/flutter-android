import 'package:dio/dio.dart';
import 'package:flutter_android/models/accomodation.dart';
import 'package:flutter_android/models/dto/guest_dto.dart';
import 'package:flutter_android/models/dto/guest_list_dto.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';

part 'api_client.g.dart';

@injectable
@RestApi(baseUrl: 'https://europe-central2-salamlab-aparatments.cloudfunctions.net')
abstract class ApiClient {
  @factoryMethod
  factory ApiClient(Dio dio, {String baseUrl}) = _ApiClient;

  @GET('/accomodation')
  Future<List<Accommodation>> getAccomodations();

  @GET('/accomodation/{id}')
  Future<List<Accommodation>> getAccomodationById(@Path('id') String id);

  @POST('/accomodation')
  Future<Accommodation> createAccomodation(@Body() Accommodation accomodation);

  @GET('/dev/doc/contract')
  Future<String> getContractDownloadUrl();

  @GET('/mobile/guest')
  Future<GuestListDto> getGuests(
    @Query('offset') int offset,
    @Query('limit') int limit,
  );

  @POST('/guest')
  Future<GuestDto> postGuest(GuestDto guest);
}

const _fakeJwt =
    'eyJnaXZlbl9uYW1lIjoiSm9obiIsImZhbWlseV9uYW1lIjoiRG9lIiwiZW1haWwiOiJqb2huLmRvZUBrb2FsaWNqYW90d2FydHlrcmFrb3cucGwiLCJzdWIiOiIxMDc2OTE1MDM1MDAwNjE1MDcxNTExMzA4MjM2NyIsInBpY3R1cmUiOiJodHRwczovL2dvb2dsZS5jb20vMTIzIn0';

@module
abstract class RegisterModule {
  Dio get dio => Dio(BaseOptions(
        headers: const {
          'Accept': 'application/json',
          'X-Endpoint-API-UserInfo': _fakeJwt,
          'X-api-key': String.fromEnvironment('api-key'),
        },
      ));

  String get baseUrl => 'https://apartments-dev.r3.salamlab.pl/api';
}
