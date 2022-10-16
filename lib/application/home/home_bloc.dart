import 'package:dad_jokes_flutter/application/core/ui_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dad_jokes_flutter/application/home/tab_index.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, UIState<TabIndex>> {
  HomeBloc() : super(UIState.initial()) {
    on<HomeEvent>((event, emit) async {
      event.map(onItemTaped: (onItemTaped) {
        emit(Success(onItemTaped.index));
      });
    });
  }
}
