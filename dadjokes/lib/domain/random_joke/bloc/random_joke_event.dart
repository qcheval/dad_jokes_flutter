part of 'random_joke_bloc.dart';

@freezed
class RandomJokeEvent with _$RandomJokeEvent {
  const factory RandomJokeEvent.onRandomJokeRequested() = OnRandomJokeRequested;
}