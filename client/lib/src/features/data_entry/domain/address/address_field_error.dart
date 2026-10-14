enum AddressFieldError {
  streetRequired('يجب إدخال الشارع'),
  areaRequired('يجب إدخال المنطقة'),
  invalidNumber('برجاء ادخال رقم صحيح');

  static String messageOf(AddressFieldError error) => error.message;

  final String message;

  const AddressFieldError(this.message);
}
