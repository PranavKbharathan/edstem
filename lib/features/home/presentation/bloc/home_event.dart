part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  const factory HomeEvent.searchMovie(String name,bool isNextPage) = _SearchMovie;
}
