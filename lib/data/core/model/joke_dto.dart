import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_dto.freezed.dart';
part 'joke_dto.g.dart';

@freezed
class JokeDto with _$JokeDto {
  factory JokeDto({required String id, required String joke}) = _JokeDto;

  factory JokeDto.fromJson(Map<String, dynamic> json) =>
      _$JokeDtoFromJson(json);
}