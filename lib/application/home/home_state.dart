part of 'home_bloc.dart';

enum HomeStatus { initial, indexChanged }

@freezed
class HomeState with _$HomeState {
  const factory HomeState(HomeStatus status, TabIndex index) = _HomeState;

  factory HomeState.initial() => HomeState(HomeStatus.initial, TabIndex.random);
}
