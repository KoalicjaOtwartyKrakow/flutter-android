// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/accommodation_form/accommodation_form_bloc.dart' as _i9;
import 'application/accomodation_loader/accomodation_loader_bloc.dart' as _i6;
import 'infrastructure/accomodation/i_accomodation_repository.dart' as _i4;
import 'infrastructure/accomodation/impl/mock_accomodation_repository.dart'
    as _i5;
import 'infrastructure/api_client.dart' as _i7;
import 'infrastructure/host/accommodation_form_repository.dart' as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.IAccomodationRepository>(() => _i5.MockAccomodationRepository());
  gh.factory<String>(() => registerModule.baseUrl);
  gh.factory<_i6.AccomodationLoaderBloc>(() => _i6.AccomodationLoaderBloc(get<_i4.IAccomodationRepository>()));
  gh.factory<_i7.ApiClient>(() => _i7.ApiClient(get<_i3.Dio>(), baseUrl: get<String>()));
  gh.factory<_i8.AccommodationFormRepository>(() => _i8.AccommodationFormRepository(get<_i7.ApiClient>()));
  gh.factory<_i9.AccommodationFormBloc>(() => _i9.AccommodationFormBloc(get<_i8.AccommodationFormRepository>()));
  return get;
}

class _$RegisterModule extends _i7.RegisterModule {}
