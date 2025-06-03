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
      emit(state.copyWith(isLoading: true, searchMovie: None()));

      final searchMovie = await imovieRepo.movieSearch(event.name);

      emit(state.copyWith(isLoading: false, searchMovie: Some(searchMovie)));
    });
  }
}
