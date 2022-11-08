import 'package:dad_jokes_flutter/domain/core/bloc/ui_state.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:dad_jokes_flutter/domain/core/model/failure.dart';
import 'package:dad_jokes_flutter/domain/joke/model/joke_entity.dart';
import 'package:dad_jokes_flutter/domain/random_joke/repository/i_get_random_joke.dart';

part 'random_joke_bloc.freezed.dart';

part 'random_joke_event.dart';

@injectable
class RandomJokeBloc extends Bloc<RandomJokeEvent, UIState<JokeEntity>> {
  final IGetRandomJoke iGetRandomJoke;

  RandomJokeBloc(this.iGetRandomJoke) : super(UIState.initial()) {
    on<RandomJokeEvent>((event, emit) async {
      await event.map(onRandomJokeRequested: (onRandomJokeRequested) async {
        emit(Loading());

        Either<ValueFailure, JokeEntity> result =
            await iGetRandomJoke.getRandomJoke();

        result.fold((failure) {
          emit(Error(failure));
        }, (jokeEntity) {
          emit(Success(jokeEntity));
        });
      });
    });
  }
}
