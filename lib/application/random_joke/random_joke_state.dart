part of 'random_joke_bloc.dart';

enum RandomJokeStatus { initial, success, loading, error }

@freezed
class RandomJokeState with _$RandomJokeState {
  const factory RandomJokeState(RandomJokeStatus status, JokeViewModel? jokeViewModel) = _RandomJokeState;

  factory RandomJokeState.initial() => RandomJokeState(RandomJokeStatus.initial, null);
}