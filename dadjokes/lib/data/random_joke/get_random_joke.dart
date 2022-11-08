import 'package:dartz/dartz.dart';
import 'package:dad_jokes_flutter/data/core/api_service.dart';
import 'package:dad_jokes_flutter/data/core/mapper/joke_dto_mapper.dart';
import 'package:dad_jokes_flutter/domain/core/model/failure.dart';
import 'package:dad_jokes_flutter/domain/joke/model/joke_entity.dart';
import 'package:dad_jokes_flutter/domain/random_joke/repository/i_get_random_joke.dart';

class GetRandomJoke implements IGetRandomJoke {
  final ApiService apiService;

  GetRandomJoke({required this.apiService});

  @override
  Future<Either<ValueFailure, JokeEntity>> getRandomJoke() async {
    var result = await apiService.getRandomJoke();
    return result.fold((failure) => Left(failure), (jokeDto) => Right(jokeDto.toDomain()));
  }
}
