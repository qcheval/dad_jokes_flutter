import 'package:dad_jokes_flutter/application/core/mapper/joke_mapper.dart';
import 'package:dad_jokes_flutter/application/core/model/joke_view_model.dart';
import 'package:dad_jokes_flutter/domain/core/failure.dart';
import 'package:dad_jokes_flutter/domain/joke/joke_entity.dart';
import 'package:dad_jokes_flutter/domain/joke_list/i_get_joke_list.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'joke_list_bloc.freezed.dart';

part 'joke_list_event.dart';

part 'joke_list_state.dart';

const int maxResults = 20;

@injectable
class JokeListBloc extends Bloc<JokeListEvent, JokeListState> {
  final IGetJokeList iGetJokeList;
  List<JokeViewModel> _jokeList = [];
  int _page = -1;

  JokeListBloc(this.iGetJokeList) : super(JokeListState.initial()) {
    on<JokeListEvent>((event, emit) async {
      emit(state.copyWith(status: JokeListStatus.loading, jokeList: _jokeList));
      await Future.delayed(Duration(seconds: 1));
      await event.map(onJokeListRequested: (onJokeListRequested) async {
        Either<ValueFailure, List<JokeEntity>> listResult =
            await iGetJokeList.getJokeList(++_page, maxResults);

        listResult.fold(
            (failure) => emit(
                state.copyWith(status: JokeListStatus.error, jokeList: null)),
            (success) {
          _jokeList = _jokeList + success.map((e) => e.fromDomain()).toList();
          emit(state.copyWith(
              status: JokeListStatus.success, jokeList: _jokeList));
        });
      });
    });
  }
}
