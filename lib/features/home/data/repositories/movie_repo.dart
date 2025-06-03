import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:edstem/core/constants/strings.dart';
import 'package:edstem/core/error/app_error.dart';
import 'package:edstem/features/home/data/models/movie_model.dart';
import 'package:edstem/features/home/domain/repositories/i_movie_repo.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;

class MovieRepo implements IMovieRepo {
  @override
  Future<Either<AppError, MovieModel>> movieSearch(String name,int page) async {
    try {
      final url = Uri.parse(
        '${baseUrl}search/movie?api_key=${dotenv.env['TMDB_API_KEY']}&query=$name&page=$page',
      );
      final response = await http.get(url);

      if (response.statusCode == 200 || response.statusCode == 201) {
        return Right(MovieModel.fromJson(jsonDecode(response.body)));
      } else {
        return Left(AppError.network("No movies found."));
      }
    } catch (e) {
      return Left(AppError.server());
    }
  }
}
