// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/home/home_bloc.dart' as _i4;
import 'application/random_joke/random_joke_bloc.dart' as _i8;
import 'data/core/api_service.dart' as _i5;
import 'di/data_module.dart' as _i9;
import 'domain/joke_list/i_get_joke_list.dart' as _i6;
import 'domain/random_joke/i_get_random_joke.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  final dataModule = _$DataModule();
  gh.lazySingleton<_i3.Dio>(() => dataModule.dio());
  gh.factory<_i4.HomeBloc>(() => _i4.HomeBloc());
  gh.factory<_i5.ApiService>(() => _i5.ApiService(dio: get<_i3.Dio>()));
  gh.lazySingleton<_i6.IGetJokeList>(
      () => dataModule.getJokeList(get<_i5.ApiService>()));
  gh.lazySingleton<_i7.IGetRandomJoke>(
      () => dataModule.getRandomJoke(get<_i5.ApiService>()));
  gh.factory<_i8.RandomJokeBloc>(() => _i8.RandomJokeBloc(
        get<_i7.IGetRandomJoke>(),
        get<_i6.IGetJokeList>(),
      ));
  return get;
}

class _$DataModule extends _i9.DataModule {}