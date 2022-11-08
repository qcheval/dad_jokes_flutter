import 'package:dad_jokes_flutter/domain/core/bloc/ui_state.dart';
import 'package:dad_jokes_flutter/domain/core/model/failure.dart';
import 'package:dad_jokes_flutter/domain/joke/model/joke_entity.dart';
import 'package:dad_jokes_flutter/domain/joke_list/repository/i_get_joke_list.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'joke_list_bloc.freezed.dart';

part 'joke_list_event.dart';

const int maxResults = 20;

@injectable
class JokeListBloc extends Bloc<JokeListEvent, UIState<List<JokeEntity>>> {
  final IGetJokeList iGetJokeList;
  List<JokeEntity> _jokeList = [];
  int _page = -1;

  JokeListBloc(this.iGetJokeList) : super(UIState.initial()) {
    on<JokeListEvent>((event, emit) async {
      emit(Loading());

      await event.map(onJokeListRequested: (onJokeListRequested) async {
        Either<ValueFailure, List<JokeEntity>> listResult =
            await iGetJokeList.getJokeList(++_page, maxResults);

        listResult.fold((failure) => emit(Error(failure)), (success) {
          _jokeList = _jokeList + success;
          emit(Success(_jokeList));
        });
      });
    });
  }

  List<JokeEntity> get jokeList => _jokeList;
}
