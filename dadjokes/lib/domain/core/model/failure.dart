import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.networkFailure({
    required T failedValue,
  }) = NetworkFailure<T>;

  const factory ValueFailure.apiFailure({
    required T failedValue,
  }) = ApiFailure<T>;

  const factory ValueFailure.emptyValue() = EmptyValue;


}