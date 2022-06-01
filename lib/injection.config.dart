// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'app/add_markers/add_markers_bloc.dart' as _i3;
import 'app/get_user_location/get_user_location_bloc.dart' as _i6;
import 'domain/user/i_user_repository.dart' as _i4;
import 'infrastructure/user/user_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AddMarkersBloc>(() => _i3.AddMarkersBloc());
  gh.factory<_i4.IUserRepository>(() => _i5.UserRepository());
  gh.factory<_i6.GetUserLocationBloc>(
      () => _i6.GetUserLocationBloc(get<_i4.IUserRepository>()));
  return get;
}
