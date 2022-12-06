// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'photo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return Photo$.fromJson(json);
}

/// @nodoc
mixin _$Photo {
  User get user => throw _privateConstructorUsedError;

  Urls get urls => throw _privateConstructorUsedError;

  Location get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PhotoCopyWith<Photo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhotoCopyWith<$Res> {
  factory $PhotoCopyWith(Photo value, $Res Function(Photo) then) = _$PhotoCopyWithImpl<$Res, Photo>;

  @useResult
  $Res call({User user, Urls urls, Location location});

  $UserCopyWith<$Res> get user;

  $UrlsCopyWith<$Res> get urls;

  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class _$PhotoCopyWithImpl<$Res, $Val extends Photo> implements $PhotoCopyWith<$Res> {
  _$PhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? urls = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UrlsCopyWith<$Res> get urls {
    return $UrlsCopyWith<$Res>(_value.urls, (value) {
      return _then(_value.copyWith(urls: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res> get location {
    return $LocationCopyWith<$Res>(_value.location, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$Photo$CopyWith<$Res> implements $PhotoCopyWith<$Res> {
  factory _$$Photo$CopyWith(_$Photo$ value, $Res Function(_$Photo$) then) = __$$Photo$CopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({User user, Urls urls, Location location});

  @override
  $UserCopyWith<$Res> get user;

  @override
  $UrlsCopyWith<$Res> get urls;

  @override
  $LocationCopyWith<$Res> get location;
}

/// @nodoc
class __$$Photo$CopyWithImpl<$Res> extends _$PhotoCopyWithImpl<$Res, _$Photo$> implements _$$Photo$CopyWith<$Res> {
  __$$Photo$CopyWithImpl(_$Photo$ _value, $Res Function(_$Photo$) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? urls = null,
    Object? location = null,
  }) {
    return _then(_$Photo$(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      urls: null == urls
          ? _value.urls
          : urls // ignore: cast_nullable_to_non_nullable
              as Urls,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as Location,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Photo$ implements Photo$ {
  const _$Photo$({required this.user, required this.urls, required this.location});

  factory _$Photo$.fromJson(Map<String, dynamic> json) => _$$Photo$FromJson(json);

  @override
  final User user;
  @override
  final Urls urls;
  @override
  final Location location;

  @override
  String toString() {
    return 'Photo(user: $user, urls: $urls, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Photo$ &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.urls, urls) || other.urls == urls) &&
            (identical(other.location, location) || other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, user, urls, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Photo$CopyWith<_$Photo$> get copyWith => __$$Photo$CopyWithImpl<_$Photo$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Photo$ToJson(
      this,
    );
  }
}

abstract class Photo$ implements Photo {
  const factory Photo$({required final User user, required final Urls urls, required final Location location}) =
      _$Photo$;

  factory Photo$.fromJson(Map<String, dynamic> json) = _$Photo$.fromJson;

  @override
  User get user;

  @override
  Urls get urls;

  @override
  Location get location;

  @override
  @JsonKey(ignore: true)
  _$$Photo$CopyWith<_$Photo$> get copyWith => throw _privateConstructorUsedError;
}
