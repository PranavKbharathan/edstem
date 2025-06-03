import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_error.freezed.dart';
part 'app_error.g.dart';

@freezed
class AppError with _$AppError {
  const factory AppError.network(String message) = _NetworkError;
  const factory AppError.server({
    @Default("Something went wrong...") String message,
  }) = _ServerError;

  factory AppError.fromJson(Map<String, dynamic> json) =>
      _$AppErrorFromJson(json);
}
