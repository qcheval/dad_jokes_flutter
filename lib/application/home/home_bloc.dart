import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:dad_jokes_flutter/application/home/tab_index.dart';

part 'home_bloc.freezed.dart';

part 'home_event.dart';

part 'home_state.dart';

@injectable
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeState.initial()) {
    on<HomeEvent>((event, emit) async {
      event.map(onItemTaped: (onItemTaped) {
        emit(state.copyWith(status: HomeStatus.indexChanged, index: onItemTaped.index));
      });
    });
  }
}
