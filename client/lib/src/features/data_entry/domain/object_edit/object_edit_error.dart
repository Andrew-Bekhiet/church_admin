enum ObjectEditError {
  nameRequired('برجاء إدخال الاسم'),
  areaRequired('يجب اختيار منطقة واحدة على الأقل');

  static String messageOf(ObjectEditError error) => error.message;

  final String message;

  const ObjectEditError(this.message);
}
