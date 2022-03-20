// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;

import 'application/accommodation_form/accommodation_form_bloc.dart' as _i15;
import 'application/accommodation_loader/accommodation_loader_bloc.dart' as _i9;
import 'application/auth/auth_bloc.dart' as _i11;
import 'application/host/host_bloc.dart' as _i14;
import 'infrastructure/accomodation/i_accomodation_repository.dart' as _i5;
import 'infrastructure/accomodation/impl/mock_accomodation_repository.dart'
    as _i6;
import 'infrastructure/api_client.dart' as _i10;
import 'infrastructure/auth/i_auth_facade.dart' as _i7;
import 'infrastructure/auth/impl/auth_facade.dart' as _i8;
import 'infrastructure/host/accommodation_form_repository.dart' as _i13;
import 'infrastructure/host/host_repository.dart'
    as _i12; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.factory<_i4.GoogleSignIn>(() => registerModule.googleSignIng);
  gh.lazySingleton<_i5.IAccomodationRepository>(
      () => _i6.MockAccomodationRepository());
  gh.lazySingleton<_i7.IAuthFacade>(
      () => _i8.AuthFacade(get<_i4.GoogleSignIn>()));
  gh.factory<String>(() => registerModule.baseUrl);
  gh.factory<_i9.AccommodationLoaderBloc>(
      () => _i9.AccommodationLoaderBloc(get<_i5.IAccomodationRepository>()));
  gh.factory<_i10.ApiClient>(
      () => _i10.ApiClient(get<_i3.Dio>(), baseUrl: get<String>()));
  gh.factory<_i11.AuthBloc>(() => _i11.AuthBloc(get<_i7.IAuthFacade>()));
  gh.factory<_i12.HostRepository>(
      () => _i12.HostRepository(get<_i10.ApiClient>()));
  gh.factory<_i13.AccommodationFormRepository>(
      () => _i13.AccommodationFormRepository(get<_i10.ApiClient>()));
  gh.factory<_i14.HostBloc>(() => _i14.HostBloc(get<_i12.HostRepository>()));
  gh.factory<_i15.AccommodationFormBloc>(() =>
      _i15.AccommodationFormBloc(get<_i13.AccommodationFormRepository>()));
  return get;
}

class _$RegisterModule extends _i10.RegisterModule {}
