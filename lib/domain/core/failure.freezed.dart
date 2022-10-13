// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) networkFailure,
    required TResult Function(T failedValue) apiFailure,
    required TResult Function() emptyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? networkFailure,
    TResult Function(T failedValue)? apiFailure,
    TResult Function()? emptyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? networkFailure,
    TResult Function(T failedValue)? apiFailure,
    TResult Function()? emptyValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure<T> value) networkFailure,
    required TResult Function(ApiFailure<T> value) apiFailure,
    required TResult Function(EmptyValue<T> value) emptyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure<T> value)? networkFailure,
    TResult Function(ApiFailure<T> value)? apiFailure,
    TResult Function(EmptyValue<T> value)? emptyValue,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure<T> value)? networkFailure,
    TResult Function(ApiFailure<T> value)? apiFailure,
    TResult Function(EmptyValue<T> value)? emptyValue,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class _$$NetworkFailureCopyWith<T, $Res> {
  factory _$$NetworkFailureCopyWith(
          _$NetworkFailure<T> value, $Res Function(_$NetworkFailure<T>) then) =
      __$$NetworkFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$$NetworkFailureCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$NetworkFailureCopyWith<T, $Res> {
  __$$NetworkFailureCopyWithImpl(
      _$NetworkFailure<T> _value, $Res Function(_$NetworkFailure<T>) _then)
      : super(_value, (v) => _then(v as _$NetworkFailure<T>));

  @override
  _$NetworkFailure<T> get _value => super._value as _$NetworkFailure<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$NetworkFailure<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$NetworkFailure<T> implements NetworkFailure<T> {
  const _$NetworkFailure({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.networkFailure(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkFailure<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$NetworkFailureCopyWith<T, _$NetworkFailure<T>> get copyWith =>
      __$$NetworkFailureCopyWithImpl<T, _$NetworkFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) networkFailure,
    required TResult Function(T failedValue) apiFailure,
    required TResult Function() emptyValue,
  }) {
    return networkFailure(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? networkFailure,
    TResult Function(T failedValue)? apiFailure,
    TResult Function()? emptyValue,
  }) {
    return networkFailure?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? networkFailure,
    TResult Function(T failedValue)? apiFailure,
    TResult Function()? emptyValue,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure<T> value) networkFailure,
    required TResult Function(ApiFailure<T> value) apiFailure,
    required TResult Function(EmptyValue<T> value) emptyValue,
  }) {
    return networkFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure<T> value)? networkFailure,
    TResult Function(ApiFailure<T> value)? apiFailure,
    TResult Function(EmptyValue<T> value)? emptyValue,
  }) {
    return networkFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure<T> value)? networkFailure,
    TResult Function(ApiFailure<T> value)? apiFailure,
    TResult Function(EmptyValue<T> value)? emptyValue,
    required TResult orElse(),
  }) {
    if (networkFailure != null) {
      return networkFailure(this);
    }
    return orElse();
  }
}

abstract class NetworkFailure<T> implements ValueFailure<T> {
  const factory NetworkFailure({required final T failedValue}) =
      _$NetworkFailure<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$$NetworkFailureCopyWith<T, _$NetworkFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ApiFailureCopyWith<T, $Res> {
  factory _$$ApiFailureCopyWith(
          _$ApiFailure<T> value, $Res Function(_$ApiFailure<T>) then) =
      __$$ApiFailureCopyWithImpl<T, $Res>;
  $Res call({T failedValue});
}

/// @nodoc
class __$$ApiFailureCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$ApiFailureCopyWith<T, $Res> {
  __$$ApiFailureCopyWithImpl(
      _$ApiFailure<T> _value, $Res Function(_$ApiFailure<T>) _then)
      : super(_value, (v) => _then(v as _$ApiFailure<T>));

  @override
  _$ApiFailure<T> get _value => super._value as _$ApiFailure<T>;

