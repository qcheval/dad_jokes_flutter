import 'package:dartz/dartz.dart';
import 'package:dad_jokes_flutter/domain/core/failure.dart';
import 'package:dad_jokes_flutter/domain/joke/joke_entity.dart';

abstract class IGetJokeList {
  Future<Either<ValueFailure, List<JokeEntity>>> getJokeList(int page, int limit);
}