import 'package:freezed_annotation/freezed_annotation.dart';
part 'movie_model.freezed.dart';
part 'movie_model.g.dart';

@freezed
class MovieModel with _$MovieModel {
  const factory MovieModel(
    int? page,
    List<MovieResult>? results,
    @JsonKey(name: "total_pages") int? totalPages,
  ) = _MovieModel;

  factory MovieModel.fromJson(Map<String, dynamic> json) =>
      _$MovieModelFromJson(json);
}

@freezed
class MovieResult with _$MovieResult {
  const factory MovieResult(
    String? title,
    @JsonKey(name: "release_date") String? date,
    @JsonKey(name: "poster_path") String? image,
    @JsonKey(name: "backdrop_path") String? bgImage,
    String? overview,
    @JsonKey(name: "vote_average") double? rating,
  ) = _MovieResult;

  factory MovieResult.fromJson(Map<String, dynamic> json) =>
      _$MovieResultFromJson(json);
}
