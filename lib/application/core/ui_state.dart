import 'package:dad_jokes_flutter/domain/core/failure.dart';

enum UIStatus<T> { initial, success, loading, error }

class UIState<T> {
  UIStatus status = UIStatus.initial;
}

class Success<T> extends UIState<T> {
  final T data;

  Success(this.data) {
    status = UIStatus.success;
  }
}

class Loading<T> extends UIState<T> {
  Loading() {
    status = UIStatus.loading;
  }
}

class Error<T> extends UIState<T> {
  final ValueFailure failure;

  Error(this.failure) {
    status = UIStatus.error;
  }
}
