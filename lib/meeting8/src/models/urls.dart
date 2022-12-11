part of 'index.dart';

@freezed
class Urls with _$Urls {
  const factory Urls({
    required String small,
    required String regular,
  }) = Urls$;

  factory Urls.fromJson(Map<dynamic, dynamic> json) => _$UrlsFromJson(Map<String, dynamic>.from(json));
}
