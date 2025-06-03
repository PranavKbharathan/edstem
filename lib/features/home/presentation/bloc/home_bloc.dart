import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:edstem/core/error/app_error.dart';
import 'package:edstem/features/home/data/models/movie_model.dart';
import 'package:edstem/features/home/domain/repositories/i_movie_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(final IMovieRepo imovieRepo) : super(HomeState.initial()) {
    on<_SearchMovie>((event, emit) async {
      int page = state.page;
      
      if (event.isNextPage) {
        page += 1;
        emit(state.copyWith(isLoading: true, searchMovie: None()));
      } else {
        page = 1;
        emit(state.copyWith(isLoading: true, searchMovie: None(), movies: []));
      }
      

      final searchMovie = await imovieRepo.movieSearch(event.name, page);

      searchMovie.fold(
        (l) =>
            emit(state.copyWith(isLoading: false, searchMovie: Some(Left(l)))),
        (r) => emit(
          state.copyWith(
            isLoading: false,
            page: page,
            searchMovie: Some(Right(r)),
            movies: [...state.movies!, ...r.results!],
          ),
        ),
      );
    });
  }
}
