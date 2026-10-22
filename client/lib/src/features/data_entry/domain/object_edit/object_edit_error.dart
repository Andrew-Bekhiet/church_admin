enum ObjectEditError {
  nameRequired('برجاء إدخال الاسم'),
  areaRequired('يجب اختيار منطقة واحدة على الأقل'),
  familyIsItsOwnParent('لا يمكن أن تكون عائلة أب أو أم لنفسها'),
  familyIsItsOwnChild('لا يمكن أن تكون عائلة أبن أو أبنة لنفسها'),
  familyOrLocationRequired('يجب اختيار عائلة أو تحديد الموقع'),
  serviceRequired('يجب اختيار الخدمة'),
  studyYearsRequired('برجاء ادخال السنتين الدراسيتين'),
  studyYearsReversed('السنة الدراسية الأولى لا يمكن أن تكون أكبر من الثانية'),
  defaultMeetingNameRequired('برجاء إدخال اسم الاجتماع'),
  studyYearsOutsideService('السنة الدراسية يجب ان تكون بين سنوات الخدمة');

  static String messageOf(ObjectEditError error) => error.message;

  final String message;

  const ObjectEditError(this.message);
}
