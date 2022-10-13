// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'joke_list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_JokeListDto _$$_JokeListDtoFromJson(Map<String, dynamic> json) =>
    _$_JokeListDto(
      current_page: json['current_page'] as int,
      limit: json['limit'] as int,
      next_page: json['next_page'] as int,
      previous_page: json['previous_page'] as int,
      search_term: json['search_term'] as String,
      status: json['status'] as int,
      total_jokes: json['total_jokes'] as int,
      total_pages: json['total_pages'] as int,
      results: (json['results'] as List<dynamic>)
          .map((e) => JokeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_JokeListDtoToJson(_$_JokeListDto instance) =>
    <String, dynamic>{
      'current_page': instance.current_page,
      'limit': instance.limit,
      'next_page': instance.next_page,
      'previous_page': instance.previous_page,
      'search_term': instance.search_term,
      'status': instance.status,
      'total_jokes': instance.total_jokes,
      'total_pages': instance.total_pages,
      'results': instance.results,
    };
