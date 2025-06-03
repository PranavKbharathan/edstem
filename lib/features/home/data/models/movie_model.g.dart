// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      (json['page'] as num?)?.toInt(),
      (json['results'] as List<dynamic>?)
          ?.map((e) => MovieResult.fromJson(e as Map<String, dynamic>))
          .toList(),
      (json['total_pages'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
      'total_pages': instance.totalPages,
    };

_$MovieResultImpl _$$MovieResultImplFromJson(Map<String, dynamic> json) =>
    _$MovieResultImpl(
      json['title'] as String?,
      json['release_date'] as String?,
      json['poster_path'] as String?,
      json['backdrop_path'] as String?,
      json['overview'] as String?,
      (json['vote_average'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$$MovieResultImplToJson(_$MovieResultImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'release_date': instance.date,
      'poster_path': instance.image,
      'backdrop_path': instance.bgImage,
      'overview': instance.overview,
      'vote_average': instance.rating,
    };
