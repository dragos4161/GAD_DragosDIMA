// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'index.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetPhotos {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetPhotosCopyWith<$Res> {
  factory $GetPhotosCopyWith(GetPhotos value, $Res Function(GetPhotos) then) = _$GetPhotosCopyWithImpl<$Res, GetPhotos>;
}

/// @nodoc
class _$GetPhotosCopyWithImpl<$Res, $Val extends GetPhotos> implements $GetPhotosCopyWith<$Res> {
  _$GetPhotosCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetPhotosStartCopyWith<$Res> {
  factory _$$GetPhotosStartCopyWith(_$GetPhotosStart value, $Res Function(_$GetPhotosStart) then) =
      __$$GetPhotosStartCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetPhotosStartCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res, _$GetPhotosStart>
    implements _$$GetPhotosStartCopyWith<$Res> {
  __$$GetPhotosStartCopyWithImpl(_$GetPhotosStart _value, $Res Function(_$GetPhotosStart) _then) : super(_value, _then);
}

/// @nodoc

class _$GetPhotosStart implements GetPhotosStart {
  const _$GetPhotosStart();

  @override
  String toString() {
    return 'GetPhotos()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other.runtimeType == runtimeType && other is _$GetPhotosStart);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class GetPhotosStart implements GetPhotos {
  const factory GetPhotosStart() = _$GetPhotosStart;
}

/// @nodoc
abstract class _$$GetPhotosSuccessfulCopyWith<$Res> {
  factory _$$GetPhotosSuccessfulCopyWith(_$GetPhotosSuccessful value, $Res Function(_$GetPhotosSuccessful) then) =
      __$$GetPhotosSuccessfulCopyWithImpl<$Res>;

  @useResult
  $Res call({List<Photo> photos});
}

/// @nodoc
class __$$GetPhotosSuccessfulCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res, _$GetPhotosSuccessful>
    implements _$$GetPhotosSuccessfulCopyWith<$Res> {
  __$$GetPhotosSuccessfulCopyWithImpl(_$GetPhotosSuccessful _value, $Res Function(_$GetPhotosSuccessful) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photos = null,
  }) {
    return _then(_$GetPhotosSuccessful(
      null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<Photo>,
    ));
  }
}

/// @nodoc

class _$GetPhotosSuccessful implements GetPhotosSuccessful {
  const _$GetPhotosSuccessful(final List<Photo> photos) : _photos = photos;

  final List<Photo> _photos;

  @override
  List<Photo> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  String toString() {
    return 'GetPhotos.successful(photos: $photos)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPhotosSuccessful &&
            const DeepCollectionEquality().equals(other._photos, _photos));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(_photos));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPhotosSuccessfulCopyWith<_$GetPhotosSuccessful> get copyWith =>
      __$$GetPhotosSuccessfulCopyWithImpl<_$GetPhotosSuccessful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return successful(photos);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return successful?.call(photos);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(photos);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) {
    return successful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class GetPhotosSuccessful implements GetPhotos {
  const factory GetPhotosSuccessful(final List<Photo> photos) = _$GetPhotosSuccessful;

  List<Photo> get photos;

  @JsonKey(ignore: true)
  _$$GetPhotosSuccessfulCopyWith<_$GetPhotosSuccessful> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetPhotosErrorCopyWith<$Res> {
  factory _$$GetPhotosErrorCopyWith(_$GetPhotosError value, $Res Function(_$GetPhotosError) then) =
      __$$GetPhotosErrorCopyWithImpl<$Res>;

  @useResult
  $Res call({Object error, StackTrace stackTrace});
}

/// @nodoc
class __$$GetPhotosErrorCopyWithImpl<$Res> extends _$GetPhotosCopyWithImpl<$Res, _$GetPhotosError>
    implements _$$GetPhotosErrorCopyWith<$Res> {
  __$$GetPhotosErrorCopyWithImpl(_$GetPhotosError _value, $Res Function(_$GetPhotosError) _then) : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
    Object? stackTrace = null,
  }) {
    return _then(_$GetPhotosError(
      null == error ? _value.error : error,
      null == stackTrace
          ? _value.stackTrace
          : stackTrace // ignore: cast_nullable_to_non_nullable
              as StackTrace,
    ));
  }
}

/// @nodoc

class _$GetPhotosError implements GetPhotosError {
  const _$GetPhotosError(this.error, this.stackTrace);

  @override
  final Object error;
  @override
  final StackTrace stackTrace;

