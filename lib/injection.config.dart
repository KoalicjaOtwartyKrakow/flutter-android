// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'infrastructure/api_client.dart' as _i6;
import 'infrastructure/guest/i_guest_repository.dart' as _i4;
import 'infrastructure/guest/impl/mock_guest_repository.dart' as _i5;
import 'presentation/guest/guest_form_bloc/guest_form_bloc.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final registerModule = _$RegisterModule();
  gh.factory<_i3.Dio>(() => registerModule.dio);
  gh.lazySingleton<_i4.IGuestRepository>(() => _i5.MockGuestRepository());
  gh.factory<String>(() => registerModule.baseUrl);
  gh.factory<_i6.ApiClient>(
      () => _i6.ApiClient(get<_i3.Dio>(), baseUrl: get<String>()));
  gh.factory<_i7.GuestFormBloc>(
      () => _i7.GuestFormBloc(get<_i4.IGuestRepository>()));
  return get;
}

class _$RegisterModule extends _i6.RegisterModule {}
