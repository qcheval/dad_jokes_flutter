import 'package:dad_jokes_flutter/domain/core/bloc/ui_state.dart';
import 'package:dad_jokes_flutter/domain/home/model/tab_index.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, SimpleUiState<TabIndex>> {
  HomeBloc() : super(SimpleUiState.initial()) {
    on<HomeEvent>((event, emit) async {
      event.map(onItemTaped: (onItemTaped) {
        emit(SimpleSuccess(onItemTaped.index));
      });
    });
  }
}
