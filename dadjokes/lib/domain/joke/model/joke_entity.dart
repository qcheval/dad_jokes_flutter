import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_entity.freezed.dart';

@freezed
class JokeEntity with _$JokeEntity {
  const factory JokeEntity({required String id, required String text}) = _JokeEntity;
}
