enum AddressFieldError {
  streetRequired('يجب إدخال الشارع'),
  areaRequired('يجب إدخال المنطقة'),
  invalidNumber('برجاء ادخال رقم صحيح'),
  nonEnglishDigits('برجاء كتابة الأرقام بالأرقام الإنجليزية (0-9)');

  static String messageOf(AddressFieldError error) => error.message;

  final String message;

  const AddressFieldError(this.message);
}