  @override
  String toString() {
    return 'GetPhotos.error(error: $error, stackTrace: $stackTrace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetPhotosError &&
            const DeepCollectionEquality().equals(other.error, error) &&
            (identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
  }

  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(error), stackTrace);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetPhotosErrorCopyWith<_$GetPhotosError> get copyWith =>
      __$$GetPhotosErrorCopyWithImpl<_$GetPhotosError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(List<Photo> photos) successful,
    required TResult Function(Object error, StackTrace stackTrace) error,
  }) {
    return error(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(List<Photo> photos)? successful,
    TResult? Function(Object error, StackTrace stackTrace)? error,
  }) {
    return error?.call(this.error, stackTrace);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(List<Photo> photos)? successful,
    TResult Function(Object error, StackTrace stackTrace)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this.error, stackTrace);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(GetPhotosStart value) $default, {
    required TResult Function(GetPhotosSuccessful value) successful,
    required TResult Function(GetPhotosError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(GetPhotosStart value)? $default, {
    TResult? Function(GetPhotosSuccessful value)? successful,
    TResult? Function(GetPhotosError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(GetPhotosStart value)? $default, {
    TResult Function(GetPhotosSuccessful value)? successful,
    TResult Function(GetPhotosError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class GetPhotosError implements GetPhotos {
  const factory GetPhotosError(final Object error, final StackTrace stackTrace) = _$GetPhotosError;

  Object get error;

  StackTrace get stackTrace;

  @JsonKey(ignore: true)
  _$$GetPhotosErrorCopyWith<_$GetPhotosError> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SetSelectedPhoto {
  Photo get photo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SetSelectedPhotoCopyWith<SetSelectedPhoto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SetSelectedPhotoCopyWith<$Res> {
  factory $SetSelectedPhotoCopyWith(SetSelectedPhoto value, $Res Function(SetSelectedPhoto) then) =
      _$SetSelectedPhotoCopyWithImpl<$Res, SetSelectedPhoto>;

  @useResult
  $Res call({Photo photo});

  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class _$SetSelectedPhotoCopyWithImpl<$Res, $Val extends SetSelectedPhoto> implements $SetSelectedPhotoCopyWith<$Res> {
  _$SetSelectedPhotoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;

  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_value.copyWith(
      photo: null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PhotoCopyWith<$Res> get photo {
    return $PhotoCopyWith<$Res>(_value.photo, (value) {
      return _then(_value.copyWith(photo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SetSelectedPhoto$CopyWith<$Res> implements $SetSelectedPhotoCopyWith<$Res> {
  factory _$$SetSelectedPhoto$CopyWith(_$SetSelectedPhoto$ value, $Res Function(_$SetSelectedPhoto$) then) =
      __$$SetSelectedPhoto$CopyWithImpl<$Res>;

  @override
  @useResult
  $Res call({Photo photo});

  @override
  $PhotoCopyWith<$Res> get photo;
}

/// @nodoc
class __$$SetSelectedPhoto$CopyWithImpl<$Res> extends _$SetSelectedPhotoCopyWithImpl<$Res, _$SetSelectedPhoto$>
    implements _$$SetSelectedPhoto$CopyWith<$Res> {
  __$$SetSelectedPhoto$CopyWithImpl(_$SetSelectedPhoto$ _value, $Res Function(_$SetSelectedPhoto$) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? photo = null,
  }) {
    return _then(_$SetSelectedPhoto$(
      null == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as Photo,
    ));
  }
}

/// @nodoc

class _$SetSelectedPhoto$ implements SetSelectedPhoto$ {
  const _$SetSelectedPhoto$(this.photo);

  @override
  final Photo photo;

  @override
  String toString() {
    return 'SetSelectedPhoto(photo: $photo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetSelectedPhoto$ &&
            (identical(other.photo, photo) || other.photo == photo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, photo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetSelectedPhoto$CopyWith<_$SetSelectedPhoto$> get copyWith =>
      __$$SetSelectedPhoto$CopyWithImpl<_$SetSelectedPhoto$>(this, _$identity);
}

abstract class SetSelectedPhoto$ implements SetSelectedPhoto {
  const factory SetSelectedPhoto$(final Photo photo) = _$SetSelectedPhoto$;

  @override
  Photo get photo;

  @override
  @JsonKey(ignore: true)
  _$$SetSelectedPhoto$CopyWith<_$SetSelectedPhoto$> get copyWith => throw _privateConstructorUsedError;
}
