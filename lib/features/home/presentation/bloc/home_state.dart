part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    required bool isLoading,
    required Option<Either<AppError, MovieModel>> searchMovie,
  }) = _HomeState;

  factory HomeState.initial() {
    return HomeState(isLoading: false, searchMovie: None());
  }
}
