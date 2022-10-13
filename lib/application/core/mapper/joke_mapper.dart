import 'package:dad_jokes_flutter/application/core/model/joke_view_model.dart';
import 'package:dad_jokes_flutter/domain/joke/joke_entity.dart';

extension JokeMapper on JokeEntity {
  JokeViewModel fromDomain() => JokeViewModel(id: id, text: text);
}
