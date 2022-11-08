// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/core/api_service.dart' as _i5;
import 'di/data_module.dart' as _i10;
import 'domain/home/bloc/home_bloc.dart' as _i4;
import 'domain/joke_list/bloc/joke_list_bloc.dart' as _i8;
import 'domain/joke_list/repository/i_get_joke_list.dart' as _i6;
import 'domain/random_joke/bloc/random_joke_bloc.dart' as _i9;
import 'domain/random_joke/repository/i_get_random_joke.dart'
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
  gh.factory<_i8.JokeListBloc>(() => _i8.JokeListBloc(get<_i6.IGetJokeList>()));
  gh.factory<_i9.RandomJokeBloc>(
      () => _i9.RandomJokeBloc(get<_i7.IGetRandomJoke>()));
  return get;
}

class _$DataModule extends _i10.DataModule {}
