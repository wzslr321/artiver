// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:connectivity_plus/connectivity_plus.dart' as _i5;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:internet_connection_checker/internet_connection_checker.dart'
    as _i8;

import 'application/connection/connection_bloc.dart' as _i9;
import 'domain/connection/connection_facade_interface.dart' as _i3;
import 'domain/connection/connection_info_facade_interface.dart' as _i6;
import 'infrastructure/connection/connection_facade.dart' as _i4;
import 'infrastructure/connection/connection_info_facade.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.ConnectionFacadeInterface>(
      () => _i4.ConnectionFacade(get<_i5.Connectivity>()));
  gh.lazySingleton<_i6.ConnectionInfoFacadeInterface>(
      () => _i7.ConnectionInfoFacade(get<_i8.InternetConnectionChecker>()));
  gh.factory<_i9.ConnectionBloc>(() => _i9.ConnectionBloc(
      get<_i3.ConnectionFacadeInterface>(),
      get<_i6.ConnectionInfoFacadeInterface>()));
  return get;
}
