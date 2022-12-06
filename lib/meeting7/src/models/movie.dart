import 'package:freezed_annotation/freezed_annotation.dart';

part 'movie.freezed.dart';

part 'movie.g.dart';

@freezed
class Movie with _$Movie {
  const factory Movie({
    required String title,
    required int year,
    @JsonKey(name:'medium_cover_image') required String image,
  }) = Movie$;

  factory Movie.fromJson(Map<dynamic, dynamic> json) => _$MovieFromJson(Map<String, dynamic>.from(json));
}
