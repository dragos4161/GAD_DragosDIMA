part of 'index.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String? name,
    required String? city,
    required String? country,
  }) = Location$;

  factory Location.fromJson(Map<dynamic, dynamic> json) => _$LocationFromJson(Map<String, dynamic>.from(json));
}
