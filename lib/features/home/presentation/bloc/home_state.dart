part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required int page,
    required List<MovieResult>? movies,
    required Option<Either<AppError, MovieModel>> searchMovie,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(
      isLoading: false,
      page: 1,
      searchMovie: None(),
      movies: [],
    );
  }
}
