// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$JokeEntity {
  String get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $JokeEntityCopyWith<JokeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeEntityCopyWith<$Res> {
  factory $JokeEntityCopyWith(
          JokeEntity value, $Res Function(JokeEntity) then) =
      _$JokeEntityCopyWithImpl<$Res>;
  $Res call({String id, String text});
}

/// @nodoc
class _$JokeEntityCopyWithImpl<$Res> implements $JokeEntityCopyWith<$Res> {
  _$JokeEntityCopyWithImpl(this._value, this._then);

  final JokeEntity _value;
  // ignore: unused_field
  final $Res Function(JokeEntity) _then;

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
abstract class _$$_JokeEntityCopyWith<$Res>
    implements $JokeEntityCopyWith<$Res> {
  factory _$$_JokeEntityCopyWith(
          _$_JokeEntity value, $Res Function(_$_JokeEntity) then) =
      __$$_JokeEntityCopyWithImpl<$Res>;
  @override
  $Res call({String id, String text});
}

/// @nodoc
class __$$_JokeEntityCopyWithImpl<$Res> extends _$JokeEntityCopyWithImpl<$Res>
    implements _$$_JokeEntityCopyWith<$Res> {
  __$$_JokeEntityCopyWithImpl(
      _$_JokeEntity _value, $Res Function(_$_JokeEntity) _then)
      : super(_value, (v) => _then(v as _$_JokeEntity));

  @override
  _$_JokeEntity get _value => super._value as _$_JokeEntity;

  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
  }) {
    return _then(_$_JokeEntity(
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

class _$_JokeEntity implements _JokeEntity {
  const _$_JokeEntity({required this.id, required this.text});

  @override
  final String id;
  @override
  final String text;

  @override
  String toString() {
    return 'JokeEntity(id: $id, text: $text)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeEntity &&
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
  _$$_JokeEntityCopyWith<_$_JokeEntity> get copyWith =>
      __$$_JokeEntityCopyWithImpl<_$_JokeEntity>(this, _$identity);
}

abstract class _JokeEntity implements JokeEntity {
  const factory _JokeEntity(
      {required final String id, required final String text}) = _$_JokeEntity;

  @override
  String get id;
  @override
  String get text;
  @override
  @JsonKey(ignore: true)
  _$$_JokeEntityCopyWith<_$_JokeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
