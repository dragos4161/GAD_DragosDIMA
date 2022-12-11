part of 'index.dart';

@freezed
class User with _$User {
  const factory User({
    required String name,
    @JsonKey(name: 'total_likes') required int likes,
  }) = User$;

  factory User.fromJson(Map<dynamic, dynamic> json) => _$UserFromJson(Map<String, dynamic>.from(json));
}
