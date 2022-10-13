// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'joke_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

JokeDto _$JokeDtoFromJson(Map<String, dynamic> json) {
  return _JokeDto.fromJson(json);
}

/// @nodoc
mixin _$JokeDto {
  String get id => throw _privateConstructorUsedError;
  String get joke => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $JokeDtoCopyWith<JokeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JokeDtoCopyWith<$Res> {
  factory $JokeDtoCopyWith(JokeDto value, $Res Function(JokeDto) then) =
      _$JokeDtoCopyWithImpl<$Res>;
  $Res call({String id, String joke});
}

/// @nodoc
class _$JokeDtoCopyWithImpl<$Res> implements $JokeDtoCopyWith<$Res> {
  _$JokeDtoCopyWithImpl(this._value, this._then);

  final JokeDto _value;
  // ignore: unused_field
  final $Res Function(JokeDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? joke = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      joke: joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_JokeDtoCopyWith<$Res> implements $JokeDtoCopyWith<$Res> {
  factory _$$_JokeDtoCopyWith(
          _$_JokeDto value, $Res Function(_$_JokeDto) then) =
      __$$_JokeDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String joke});
}

/// @nodoc
class __$$_JokeDtoCopyWithImpl<$Res> extends _$JokeDtoCopyWithImpl<$Res>
    implements _$$_JokeDtoCopyWith<$Res> {
  __$$_JokeDtoCopyWithImpl(_$_JokeDto _value, $Res Function(_$_JokeDto) _then)
      : super(_value, (v) => _then(v as _$_JokeDto));

  @override
  _$_JokeDto get _value => super._value as _$_JokeDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? joke = freezed,
  }) {
    return _then(_$_JokeDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      joke: joke == freezed
          ? _value.joke
          : joke // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_JokeDto implements _JokeDto {
  _$_JokeDto({required this.id, required this.joke});

  factory _$_JokeDto.fromJson(Map<String, dynamic> json) =>
      _$$_JokeDtoFromJson(json);

  @override
  final String id;
  @override
  final String joke;

  @override
  String toString() {
    return 'JokeDto(id: $id, joke: $joke)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JokeDto &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.joke, joke));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(joke));

  @JsonKey(ignore: true)
  @override
  _$$_JokeDtoCopyWith<_$_JokeDto> get copyWith =>
      __$$_JokeDtoCopyWithImpl<_$_JokeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_JokeDtoToJson(
      this,
    );
  }
}

abstract class _JokeDto implements JokeDto {
  factory _JokeDto({required final String id, required final String joke}) =
      _$_JokeDto;

  factory _JokeDto.fromJson(Map<String, dynamic> json) = _$_JokeDto.fromJson;

  @override
  String get id;
  @override
  String get joke;
  @override
  @JsonKey(ignore: true)
  _$$_JokeDtoCopyWith<_$_JokeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