  @override
  $Res call({
    Object? failedValue = freezed,
  }) {
    return _then(_$ApiFailure<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ApiFailure<T> implements ApiFailure<T> {
  const _$ApiFailure({required this.failedValue});

  @override
  final T failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.apiFailure(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiFailure<T> &&
            const DeepCollectionEquality()
                .equals(other.failedValue, failedValue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(failedValue));

  @JsonKey(ignore: true)
  @override
  _$$ApiFailureCopyWith<T, _$ApiFailure<T>> get copyWith =>
      __$$ApiFailureCopyWithImpl<T, _$ApiFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) networkFailure,
    required TResult Function(T failedValue) apiFailure,
    required TResult Function() emptyValue,
  }) {
    return apiFailure(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? networkFailure,
    TResult Function(T failedValue)? apiFailure,
    TResult Function()? emptyValue,
  }) {
    return apiFailure?.call(failedValue);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? networkFailure,
    TResult Function(T failedValue)? apiFailure,
    TResult Function()? emptyValue,
    required TResult orElse(),
  }) {
    if (apiFailure != null) {
      return apiFailure(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure<T> value) networkFailure,
    required TResult Function(ApiFailure<T> value) apiFailure,
    required TResult Function(EmptyValue<T> value) emptyValue,
  }) {
    return apiFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure<T> value)? networkFailure,
    TResult Function(ApiFailure<T> value)? apiFailure,
    TResult Function(EmptyValue<T> value)? emptyValue,
  }) {
    return apiFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure<T> value)? networkFailure,
    TResult Function(ApiFailure<T> value)? apiFailure,
    TResult Function(EmptyValue<T> value)? emptyValue,
    required TResult orElse(),
  }) {
    if (apiFailure != null) {
      return apiFailure(this);
    }
    return orElse();
  }
}

abstract class ApiFailure<T> implements ValueFailure<T> {
  const factory ApiFailure({required final T failedValue}) = _$ApiFailure<T>;

  T get failedValue;
  @JsonKey(ignore: true)
  _$$ApiFailureCopyWith<T, _$ApiFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EmptyValueCopyWith<T, $Res> {
  factory _$$EmptyValueCopyWith(
          _$EmptyValue<T> value, $Res Function(_$EmptyValue<T>) then) =
      __$$EmptyValueCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$EmptyValueCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements _$$EmptyValueCopyWith<T, $Res> {
  __$$EmptyValueCopyWithImpl(
      _$EmptyValue<T> _value, $Res Function(_$EmptyValue<T>) _then)
      : super(_value, (v) => _then(v as _$EmptyValue<T>));

  @override
  _$EmptyValue<T> get _value => super._value as _$EmptyValue<T>;
}

/// @nodoc

class _$EmptyValue<T> implements EmptyValue<T> {
  const _$EmptyValue();

  @override
  String toString() {
    return 'ValueFailure<$T>.emptyValue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptyValue<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T failedValue) networkFailure,
    required TResult Function(T failedValue) apiFailure,
    required TResult Function() emptyValue,
  }) {
    return emptyValue();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(T failedValue)? networkFailure,
    TResult Function(T failedValue)? apiFailure,
    TResult Function()? emptyValue,
  }) {
    return emptyValue?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T failedValue)? networkFailure,
    TResult Function(T failedValue)? apiFailure,
    TResult Function()? emptyValue,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(NetworkFailure<T> value) networkFailure,
    required TResult Function(ApiFailure<T> value) apiFailure,
    required TResult Function(EmptyValue<T> value) emptyValue,
  }) {
    return emptyValue(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(NetworkFailure<T> value)? networkFailure,
    TResult Function(ApiFailure<T> value)? apiFailure,
    TResult Function(EmptyValue<T> value)? emptyValue,
  }) {
    return emptyValue?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(NetworkFailure<T> value)? networkFailure,
    TResult Function(ApiFailure<T> value)? apiFailure,
    TResult Function(EmptyValue<T> value)? emptyValue,
    required TResult orElse(),
  }) {
    if (emptyValue != null) {
      return emptyValue(this);
    }
    return orElse();
  }
}

abstract class EmptyValue<T> implements ValueFailure<T> {
  const factory EmptyValue() = _$EmptyValue<T>;
}
