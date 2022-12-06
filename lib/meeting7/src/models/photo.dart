import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gad_tema2/meeting7/src/models/location.dart';
import 'package:gad_tema2/meeting7/src/models/urls.dart';
import 'package:gad_tema2/meeting7/src/models/user.dart';

part 'photo.freezed.dart';

part 'photo.g.dart';

@freezed
class Photo with _$Photo {
  const factory Photo({
    required User user,
    required Urls urls,
    required Location location,
  }) = Photo$;

  factory Photo.fromJson(Map<dynamic, dynamic> json) => _$PhotoFromJson(Map<String, dynamic>.from(json));
}
