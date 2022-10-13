// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'random_joke_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RandomJokeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRandomJokeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onRandomJokeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRandomJokeRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnRandomJokeRequested value)
        onRandomJokeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnRandomJokeRequested value)? onRandomJokeRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnRandomJokeRequested value)? onRandomJokeRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomJokeEventCopyWith<$Res> {
  factory $RandomJokeEventCopyWith(
          RandomJokeEvent value, $Res Function(RandomJokeEvent) then) =
      _$RandomJokeEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$RandomJokeEventCopyWithImpl<$Res>
    implements $RandomJokeEventCopyWith<$Res> {
  _$RandomJokeEventCopyWithImpl(this._value, this._then);

  final RandomJokeEvent _value;
  // ignore: unused_field
  final $Res Function(RandomJokeEvent) _then;
}

/// @nodoc
abstract class _$$OnRandomJokeRequestedCopyWith<$Res> {
  factory _$$OnRandomJokeRequestedCopyWith(_$OnRandomJokeRequested value,
          $Res Function(_$OnRandomJokeRequested) then) =
      __$$OnRandomJokeRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OnRandomJokeRequestedCopyWithImpl<$Res>
    extends _$RandomJokeEventCopyWithImpl<$Res>
    implements _$$OnRandomJokeRequestedCopyWith<$Res> {
  __$$OnRandomJokeRequestedCopyWithImpl(_$OnRandomJokeRequested _value,
      $Res Function(_$OnRandomJokeRequested) _then)
      : super(_value, (v) => _then(v as _$OnRandomJokeRequested));

  @override
  _$OnRandomJokeRequested get _value => super._value as _$OnRandomJokeRequested;
}

/// @nodoc

class _$OnRandomJokeRequested implements OnRandomJokeRequested {
  const _$OnRandomJokeRequested();

  @override
  String toString() {
    return 'RandomJokeEvent.onRandomJokeRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OnRandomJokeRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() onRandomJokeRequested,
  }) {
    return onRandomJokeRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? onRandomJokeRequested,
  }) {
    return onRandomJokeRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? onRandomJokeRequested,
    required TResult orElse(),
  }) {
    if (onRandomJokeRequested != null) {
      return onRandomJokeRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnRandomJokeRequested value)
        onRandomJokeRequested,
  }) {
    return onRandomJokeRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnRandomJokeRequested value)? onRandomJokeRequested,
  }) {
    return onRandomJokeRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnRandomJokeRequested value)? onRandomJokeRequested,
    required TResult orElse(),
  }) {
    if (onRandomJokeRequested != null) {
      return onRandomJokeRequested(this);
    }
    return orElse();
  }
}

abstract class OnRandomJokeRequested implements RandomJokeEvent {
  const factory OnRandomJokeRequested() = _$OnRandomJokeRequested;
}

/// @nodoc
mixin _$RandomJokeState {
  RandomJokeStatus get status => throw _privateConstructorUsedError;
  JokeViewModel? get jokeViewModel => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomJokeStateCopyWith<RandomJokeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomJokeStateCopyWith<$Res> {
  factory $RandomJokeStateCopyWith(
          RandomJokeState value, $Res Function(RandomJokeState) then) =
      _$RandomJokeStateCopyWithImpl<$Res>;
  $Res call({RandomJokeStatus status, JokeViewModel? jokeViewModel});

  $JokeViewModelCopyWith<$Res>? get jokeViewModel;
}

/// @nodoc
class _$RandomJokeStateCopyWithImpl<$Res>
    implements $RandomJokeStateCopyWith<$Res> {
  _$RandomJokeStateCopyWithImpl(this._value, this._then);

  final RandomJokeState _value;
  // ignore: unused_field
  final $Res Function(RandomJokeState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? jokeViewModel = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RandomJokeStatus,
      jokeViewModel: jokeViewModel == freezed
          ? _value.jokeViewModel
          : jokeViewModel // ignore: cast_nullable_to_non_nullable
              as JokeViewModel?,
    ));
  }

  @override
  $JokeViewModelCopyWith<$Res>? get jokeViewModel {
    if (_value.jokeViewModel == null) {
      return null;
    }

    return $JokeViewModelCopyWith<$Res>(_value.jokeViewModel!, (value) {
      return _then(_value.copyWith(jokeViewModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_RandomJokeStateCopyWith<$Res>
    implements $RandomJokeStateCopyWith<$Res> {
  factory _$$_RandomJokeStateCopyWith(
          _$_RandomJokeState value, $Res Function(_$_RandomJokeState) then) =
      __$$_RandomJokeStateCopyWithImpl<$Res>;
  @override
  $Res call({RandomJokeStatus status, JokeViewModel? jokeViewModel});

  @override
  $JokeViewModelCopyWith<$Res>? get jokeViewModel;
}

/// @nodoc
class __$$_RandomJokeStateCopyWithImpl<$Res>
    extends _$RandomJokeStateCopyWithImpl<$Res>
    implements _$$_RandomJokeStateCopyWith<$Res> {
  __$$_RandomJokeStateCopyWithImpl(
      _$_RandomJokeState _value, $Res Function(_$_RandomJokeState) _then)
      : super(_value, (v) => _then(v as _$_RandomJokeState));

  @override
  _$_RandomJokeState get _value => super._value as _$_RandomJokeState;

  @override
  $Res call({
    Object? status = freezed,
    Object? jokeViewModel = freezed,
  }) {
    return _then(_$_RandomJokeState(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RandomJokeStatus,
      jokeViewModel == freezed
          ? _value.jokeViewModel
          : jokeViewModel // ignore: cast_nullable_to_non_nullable
              as JokeViewModel?,
    ));
  }
}

/// @nodoc

class _$_RandomJokeState implements _RandomJokeState {
  const _$_RandomJokeState(this.status, this.jokeViewModel);

  @override
  final RandomJokeStatus status;
  @override
  final JokeViewModel? jokeViewModel;

  @override
  String toString() {
    return 'RandomJokeState(status: $status, jokeViewModel: $jokeViewModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RandomJokeState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality()
                .equals(other.jokeViewModel, jokeViewModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(jokeViewModel));

  @JsonKey(ignore: true)
  @override
  _$$_RandomJokeStateCopyWith<_$_RandomJokeState> get copyWith =>
      __$$_RandomJokeStateCopyWithImpl<_$_RandomJokeState>(this, _$identity);
}

abstract class _RandomJokeState implements RandomJokeState {
  const factory _RandomJokeState(
          final RandomJokeStatus status, final JokeViewModel? jokeViewModel) =
      _$_RandomJokeState;

  @override
  RandomJokeStatus get status;
  @override
  JokeViewModel? get jokeViewModel;
  @override
  @JsonKey(ignore: true)
  _$$_RandomJokeStateCopyWith<_$_RandomJokeState> get copyWith =>
      throw _privateConstructorUsedError;
}
