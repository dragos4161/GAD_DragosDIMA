// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

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
