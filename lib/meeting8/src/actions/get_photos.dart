part of 'index.dart';

@freezed
class GetPhotos with _$GetPhotos {
  const factory GetPhotos() = GetPhotosStart;

  const factory GetPhotos.successful(List<Photo> photos) = GetPhotosSuccessful;

  const factory GetPhotos.error(Object error, StackTrace stackTrace) = GetPhotosError;
}
