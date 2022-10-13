// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeViewModel {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeViewModelCopyWith<JokeViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeViewModelCopyWith<$Res> {
  factory $JokeViewModelCopyWith(
          JokeViewModel value, $Res Function(JokeViewModel) then) =
      _$JokeViewModelCopyWithImpl<$Res>;
  $Res call({String id, String text});
}

/// @nodoc
class _$JokeViewModelCopyWithImpl<$Res>
    implements $JokeViewModelCopyWith<$Res> {
  _$JokeViewModelCopyWithImpl(this._value, this._then);

  final JokeViewModel _value;
  // ignore: unused_field
  final $Res Function(JokeViewModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_JokeViewModelCopyWith<$Res>
    implements $JokeViewModelCopyWith<$Res> {
  factory _$$_JokeViewModelCopyWith(
          _$_JokeViewModel value, $Res Function(_$_JokeViewModel) then) =
      __$$_JokeViewModelCopyWithImpl<$Res>;
  @override
  $Res call({String id, String text});
}

/// @nodoc
class __$$_JokeViewModelCopyWithImpl<$Res>
    extends _$JokeViewModelCopyWithImpl<$Res>
    implements _$$_JokeViewModelCopyWith<$Res> {
  __$$_JokeViewModelCopyWithImpl(
      _$_JokeViewModel _value, $Res Function(_$_JokeViewModel) _then)
      : super(_value, (v) => _then(v as _$_JokeViewModel));

  @override
  _$_JokeViewModel get _value => super._value as _$_JokeViewModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_JokeViewModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      text: text == freezed
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_JokeViewModel implements _JokeViewModel {
  const _$_JokeViewModel({required this.id, required this.text});

  @override
  final String id;
  @override
  final String text;

  @override
  String toString() {
    return 'JokeViewModel(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeViewModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.text, text));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(text));

  @JsonKey(ignore: true)
  @override
  _$$_JokeViewModelCopyWith<_$_JokeViewModel> get copyWith =>
      __$$_JokeViewModelCopyWithImpl<_$_JokeViewModel>(this, _$identity);
}

abstract class _JokeViewModel implements JokeViewModel {
  const factory _JokeViewModel(
      {required final String id,
      required final String text}) = _$_JokeViewModel;

  @override
  String get id;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_JokeViewModelCopyWith<_$_JokeViewModel> get copyWith =>
      throw _privateConstructorUsedError;
}
