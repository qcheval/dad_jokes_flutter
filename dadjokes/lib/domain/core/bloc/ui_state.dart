import 'package:dad_jokes_flutter/domain/core/model/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@freezed
class SimpleUiState<T> with _$SimpleUiState<T> {
  const factory SimpleUiState.initial() = SimpleInitial;

  const factory SimpleUiState.success(T data) = SimpleSuccess;
}

@freezed
class UIState<T> with _$UIState<T> {
  const factory UIState.initial() = Initial;

  const factory UIState.success(T data) = Success;

  const factory UIState.error(ValueFailure failure) = Error;

  const factory UIState.loading() = Loading;
}
