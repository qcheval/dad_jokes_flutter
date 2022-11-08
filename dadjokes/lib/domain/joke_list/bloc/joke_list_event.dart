part of 'joke_list_bloc.dart';

@freezed
class JokeListEvent with _$JokeListEvent {
  const factory JokeListEvent.onJokeListRequested() = OnJokeListRequested;
}
