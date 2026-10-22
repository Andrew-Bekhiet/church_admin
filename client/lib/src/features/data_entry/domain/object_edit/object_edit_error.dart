enum ObjectEditError {
  nameRequired('برجاء إدخال الاسم'),
  areaRequired('يجب اختيار منطقة واحدة على الأقل'),
  familyIsItsOwnParent('لا يمكن أن تكون عائلة أب أو أم لنفسها'),
  familyIsItsOwnChild('لا يمكن أن تكون عائلة أبن أو أبنة لنفسها'),
  familyOrLocationRequired('يجب اختيار عائلة أو تحديد الموقع');

  static String messageOf(ObjectEditError error) => error.message;

  final String message;

  const ObjectEditError(this.message);
}
