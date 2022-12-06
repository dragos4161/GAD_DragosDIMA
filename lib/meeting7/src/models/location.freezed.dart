// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location$.fromJson(json);
}

/// @nodoc
mixin _$Location {
  String? get name => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call({String? name, String? city, String? country});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$Location$CopyWith<$Res> implements $LocationCopyWith<$Res> {
  factory _$$Location$CopyWith(
          _$Location$ value, $Res Function(_$Location$) then) =
      __$$Location$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? city, String? country});
}

/// @nodoc
class __$$Location$CopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$Location$>
    implements _$$Location$CopyWith<$Res> {
  __$$Location$CopyWithImpl(
      _$Location$ _value, $Res Function(_$Location$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? city = freezed,
    Object? country = freezed,
  }) {
    return _then(_$Location$(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$Location$ implements Location$ {
  const _$Location$(
      {required this.name, required this.city, required this.country});

  factory _$Location$.fromJson(Map<String, dynamic> json) =>
      _$$Location$FromJson(json);

  @override
  final String? name;
  @override
  final String? city;
  @override
  final String? country;

  @override
  String toString() {
    return 'Location(name: $name, city: $city, country: $country)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Location$ &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, city, country);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$Location$CopyWith<_$Location$> get copyWith =>
      __$$Location$CopyWithImpl<_$Location$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$Location$ToJson(
      this,
    );
  }
}

abstract class Location$ implements Location {
  const factory Location$(
      {required final String? name,
      required final String? city,
      required final String? country}) = _$Location$;

  factory Location$.fromJson(Map<String, dynamic> json) = _$Location$.fromJson;

  @override
  String? get name;
  @override
  String? get city;
  @override
  String? get country;
  @override
  @JsonKey(ignore: true)
  _$$Location$CopyWith<_$Location$> get copyWith =>
      throw _privateConstructorUsedError;
}
