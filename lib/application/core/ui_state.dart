import 'package:dad_jokes_flutter/domain/core/failure.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ui_state.freezed.dart';

@freezed
class UIState<T> with _$UIState<T> {
  const factory UIState.initial() = Initial;

  const factory UIState.success(T data) = Success;

  const factory UIState.error(ValueFailure failure) = Error;

  const factory UIState.loading() = Loading;
}
