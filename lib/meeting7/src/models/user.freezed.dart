// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return User$.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_likes')
  int get likes => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call({String name, @JsonKey(name: 'total_likes') int likes});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? likes = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$User$CopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$User$CopyWith(_$User$ value, $Res Function(_$User$) then) =
      __$$User$CopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, @JsonKey(name: 'total_likes') int likes});
}

/// @nodoc
class __$$User$CopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$User$>
    implements _$$User$CopyWith<$Res> {
  __$$User$CopyWithImpl(_$User$ _value, $Res Function(_$User$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? likes = null,
  }) {
    return _then(_$User$(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      likes: null == likes
          ? _value.likes
          : likes // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$User$ implements User$ {
  const _$User$(
      {required this.name, @JsonKey(name: 'total_likes') required this.likes});

  factory _$User$.fromJson(Map<String, dynamic> json) => _$$User$FromJson(json);

  @override
  final String name;
  @override
  @JsonKey(name: 'total_likes')
  final int likes;

  @override
  String toString() {
    return 'User(name: $name, likes: $likes)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$User$ &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.likes, likes) || other.likes == likes));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, likes);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$User$CopyWith<_$User$> get copyWith =>
      __$$User$CopyWithImpl<_$User$>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$User$ToJson(
      this,
    );
  }
}

abstract class User$ implements User {
  const factory User$(
      {required final String name,
      @JsonKey(name: 'total_likes') required final int likes}) = _$User$;

  factory User$.fromJson(Map<String, dynamic> json) = _$User$.fromJson;

  @override
  String get name;
  @override
  @JsonKey(name: 'total_likes')
  int get likes;
  @override
  @JsonKey(ignore: true)
  _$$User$CopyWith<_$User$> get copyWith => throw _privateConstructorUsedError;
}
