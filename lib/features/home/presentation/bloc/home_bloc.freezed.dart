// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$HomeEvent {
  bool get isNextPage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isNextPage) searchMovie,
    required TResult Function(bool isNextPage) loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, bool isNextPage)? searchMovie,
    TResult? Function(bool isNextPage)? loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isNextPage)? searchMovie,
    TResult Function(bool isNextPage)? loadMore,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMovie value) searchMovie,
    required TResult Function(_LoadMore value) loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMovie value)? searchMovie,
    TResult? Function(_LoadMore value)? loadMore,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMovie value)? searchMovie,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeEventCopyWith<HomeEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
  @useResult
  $Res call({bool isNextPage});
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isNextPage = null}) {
    return _then(
      _value.copyWith(
            isNextPage: null == isNextPage
                ? _value.isNextPage
                : isNextPage // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$SearchMovieImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$SearchMovieImplCopyWith(
    _$SearchMovieImpl value,
    $Res Function(_$SearchMovieImpl) then,
  ) = __$$SearchMovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, bool isNextPage});
}

/// @nodoc
class __$$SearchMovieImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$SearchMovieImpl>
    implements _$$SearchMovieImplCopyWith<$Res> {
  __$$SearchMovieImplCopyWithImpl(
    _$SearchMovieImpl _value,
    $Res Function(_$SearchMovieImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? isNextPage = null}) {
    return _then(
      _$SearchMovieImpl(
        null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        null == isNextPage
            ? _value.isNextPage
            : isNextPage // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$SearchMovieImpl implements _SearchMovie {
  const _$SearchMovieImpl(this.name, this.isNextPage);

  @override
  final String name;
  @override
  final bool isNextPage;

  @override
  String toString() {
    return 'HomeEvent.searchMovie(name: $name, isNextPage: $isNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchMovieImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.isNextPage, isNextPage) ||
                other.isNextPage == isNextPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, isNextPage);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchMovieImplCopyWith<_$SearchMovieImpl> get copyWith =>
      __$$SearchMovieImplCopyWithImpl<_$SearchMovieImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isNextPage) searchMovie,
    required TResult Function(bool isNextPage) loadMore,
  }) {
    return searchMovie(name, isNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, bool isNextPage)? searchMovie,
    TResult? Function(bool isNextPage)? loadMore,
  }) {
    return searchMovie?.call(name, isNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isNextPage)? searchMovie,
    TResult Function(bool isNextPage)? loadMore,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(name, isNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMovie value) searchMovie,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return searchMovie(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMovie value)? searchMovie,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return searchMovie?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMovie value)? searchMovie,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (searchMovie != null) {
      return searchMovie(this);
    }
    return orElse();
  }
}

abstract class _SearchMovie implements HomeEvent {
  const factory _SearchMovie(final String name, final bool isNextPage) =
      _$SearchMovieImpl;

  String get name;
  @override
  bool get isNextPage;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchMovieImplCopyWith<_$SearchMovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadMoreImplCopyWith<$Res>
    implements $HomeEventCopyWith<$Res> {
  factory _$$LoadMoreImplCopyWith(
    _$LoadMoreImpl value,
    $Res Function(_$LoadMoreImpl) then,
  ) = __$$LoadMoreImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isNextPage});
}

