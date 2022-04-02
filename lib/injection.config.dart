// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/accommodation_form/accommodation_form_bloc.dart' as _i14;
import 'application/accommodation_loader/accommodation_loader_bloc.dart' as _i8;
import 'application/host/host_bloc.dart' as _i13;
import 'infrastructure/accomodation/i_accomodation_repository.dart' as _i4;
import 'infrastructure/accomodation/impl/mock_accomodation_repository.dart'
    as _i5;
import 'infrastructure/api_client.dart' as _i9;
import 'infrastructure/guest/i_guest_repository.dart' as _i6;
import 'infrastructure/guest/impl/mock_guest_repository.dart' as _i7;
import 'infrastructure/host/accommodation_form_repository.dart' as _i12;
import 'infrastructure/host/host_repository.dart' as _i11;
import 'presentation/guest/guest_form_bloc/guest_form_bloc.dart'
    as _i10; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.IAccomodationRepository>(
      () => _i5.MockAccomodationRepository());
  gh.lazySingleton<_i6.IGuestRepository>(() => _i7.MockGuestRepository());
  gh.factory<String>(() => registerModule.baseUrl);
  gh.factory<_i8.AccommodationLoaderBloc>(
      () => _i8.AccommodationLoaderBloc(get<_i4.IAccomodationRepository>()));
  gh.factory<_i9.ApiClient>(
      () => _i9.ApiClient(get<_i3.Dio>(), baseUrl: get<String>()));
  gh.factory<_i10.GuestFormBloc>(
      () => _i10.GuestFormBloc(get<_i6.IGuestRepository>()));
  gh.factory<_i11.HostRepository>(
      () => _i11.HostRepository(get<_i9.ApiClient>()));
  gh.factory<_i12.AccommodationFormRepository>(
      () => _i12.AccommodationFormRepository(get<_i9.ApiClient>()));
  gh.factory<_i13.HostBloc>(() => _i13.HostBloc(get<_i11.HostRepository>()));
  gh.factory<_i14.AccommodationFormBloc>(() =>
      _i14.AccommodationFormBloc(get<_i12.AccommodationFormRepository>()));
  return get;
}

class _$RegisterModule extends _i9.RegisterModule {}
