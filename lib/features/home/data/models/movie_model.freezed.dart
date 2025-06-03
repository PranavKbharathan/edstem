// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  int? get page => throw _privateConstructorUsedError;
  List<MovieResult>? get results => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int? get totalPages => throw _privateConstructorUsedError;

  /// Serializes this MovieModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
    MovieModel value,
    $Res Function(MovieModel) then,
  ) = _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call({
    int? page,
    List<MovieResult>? results,
    @JsonKey(name: "total_pages") int? totalPages,
  });
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(
      _value.copyWith(
            page: freezed == page
                ? _value.page
                : page // ignore: cast_nullable_to_non_nullable
                      as int?,
            results: freezed == results
                ? _value.results
                : results // ignore: cast_nullable_to_non_nullable
                      as List<MovieResult>?,
            totalPages: freezed == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
    _$MovieModelImpl value,
    $Res Function(_$MovieModelImpl) then,
  ) = __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int? page,
    List<MovieResult>? results,
    @JsonKey(name: "total_pages") int? totalPages,
  });
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
    _$MovieModelImpl _value,
    $Res Function(_$MovieModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = freezed,
    Object? results = freezed,
    Object? totalPages = freezed,
  }) {
    return _then(
      _$MovieModelImpl(
        freezed == page
            ? _value.page
            : page // ignore: cast_nullable_to_non_nullable
                  as int?,
        freezed == results
            ? _value._results
            : results // ignore: cast_nullable_to_non_nullable
                  as List<MovieResult>?,
        freezed == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl(
    this.page,
    final List<MovieResult>? results,
    @JsonKey(name: "total_pages") this.totalPages,
  ) : _results = results;

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  final int? page;
  final List<MovieResult>? _results;
  @override
  List<MovieResult>? get results {
    final value = _results;
    if (value == null) return null;
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: "total_pages")
  final int? totalPages;

  @override
  String toString() {
    return 'MovieModel(page: $page, results: $results, totalPages: $totalPages)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    page,
    const DeepCollectionEquality().hash(_results),
    totalPages,
  );

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(this);
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
    final int? page,
    final List<MovieResult>? results,
    @JsonKey(name: "total_pages") final int? totalPages,
  ) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  int? get page;
  @override
  List<MovieResult>? get results;
  @override
  @JsonKey(name: "total_pages")
  int? get totalPages;

  /// Create a copy of MovieModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MovieResult _$MovieResultFromJson(Map<String, dynamic> json) {
  return _MovieResult.fromJson(json);
}

/// @nodoc
mixin _$MovieResult {
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get image => throw _privateConstructorUsedError;

  /// Serializes this MovieResult to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieResultCopyWith<MovieResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieResultCopyWith<$Res> {
  factory $MovieResultCopyWith(
    MovieResult value,
    $Res Function(MovieResult) then,
  ) = _$MovieResultCopyWithImpl<$Res, MovieResult>;
  @useResult
  $Res call({
    String? title,
    @JsonKey(name: "release_date") String? date,
    @JsonKey(name: "poster_path") String? image,
  });
}

/// @nodoc
class _$MovieResultCopyWithImpl<$Res, $Val extends MovieResult>
    implements $MovieResultCopyWith<$Res> {
  _$MovieResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? date = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _value.copyWith(
            title: freezed == title
                ? _value.title
                : title // ignore: cast_nullable_to_non_nullable
                      as String?,
            date: freezed == date
                ? _value.date
                : date // ignore: cast_nullable_to_non_nullable
                      as String?,
            image: freezed == image
                ? _value.image
                : image // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MovieResultImplCopyWith<$Res>
    implements $MovieResultCopyWith<$Res> {
  factory _$$MovieResultImplCopyWith(
    _$MovieResultImpl value,
    $Res Function(_$MovieResultImpl) then,
  ) = __$$MovieResultImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? title,
    @JsonKey(name: "release_date") String? date,
    @JsonKey(name: "poster_path") String? image,
  });
}

/// @nodoc
class __$$MovieResultImplCopyWithImpl<$Res>
    extends _$MovieResultCopyWithImpl<$Res, _$MovieResultImpl>
    implements _$$MovieResultImplCopyWith<$Res> {
  __$$MovieResultImplCopyWithImpl(
    _$MovieResultImpl _value,
    $Res Function(_$MovieResultImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MovieResult
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = freezed,
    Object? date = freezed,
    Object? image = freezed,
  }) {
    return _then(
      _$MovieResultImpl(
        freezed == title
            ? _value.title
            : title // ignore: cast_nullable_to_non_nullable
                  as String?,
        freezed == date
            ? _value.date
            : date // ignore: cast_nullable_to_non_nullable
                  as String?,
        freezed == image
            ? _value.image
            : image // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieResultImpl implements _MovieResult {
  const _$MovieResultImpl(
    this.title,
    @JsonKey(name: "release_date") this.date,
    @JsonKey(name: "poster_path") this.image,
  );

  factory _$MovieResultImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieResultImplFromJson(json);

  @override
  final String? title;
  @override
  @JsonKey(name: "release_date")
  final String? date;
  @override
  @JsonKey(name: "poster_path")
  final String? image;

  @override
  String toString() {
    return 'MovieResult(title: $title, date: $date, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieResultImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, date, image);

  /// Create a copy of MovieResult
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieResultImplCopyWith<_$MovieResultImpl> get copyWith =>
      __$$MovieResultImplCopyWithImpl<_$MovieResultImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieResultImplToJson(this);
  }
}

abstract class _MovieResult implements MovieResult {
  const factory _MovieResult(
    final String? title,
    @JsonKey(name: "release_date") final String? date,
    @JsonKey(name: "poster_path") final String? image,
  ) = _$MovieResultImpl;

  factory _MovieResult.fromJson(Map<String, dynamic> json) =
      _$MovieResultImpl.fromJson;

  @override
  String? get title;
  @override
  @JsonKey(name: "release_date")
  String? get date;
  @override
  @JsonKey(name: "poster_path")
  String? get image;

  /// Create a copy of MovieResult
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieResultImplCopyWith<_$MovieResultImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
