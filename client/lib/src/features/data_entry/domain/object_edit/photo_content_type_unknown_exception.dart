class PhotoContentTypeUnknownException implements Exception {
  final String photoPath;

  const PhotoContentTypeUnknownException(this.photoPath);

  @override
  String toString() =>
      'PhotoContentTypeUnknownException: the content type of $photoPath '
      'could not be determined';
}
