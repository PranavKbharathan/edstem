import 'package:dartz/dartz.dart';
import 'package:edstem/core/error/app_error.dart';
import 'package:edstem/features/home/data/models/movie_model.dart';

abstract class IMovieRepo {
  Future<Either<AppError, MovieModel>> movieSearch(String name,int page);
}
