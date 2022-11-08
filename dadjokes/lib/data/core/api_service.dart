import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:dad_jokes_flutter/data/core/model/joke_dto.dart';
import 'package:dad_jokes_flutter/data/core/model/joke_list_dto.dart';
import 'package:dad_jokes_flutter/domain/core/model/failure.dart';

const String baseUrl = "https://icanhazdadjoke.com";
const int httpSuccess = 200;
const int httpErrorNotFound = 404;
const int httpErrorServer = 503;

@injectable
class ApiService {
  final Dio dio;

  ApiService({required this.dio}) {
    dio.options.baseUrl = baseUrl;
    dio.options.connectTimeout = 5000; //5s
    dio.options.receiveTimeout = 3000;
    dio.options.headers.addAll({"Accept": "application/json", "User-Agent": "Flutter iCanHazDadJokes (https://github.com/qcheval/dad_jokes_flutter)"});
  }

  Future<Either<ValueFailure, JokeDto>> getRandomJoke() async {
    try {
      Response randomJokeResponse = await dio.get("/");
      switch (randomJokeResponse.statusCode) {
        case httpSuccess:
          return Right(JokeDto.fromJson(randomJokeResponse.data));
        case httpErrorNotFound:
        case httpErrorServer:
        default:
          return Left(ValueFailure.apiFailure(failedValue: randomJokeResponse.statusCode.toString()));
      }
    } catch (error) {
      return const Left(ValueFailure.apiFailure(failedValue: ""));
    }
  }

  Future<Either<ValueFailure, List<JokeDto>>> getJokeList(int page, int limit) async {
    try {
      Response randomJokeResponse = await dio.get("/search?page=$page&limit=$limit");
      switch (randomJokeResponse.statusCode) {
        case httpSuccess:
          JokeListDto jokeListDto = JokeListDto.fromJson(randomJokeResponse.data);
          return Right(jokeListDto.results);
        case httpErrorNotFound:
        case httpErrorServer:
        default:
          return Left(ValueFailure.apiFailure(failedValue: randomJokeResponse.statusCode.toString()));
      }
    } catch (error) {
      return const Left(ValueFailure.apiFailure(failedValue: ""));
    }
  }
}
