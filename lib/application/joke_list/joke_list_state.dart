part of 'joke_list_bloc.dart';

enum JokeListStatus { initial, loading, success, error }

@freezed
class JokeListState with _$JokeListState {
  const factory JokeListState(
      JokeListStatus status, List<JokeViewModel>? jokeList) = _JokeListState;

  factory JokeListState.initial() =>
      JokeListState(JokeListStatus.initial, null);
}
