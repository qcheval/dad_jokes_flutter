import 'package:dartz/dartz.dart';
import 'package:dad_jokes_flutter/data/core/api_service.dart';
import 'package:dad_jokes_flutter/domain/core/model/failure.dart';
import 'package:dad_jokes_flutter/domain/joke/model/joke_entity.dart';
import 'package:dad_jokes_flutter/domain/joke_list/repository/i_get_joke_list.dart';
import 'package:dad_jokes_flutter/data/core/mapper/joke_dto_mapper.dart';

class GetJokeList extends IGetJokeList {
  final ApiService apiService;

  GetJokeList({required this.apiService});

  @override
  Future<Either<ValueFailure, List<JokeEntity>>> getJokeList(int page, int limit) async {
    var result = await apiService.getJokeList(page, limit);

    return result.fold((failure) => Left(failure), (jokeListDto) {
      List<JokeEntity> jokeEntityList = jokeListDto.map((e) => e.toDomain()).toList();
      return Right(jokeEntityList);
    });
  }
}
