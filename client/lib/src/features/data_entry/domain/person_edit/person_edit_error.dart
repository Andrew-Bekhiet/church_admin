enum PersonEditError {
  nameRequired('برجاء إدخال الاسم'),
  familyRequired('يجب تحديد العائلة'),
  familyOrAddressRequired('يجب تحديد العائلة أو العنوان'),
  shammasLevelRequired('برجاء اختيار رتبة الشموسية'),
  cannotRemoveServicesOrGroups(
    'ليس لديك الصلاحية لإزالة بعض الخدمات او المجموعات',
  );

  static String messageOf(PersonEditError error) => error.message;

  final String message;

  const PersonEditError(this.message);
}
