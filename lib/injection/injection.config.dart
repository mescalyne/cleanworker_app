// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../core/data/network/client.dart' as _i5;
import '../core/data/network/services/auth.dart' as _i6;
import '../core/data/network/services/shift.dart' as _i7;
import '../core/data/repository/auth.dart' as _i8;
import '../core/data/repository/shift.dart' as _i11;
import '../core/data/storage/user.dart' as _i4;
import '../core/domain/usecase/auth.dart' as _i9;
import '../core/domain/usecase/shift.dart' as _i12;
import '../core/presentation/router/bloc/bloc.dart' as _i3;
import '../core/presentation/screens/first/bloc/bloc.dart' as _i10;
import '../core/presentation/screens/openshift/bloc/bloc.dart'
    as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.RouterEventSink>(_i3.RouterBloc());
  gh.factory<_i4.UserStorage>(() => _i4.AuthStorageHive());
  gh.lazySingleton<_i5.VTServiceApi>(() => _i5.VTServiceApiImpl());
  gh.factory<_i6.AuthService>(
      () => _i6.AuthServiceImpl(get<_i5.VTServiceApi>()));
  gh.factory<_i7.ShiftService>(() =>
      _i7.ShiftServiceImpl(get<_i5.VTServiceApi>(), get<_i4.UserStorage>()));
  gh.factory<_i8.AuthRepository>(() =>
      _i8.AuthRepositoryImpl(get<_i6.AuthService>(), get<_i4.UserStorage>()));
  gh.factory<_i9.AuthUseCase>(
      () => _i9.AuthUseCaseImpl(get<_i8.AuthRepository>()));
  gh.factory<_i10.FirstBloc>(() => _i10.FirstBloc(get<_i3.RouterEventSink>(),
      get<_i9.AuthUseCase>(), get<_i4.UserStorage>()));
  gh.factory<_i11.ShiftRepository>(
      () => _i11.ShiftRepositoryImpl(get<_i7.ShiftService>()));
  gh.factory<_i12.OpenShiftPhotoUploadUseCase>(
      () => _i12.OpenShiftPhotoUploadUseCaseImpl(get<_i11.ShiftRepository>()));
  gh.factory<_i12.OpenShiftPhotoUseCase>(
      () => _i12.OpenShiftPhotoUseCaseImpl(get<_i11.ShiftRepository>()));
  gh.factory<_i12.OpenShiftUseCase>(
      () => _i12.OpenShiftUseCaseImpl(get<_i11.ShiftRepository>()));
  gh.factory<_i13.OpenshiftBloc>(() => _i13.OpenshiftBloc(
      get<_i3.RouterEventSink>(),
      get<_i12.OpenShiftUseCase>(),
      get<_i12.OpenShiftPhotoUseCase>(),
      get<_i12.OpenShiftPhotoUploadUseCase>()));
  return get;
}
