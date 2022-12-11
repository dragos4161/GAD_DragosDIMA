// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'index.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$Photo$ _$$Photo$FromJson(Map<String, dynamic> json) => _$Photo$(
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      urls: Urls.fromJson(json['urls'] as Map<String, dynamic>),
      location: Location.fromJson(json['location'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$Photo$ToJson(_$Photo$ instance) => <String, dynamic>{
      'user': instance.user,
      'urls': instance.urls,
      'location': instance.location,
    };

_$Location$ _$$Location$FromJson(Map<String, dynamic> json) => _$Location$(
      name: json['name'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$$Location$ToJson(_$Location$ instance) => <String, dynamic>{
      'name': instance.name,
      'city': instance.city,
      'country': instance.country,
    };

_$Urls$ _$$Urls$FromJson(Map<String, dynamic> json) => _$Urls$(
      small: json['small'] as String,
      regular: json['regular'] as String,
    );

Map<String, dynamic> _$$Urls$ToJson(_$Urls$ instance) => <String, dynamic>{
      'small': instance.small,
      'regular': instance.regular,
    };

_$User$ _$$User$FromJson(Map<String, dynamic> json) => _$User$(
      name: json['name'] as String,
      likes: json['total_likes'] as int,
    );

Map<String, dynamic> _$$User$ToJson(_$User$ instance) => <String, dynamic>{
      'name': instance.name,
      'total_likes': instance.likes,
    };

_$AppState$ _$$AppState$FromJson(Map<String, dynamic> json) => _$AppState$(
      photos:
          (json['photos'] as List<dynamic>?)?.map((dynamic e) => Photo.fromJson(e as Map<String, dynamic>)).toList() ??
              const <Photo>[],
      isLoading: json['isLoading'] as bool? ?? true,
      selectedPhoto:
          json['selectedPhoto'] == null ? null : Photo.fromJson(json['selectedPhoto'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AppState$ToJson(_$AppState$ instance) => <String, dynamic>{
      'photos': instance.photos,
      'isLoading': instance.isLoading,
      'selectedPhoto': instance.selectedPhoto,
    };
