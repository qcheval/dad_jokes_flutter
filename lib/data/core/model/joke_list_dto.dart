import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dad_jokes_flutter/data/core/model/joke_dto.dart';

part 'joke_list_dto.freezed.dart';

part 'joke_list_dto.g.dart';

@freezed
class JokeListDto with _$JokeListDto {
  factory JokeListDto(
      {required int current_page,
      required int limit,
      required int next_page,
      required int previous_page,
      required String search_term,
      required int status,
      required int total_jokes,
      required int total_pages,
      required List<JokeDto> results}) = _JokeListDto;

  factory JokeListDto.fromJson(Map<String, dynamic> json) => _$JokeListDtoFromJson(json);
}
