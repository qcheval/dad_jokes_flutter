import 'package:freezed_annotation/freezed_annotation.dart';

part 'joke_view_model.freezed.dart';

@freezed
class JokeViewModel with _$JokeViewModel{
  const factory JokeViewModel({required String id, required String text}) = _JokeViewModel;
}