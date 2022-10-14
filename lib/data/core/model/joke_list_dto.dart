import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dad_jokes_flutter/data/core/model/joke_dto.dart';

part 'joke_list_dto.freezed.dart';

part 'joke_list_dto.g.dart';

@freezed
class JokeListDto with _$JokeListDto {
  factory JokeListDto(
      {@JsonKey(name: "current_page") required int currentPage,
      required int limit,
      @JsonKey(name: "next_page") required int nextPage,
      @JsonKey(name: "previous_page") required int previousPage,
      @JsonKey(name: "search_term") required String searchTerm,
      required int status,
      @JsonKey(name: "total_jokes") required int totalJokes,
      @JsonKey(name: "total_pages") required int totalPages,
      required List<JokeDto> results}) = _JokeListDto;

  factory JokeListDto.fromJson(Map<String, dynamic> json) =>
      _$JokeListDtoFromJson(json);
}
