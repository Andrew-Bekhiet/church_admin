enum FingerprintEmployeeCodeError {
  blank('اكتب رقم البصمة أولًا'),
  alreadyLinked('هذا الرقم مسجَّل من قبل لهذا المخدوم أو لمخدوم آخر'),
  changeNotSaved(
    'تعذر حفظ التغيير، تأكد من الاتصال بالإنترنت ثم حاول مرة أخرى',
  );

  static String messageOf(FingerprintEmployeeCodeError error) => error.message;

  final String message;

  const FingerprintEmployeeCodeError(this.message);
}
