// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i10;

import 'application/connection/connection_bloc.dart' as _i11;
import 'domain/connection/connection_facade_interface.dart' as _i5;
import 'domain/connection/connection_info_facade_interface.dart' as _i8;
import 'infrastructure/authentication/authentication_facade.dart' as _i3;
import 'infrastructure/authentication/authentication_requester_facade.dart'
    as _i4;
import 'infrastructure/connection/connection_facade.dart' as _i6;
import 'infrastructure/connection/connection_info_facade.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthenticationFacade>(
      () => _i3.AuthenticationFacade(get<_i4.AuthenticationRequesterFacade>()));
  gh.lazySingleton<_i5.ConnectionFacadeInterface>(
      () => _i6.ConnectionFacade(get<_i7.Connectivity>()));
  gh.lazySingleton<_i8.ConnectionInfoFacadeInterface>(
      () => _i9.ConnectionInfoFacade(get<_i10.InternetConnectionChecker>()));
  gh.factory<_i11.ConnectionBloc>(() => _i11.ConnectionBloc(
      get<_i5.ConnectionFacadeInterface>(),
      get<_i8.ConnectionInfoFacadeInterface>()));
  return get;
}
