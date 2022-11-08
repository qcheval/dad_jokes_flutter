import 'package:dartz/dartz.dart';
import 'package:dad_jokes_flutter/domain/core/model/failure.dart';
import 'package:dad_jokes_flutter/domain/joke/model/joke_entity.dart';

abstract class IGetRandomJoke {
  Future<Either<ValueFailure, JokeEntity>> getRandomJoke();
}
