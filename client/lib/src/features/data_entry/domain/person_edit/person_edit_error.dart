enum PersonEditError {
  nameRequired('برجاء إدخال الاسم'),
  invalidNationalId('برجاء إدخال رقم قومي صالح'),
  familyRequired('يجب تحديد العائلة'),
  familyOrAddressRequired('يجب تحديد العائلة أو العنوان'),
  shammasLevelRequired('برجاء اختيار رتبة الشموسية'),
  cannotRemoveServicesOrGroups(
    'ليس لديك الصلاحية لإزالة بعض الخدمات او المجموعات',
  );

  final String message;

  const PersonEditError(this.message);
}
