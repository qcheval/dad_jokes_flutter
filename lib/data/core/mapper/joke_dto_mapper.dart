import 'package:dad_jokes_flutter/data/core/model/joke_dto.dart';
import 'package:dad_jokes_flutter/domain/joke/joke_entity.dart';

extension JokeDtoMapper on JokeDto {
  JokeEntity toDomain() => JokeEntity(id: id, text: joke);
}