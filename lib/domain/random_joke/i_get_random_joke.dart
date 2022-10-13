import 'package:dartz/dartz.dart';
import 'package:dad_jokes_flutter/domain/core/failure.dart';
import 'package:dad_jokes_flutter/domain/joke/joke_entity.dart';

abstract class IGetRandomJoke {
  Future<Either<ValueFailure, JokeEntity>> getRandomJoke();
}
