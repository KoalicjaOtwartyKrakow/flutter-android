// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/accommodation_form/accommodation_form_bloc.dart' as _i11;
import 'application/accommodation_loader/accommodation_loader_bloc.dart' as _i6;
import 'application/host/host_bloc.dart' as _i10;
import 'infrastructure/accomodation/i_accomodation_repository.dart' as _i4;
import 'infrastructure/accomodation/impl/mock_accomodation_repository.dart'
    as _i5;
import 'infrastructure/api_client.dart' as _i7;
import 'infrastructure/host/accommodation_form_repository.dart' as _i9;
import 'infrastructure/host/host_repository.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.IAccomodationRepository>(
      () => _i5.MockAccomodationRepository());
  gh.factory<String>(() => registerModule.baseUrl);
  gh.factory<_i6.AccommodationLoaderBloc>(
      () => _i6.AccommodationLoaderBloc(get<_i4.IAccomodationRepository>()));
  gh.factory<_i7.ApiClient>(
      () => _i7.ApiClient(get<_i3.Dio>(), baseUrl: get<String>()));
  gh.factory<_i8.HostRepository>(
      () => _i8.HostRepository(get<_i7.ApiClient>()));
  gh.factory<_i9.AccommodationFormRepository>(
      () => _i9.AccommodationFormRepository(get<_i7.ApiClient>()));
  gh.factory<_i10.HostBloc>(() => _i10.HostBloc(get<_i8.HostRepository>()));
  gh.factory<_i11.AccommodationFormBloc>(
      () => _i11.AccommodationFormBloc(get<_i9.AccommodationFormRepository>()));
  return get;
}

class _$RegisterModule extends _i7.RegisterModule {}
