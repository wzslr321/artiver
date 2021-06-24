// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/connection/connection_bloc.dart' as _i3;
import 'domain/connection/connection_facade_interface.dart' as _i4;
import 'domain/connection/connection_info_facade_interface.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.ConnectionBloc>(() => _i3.ConnectionBloc(
      get<_i4.ConnectionFacadeInterface>(),
      get<_i5.ConnectionInfoFacadeInterface>()));
  return get;
}
