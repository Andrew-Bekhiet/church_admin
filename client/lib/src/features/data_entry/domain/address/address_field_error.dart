enum AddressFieldError {
  streetRequired('يجب إدخال الشارع'),
  areaRequired('يجب إدخال المنطقة'),
  invalidNumber('برجاء ادخال رقم صحيح');

  final String message;

  const AddressFieldError(this.message);
}
