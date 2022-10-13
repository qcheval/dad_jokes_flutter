import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dad_jokes_flutter/data/core/api_service.dart';
import 'package:dad_jokes_flutter/data/joke_list/get_joke_list.dart';
import 'package:dad_jokes_flutter/data/random_joke/get_random_joke.dart';
import 'package:dad_jokes_flutter/domain/joke_list/i_get_joke_list.dart';
import 'package:dad_jokes_flutter/domain/random_joke/i_get_random_joke.dart';

@module
abstract class DataModule {
  @lazySingleton
  Dio dio() => Dio();

  @lazySingleton
  IGetRandomJoke getRandomJoke(ApiService apiService) => GetRandomJoke(apiService: apiService);

  @lazySingleton
  IGetJokeList getJokeList(ApiService apiService) => GetJokeList(apiService: apiService);
}
