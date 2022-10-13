// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  TabIndex get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabIndex index) onItemTaped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TabIndex index)? onItemTaped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabIndex index)? onItemTaped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnItemTap value) onItemTaped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnItemTap value)? onItemTaped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnItemTap value)? onItemTaped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res>;
  $Res call({TabIndex index});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res> implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  final HomeEvent _value;
  // ignore: unused_field
  final $Res Function(HomeEvent) _then;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as TabIndex,
    ));
  }
}

/// @nodoc
abstract class _$$OnItemTapCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$$OnItemTapCopyWith(
          _$OnItemTap value, $Res Function(_$OnItemTap) then) =
      __$$OnItemTapCopyWithImpl<$Res>;
  @override
  $Res call({TabIndex index});
}

/// @nodoc
class __$$OnItemTapCopyWithImpl<$Res> extends _$HomeEventCopyWithImpl<$Res>
    implements _$$OnItemTapCopyWith<$Res> {
  __$$OnItemTapCopyWithImpl(
      _$OnItemTap _value, $Res Function(_$OnItemTap) _then)
      : super(_value, (v) => _then(v as _$OnItemTap));

  @override
  _$OnItemTap get _value => super._value as _$OnItemTap;

  @override
  $Res call({
    Object? index = freezed,
  }) {
    return _then(_$OnItemTap(
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as TabIndex,
    ));
  }
}

/// @nodoc

class _$OnItemTap implements OnItemTap {
  const _$OnItemTap(this.index);

  @override
  final TabIndex index;

  @override
  String toString() {
    return 'HomeEvent.onItemTaped(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnItemTap &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$OnItemTapCopyWith<_$OnItemTap> get copyWith =>
      __$$OnItemTapCopyWithImpl<_$OnItemTap>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TabIndex index) onItemTaped,
  }) {
    return onItemTaped(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(TabIndex index)? onItemTaped,
  }) {
    return onItemTaped?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TabIndex index)? onItemTaped,
    required TResult orElse(),
  }) {
    if (onItemTaped != null) {
      return onItemTaped(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnItemTap value) onItemTaped,
  }) {
    return onItemTaped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OnItemTap value)? onItemTaped,
  }) {
    return onItemTaped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnItemTap value)? onItemTaped,
    required TResult orElse(),
  }) {
    if (onItemTaped != null) {
      return onItemTaped(this);
    }
    return orElse();
  }
}

abstract class OnItemTap implements HomeEvent {
  const factory OnItemTap(final TabIndex index) = _$OnItemTap;

  @override
  TabIndex get index;
  @override
  @JsonKey(ignore: true)
  _$$OnItemTapCopyWith<_$OnItemTap> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  HomeStatus get status => throw _privateConstructorUsedError;
  TabIndex get index => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res>;
  $Res call({HomeStatus status, TabIndex index});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res> implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  final HomeState _value;
  // ignore: unused_field
  final $Res Function(HomeState) _then;

  @override
  $Res call({
    Object? status = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as TabIndex,
    ));
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  $Res call({HomeStatus status, TabIndex index});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res> extends _$HomeStateCopyWithImpl<$Res>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, (v) => _then(v as _$_HomeState));

  @override
  _$_HomeState get _value => super._value as _$_HomeState;

  @override
  $Res call({
    Object? status = freezed,
    Object? index = freezed,
  }) {
    return _then(_$_HomeState(
      status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as HomeStatus,
      index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as TabIndex,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  const _$_HomeState(this.status, this.index);

  @override
  final HomeStatus status;
  @override
  final TabIndex index;

  @override
  String toString() {
    return 'HomeState(status: $status, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(index));

  @JsonKey(ignore: true)
  @override
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(final HomeStatus status, final TabIndex index) =
      _$_HomeState;

  @override
  HomeStatus get status;
  @override
  TabIndex get index;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
