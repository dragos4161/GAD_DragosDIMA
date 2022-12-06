import 'package:freezed_annotation/freezed_annotation.dart';

part 'location.freezed.dart';

part 'location.g.dart';

@freezed
class Location with _$Location {
  const factory Location({
    required String? name,
    required String? city,
    required String? country,
}) = Location$;

  factory Location.fromJson(Map<dynamic, dynamic> json) => _$LocationFromJson(Map<String, dynamic>.from(json));
}
