part of 'index.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required User user,
    required Urls urls,
    required Location location,
  }) = Photo$;

  factory Photo.fromJson(Map<dynamic, dynamic> json) => _$PhotoFromJson(Map<String, dynamic>.from(json));
}