/// @nodoc
class __$$LoadMoreImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$LoadMoreImpl>
    implements _$$LoadMoreImplCopyWith<$Res> {
  __$$LoadMoreImplCopyWithImpl(
    _$LoadMoreImpl _value,
    $Res Function(_$LoadMoreImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? isNextPage = null}) {
    return _then(
      _$LoadMoreImpl(
        null == isNextPage
            ? _value.isNextPage
            : isNextPage // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$LoadMoreImpl implements _LoadMore {
  const _$LoadMoreImpl(this.isNextPage);

  @override
  final bool isNextPage;

  @override
  String toString() {
    return 'HomeEvent.loadMore(isNextPage: $isNextPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadMoreImpl &&
            (identical(other.isNextPage, isNextPage) ||
                other.isNextPage == isNextPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isNextPage);

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadMoreImplCopyWith<_$LoadMoreImpl> get copyWith =>
      __$$LoadMoreImplCopyWithImpl<_$LoadMoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String name, bool isNextPage) searchMovie,
    required TResult Function(bool isNextPage) loadMore,
  }) {
    return loadMore(isNextPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String name, bool isNextPage)? searchMovie,
    TResult? Function(bool isNextPage)? loadMore,
  }) {
    return loadMore?.call(isNextPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String name, bool isNextPage)? searchMovie,
    TResult Function(bool isNextPage)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(isNextPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SearchMovie value) searchMovie,
    required TResult Function(_LoadMore value) loadMore,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_SearchMovie value)? searchMovie,
    TResult? Function(_LoadMore value)? loadMore,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SearchMovie value)? searchMovie,
    TResult Function(_LoadMore value)? loadMore,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMore implements HomeEvent {
  const factory _LoadMore(final bool isNextPage) = _$LoadMoreImpl;

  @override
  bool get isNextPage;

  /// Create a copy of HomeEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadMoreImplCopyWith<_$LoadMoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  List<MovieResult>? get movies => throw _privateConstructorUsedError;
  Option<Either<AppError, MovieModel>> get searchMovie =>
      throw _privateConstructorUsedError;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call({
    bool isLoading,
    int page,
    List<MovieResult>? movies,
    Option<Either<AppError, MovieModel>> searchMovie,
  });
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? page = null,
    Object? movies = freezed,
    Object? searchMovie = null,
  }) {
    return _then(
      _value.copyWith(
            isLoading: null == isLoading
                ? _value.isLoading
                : isLoading // ignore: cast_nullable_to_non_nullable
                      as bool,
            page: null == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int,
            movies: freezed == movies
                ? _value.movies
                : movies // ignore: cast_nullable_to_non_nullable
                      as List<MovieResult>?,
            searchMovie: null == searchMovie
                ? _value.searchMovie
                : searchMovie // ignore: cast_nullable_to_non_nullable
                      as Option<Either<AppError, MovieModel>>,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
    _$HomeStateImpl value,
    $Res Function(_$HomeStateImpl) then,
  ) = __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    bool isLoading,
    int page,
    List<MovieResult>? movies,
    Option<Either<AppError, MovieModel>> searchMovie,
  });
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
    _$HomeStateImpl _value,
    $Res Function(_$HomeStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? page = null,
    Object? movies = freezed,
    Object? searchMovie = null,
  }) {
    return _then(
      _$HomeStateImpl(
        isLoading: null == isLoading
            ? _value.isLoading
            : isLoading // ignore: cast_nullable_to_non_nullable
                  as bool,
        page: null == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int,
        movies: freezed == movies
            ? _value._movies
            : movies // ignore: cast_nullable_to_non_nullable
                  as List<MovieResult>?,
        searchMovie: null == searchMovie
            ? _value.searchMovie
            : searchMovie // ignore: cast_nullable_to_non_nullable
                  as Option<Either<AppError, MovieModel>>,
      ),
    );
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl({
    required this.isLoading,
    required this.page,
    required final List<MovieResult>? movies,
    required this.searchMovie,
  }) : _movies = movies;

  @override
  final bool isLoading;
  @override
  final int page;
  final List<MovieResult>? _movies;
  @override
  List<MovieResult>? get movies {
    final value = _movies;
    if (value == null) return null;
    if (_movies is EqualUnmodifiableListView) return _movies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Option<Either<AppError, MovieModel>> searchMovie;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, page: $page, movies: $movies, searchMovie: $searchMovie)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._movies, _movies) &&
            (identical(other.searchMovie, searchMovie) ||
                other.searchMovie == searchMovie));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    isLoading,
    page,
    const DeepCollectionEquality().hash(_movies),
    searchMovie,
  );

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState({
    required final bool isLoading,
    required final int page,
    required final List<MovieResult>? movies,
    required final Option<Either<AppError, MovieModel>> searchMovie,
  }) = _$HomeStateImpl;

  @override
  bool get isLoading;
  @override
  int get page;
  @override
  List<MovieResult>? get movies;
  @override
  Option<Either<AppError, MovieModel>> get searchMovie;

  /// Create a copy of HomeState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
