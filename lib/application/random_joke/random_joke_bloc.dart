import 'package:dad_jokes_flutter/application/core/ui_state.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dad_jokes_flutter/application/core/mapper/joke_mapper.dart';
import 'package:dad_jokes_flutter/application/core/model/joke_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:dad_jokes_flutter/domain/core/failure.dart';
import 'package:dad_jokes_flutter/domain/joke/joke_entity.dart';
import 'package:dad_jokes_flutter/domain/random_joke/i_get_random_joke.dart';

part 'random_joke_bloc.freezed.dart';

part 'random_joke_event.dart';


@injectable
class RandomJokeBloc extends Bloc<RandomJokeEvent, UIState<JokeViewModel>> {
  final IGetRandomJoke iGetRandomJoke;

  RandomJokeBloc(this.iGetRandomJoke) : super(UIState()) {
    on<RandomJokeEvent>((event, emit) async {
      await event.map(onRandomJokeRequested: (onRandomJokeRequested) async {
        emit(Loading());

        Either<ValueFailure, JokeEntity> result =
            await iGetRandomJoke.getRandomJoke();

        result.fold((failure) {
          emit(Error(failure));
        }, (jokeEntity) {
          emit(Success(jokeEntity.fromDomain()));
        });
      });
    });
  }
}
