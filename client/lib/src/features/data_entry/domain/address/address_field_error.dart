enum AddressFieldError {
  streetRequired('يجب إدخال الشارع'),
  areaRequired('يجب إدخال المنطقة'),
  streetNotInArea('الشارع لا ينتمي إلى المنطقة المختارة'),
  invalidNumber('برجاء ادخال رقم صحيح'),
  nonEnglishDigits('برجاء كتابة الأرقام بالأرقام الإنجليزية (0-9)');

  static String messageOf(AddressFieldError error) => error.message;

  final String message;

  const AddressFieldError(this.message);
}
