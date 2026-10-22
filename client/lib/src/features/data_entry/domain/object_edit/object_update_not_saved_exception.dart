class ObjectUpdateNotSavedException implements Exception {
  final String objectId;

  const ObjectUpdateNotSavedException(this.objectId);

  @override
  String toString() =>
      'ObjectUpdateNotSavedException: the update of $objectId saved nothing';
}
