import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dad_jokes_flutter/application/core/mapper/joke_mapper.dart';
import 'package:dad_jokes_flutter/application/core/model/joke_view_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:dad_jokes_flutter/domain/core/failure.dart';
import 'package:dad_jokes_flutter/domain/joke/joke_entity.dart';
import 'package:dad_jokes_flutter/domain/joke_list/i_get_joke_list.dart';
import 'package:dad_jokes_flutter/domain/random_joke/i_get_random_joke.dart';

part 'random_joke_bloc.freezed.dart';

part 'random_joke_event.dart';

part 'random_joke_state.dart';

@injectable
class RandomJokeBloc extends Bloc<RandomJokeEvent, RandomJokeState> {
  final IGetRandomJoke iGetRandomJoke;
  final IGetJokeList iGetJokeList;

  RandomJokeBloc(this.iGetRandomJoke, this.iGetJokeList) : super(RandomJokeState.initial()) {
    on<RandomJokeEvent>((event, emit) async {
      await event.map(onRandomJokeRequested: (onRandomJokeRequested) async {
        emit(state.copyWith(status: RandomJokeStatus.loading));

        Either<ValueFailure, JokeEntity> result = await iGetRandomJoke.getRandomJoke();

        Either<ValueFailure, List<JokeEntity>> listResult = await iGetJokeList.getJokeList(0, 20);

        result.fold((failure) {
          emit(state.copyWith(status: RandomJokeStatus.error));
        }, (jokeEntity) {
          emit(state.copyWith(status: RandomJokeStatus.success, jokeViewModel: jokeEntity.fromDomain()));
        });
      });
    });
  }
}
