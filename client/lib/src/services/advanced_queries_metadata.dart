import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

abstract final class AdvancedQueriesMetadata {
  static final Map<Type, dynamic> dummyInstanceForType = {
    String: '',
    bool: false,
    int: 0,
    double: 0.0,
    DateTime: DateTime.now(),
    Area: Area(id: '', name: ''),
    Street: Street(id: '', name: ''),
    Family: Family(id: '', name: ''),
    Store: Store(id: '', name: ''),
    Service: Service(id: '', name: ''),
    Class: Class(id: '', name: ''),
    Group: Group(id: '', name: ''),
    User: User(uid: '', name: ''),
    Person: Person(id: '', name: ''),
    Church: Church(id: '', name: ''),
    College: College(id: '', name: ''),
    Father: Father(id: '', name: ''),
    Hobby: Hobby(id: '', name: ''),
    Job: Job(id: '', name: ''),
    PersonState: PersonState(id: '', name: ''),
    PersonType: PersonType(id: '', name: ''),
    Qualification: Qualification(id: '', name: ''),
    School: School(id: '', name: ''),
    ShammasLevel: ShammasLevel(id: '', name: '', order: 0),
    StudyYear: StudyYear(name: '', order: 0),
    Tag: Tag(id: '', name: ''),
    Color: Colors.transparent,
    Polygon: const Polygon([]),
    DateTimeRange: DateTimeRange(start: DateTime.now(), end: DateTime.now()),
    AdminOnData: const AdminOnData(permissionId: ''),
    UserPermission: UserPermission.approved,
  };

  static final Map<Type, (String, String)> queryableTypes = {
    Area: ('المناطق', 'Area'),
    Street: ('الشوارع', 'Street'),
    Family: ('العائلات', 'Family'),
    Store: ('المتاجر', 'Store'),
    Service: ('الخدمات', 'Service'),
    Class: ('الفصول', 'Class'),
    Group: ('المجموعات', 'Group'),
    User: ('الخدام', 'User'),
    Person: ('المخدومين', 'Person'),
    Church: ('الكنائس', 'Church'),
    College: ('الكليات', 'College'),
    Father: ('الأباء الكهنة', 'Father'),
    Hobby: ('الهوايات', 'Hobby'),
    Job: ('الوظائف', 'Job'),
    PersonState: ('الحالات الروحية', 'PersonState'),
    PersonType: ('الحالات الاجتماعية', 'PersonType'),
    Qualification: (
      'المؤهلات',
      'Qualificaion',
    ),
    School: ('المدارس', 'School'),
    ShammasLevel: ('رتب الشموسية', 'ShammasLevel'),
    StudyYear: ('السنوات الدراسية', 'StudyYear'),
    Tag: ('الشارات', 'Tag'),
  };

  static final Map<Type, StreamableDAO> streamableDAOs = {
    Area: DatabaseService.I.areas,
    Street: DatabaseService.I.streets,
    Family: DatabaseService.I.families,
    Store: DatabaseService.I.stores,
    Service: DatabaseService.I.services,
    Class: DatabaseService.I.classes,
    Group: DatabaseService.I.groups,
    User: DatabaseService.I.users,
    Person: DatabaseService.I.persons,
    Church: DatabaseService.I.metadata.churches,
    College: DatabaseService.I.metadata.colleges,
    Father: DatabaseService.I.metadata.fathers,
    Hobby: DatabaseService.I.metadata.hobbies,
    Job: DatabaseService.I.metadata.jobs,
    PersonState: DatabaseService.I.metadata.personStates,
    PersonType: DatabaseService.I.metadata.personTypes,
    Qualification: DatabaseService.I.metadata.qualifications,
    School: DatabaseService.I.metadata.schools,
    ShammasLevel: DatabaseService.I.metadata.shammasLevels,
    StudyYear: DatabaseService.I.metadata.studyYears,
    Tag: DatabaseService.I.metadata.tags,
  };

  static final Map<Type, dynamic Function(Json)> typeDeserializers = {
    Area: Area.fromJson,
    Street: Street.fromJson,
    Family: Family.fromJson,
    Store: Store.fromJson,
    Service: Service.fromJson,
    Class: Class.fromJson,
    Group: Group.fromJson,
    User: User.fromJson,
    Person: Person.fromJson,
    Church: Church.fromJson,
    College: College.fromJson,
    Father: Father.fromJson,
    Hobby: Hobby.fromJson,
    Job: Job.fromJson,
    PersonState: PersonState.fromJson,
    PersonType: PersonType.fromJson,
    Qualification: Qualification.fromJson,
    School: School.fromJson,
    ShammasLevel: ShammasLevel.fromJson,
    StudyYear: StudyYear.fromJson,
    Tag: Tag.fromJson,
  };

  static final Map<Type, Set<(String, String)>> propertiesByType = {
    Area: {
      ('id', '='),
      ('name', 'الاسم'),
      ('bounds', 'الموقع'),
      ('color', 'اللون'),
      ('photoUpdatedAt', 'أخر تحديث للصورة'),
      ('lastEdit', 'أخر تعديل'),
      ('adminUsers', 'الخدام المسؤلين'),
      ('families', 'العائلات'),
      ('stores', 'المتاجر'),
      ('streets', 'الشوارع'),
      ('persons', 'الأشخاص'),
    },
    Street: {
      ('id', '='),
      ('name', 'الاسم'),
      ('line', 'الموقع'),
      ('color', 'اللون'),
      ('photoUpdatedAt', 'أخر تحديث للصورة'),
      ('lastEdit', 'أخر تعديل'),
      ('areas', 'المناطق'),
      ('families', 'العائلات'),
      ('stores', 'المتاجر'),
      ('persons', 'الأشخاص'),
    },
    Family: {
      ('id', '='),
      ('name', 'الاسم'),
      ('address', 'العنوان'),
      ('geolocation', 'الموقع'),
      ('notes', 'ملاحظات'),
      ('color', 'اللون'),
      ('photoUpdatedAt', 'أخر تحديث للصورة'),
      ('lastEdit', 'أخر تعديل'),
      ('areas', 'المناطق'),
      ('streets', 'الشوارع'),
      ('stores', 'المتاجر'),
      ('children', 'العائلات الأبناء'),
      ('parents', 'العائلات الأباء'),
      ('persons', 'المخدومين'),
    },
    Store: {
      ('id', '='),
      ('name', 'الاسم'),
      ('adminFamily', 'العائلة المسؤولة'),
      ('geolocation', 'الموقع'),
      ('color', 'اللون'),
      ('areas', 'المناطق'),
      ('streets', 'الشوارع'),
      ('lastEdit', 'أخر تعديل'),
      ('photoUpdatedAt', 'أخر تحديث للصورة'),
    },
    Service: {
      ('id', '='),
      ('name', 'الاسم'),
      ('studyYearFrom', 'السنة الدراسية: من'),
      ('studyYearTo', 'السنة الدراسية: إلى'),
      ('nextService', 'الخدمة التالية'),
      ('color', 'اللون'),
      ('photoUpdatedAt', 'أخر تحديث للصورة'),
      ('classes', 'الفصول'),
      ('groups', 'المجموعات'),
      ('persons', 'المخدومين'),
      ('lastEdit', 'أخر تعديل'),
      ('adminUsers', 'الخدام المسؤلين'),
    },
    Class: {
      ('id', '='),
      ('name', 'الاسم'),
      ('service', 'الخدمة'),
      ('studyYear', 'السنة الدراسية'),
      ('serviceGender', 'النوع'),
      ('color', 'اللون'),
      ('photoUpdatedAt', 'أخر تحديث للصورة'),
      ('lastEdit', 'أخر تعديل'),
      ('adminUsers', 'الخدام المسؤلين'),
      ('persons', 'المخدومين'),
    },
    Group: {
      ('id', '='),
      ('name', 'الاسم'),
      ('service', 'الخدمة'),
      ('color', 'اللون'),
      ('photoUpdatedAt', 'أخر تحديث للصورة'),
      ('lastEdit', 'أخر تعديل'),
      ('persons', 'المخدومين'),
      ('adminUsers', 'الخدام المسؤلين'),
    },
    User: {
      ('name', 'الاسم'),
      ('photoUpdatedAt', 'أخر تحديث للصورة'),
      ('adminOn', 'مسؤول عن'),
      ('permissions', 'الصلاحيات'),
      ('lastEdit', 'أخر تعديل'),
      ('person', 'بيانات المخدوم'),
    },
    Person: {
      ('id', '='),
      ('name', 'الاسم'),
      ('mainPhone', 'رقم الهاتف'),
      ('address', 'العنوان'),
      ('geolocation', 'الموقع'),
      ('birthdate', 'تاريخ الميلاد'),
      ('birthday', 'يوم وشهر الميلاد'),
      ('isStudent', 'طالب؟'),
      ('studyYear', 'السنة الدراسية'),
      ('college', 'الكلية'),
      ('school', 'المدرسة'),
      ('qualification', 'المؤهل'),
      ('job', 'الوظيفة'),
      ('jobDescription', 'تفاصيل الوظيفة'),
      ('gender', 'النوع'),
      ('personType', 'الحالة الاجتماعية'),
      ('isShammas', 'شماس؟'),
      ('shammasLevel', 'رتبة الشموسية'),
      ('church', 'الكنيسة'),
      ('father', 'اب الاعتراف'),
      ('isServant', 'خادم؟'),
      ('state', 'الحالة الروحية'),
      ('hobbies', 'الهوايات'),
      ('tags', 'الشارات'),
      ('color', 'اللون'),
      ('notes', 'ملاحظات'),
      ('family', 'العائلة'),
      ('photoUpdatedAt', 'أخر تحديث للصورة'),
      ('lastKodas', 'أخر تناول'),
      ('lastConfession', 'أخر اعتراف'),
      ('lastVisit', 'أخر افتقاد'),
      ('lastCall', 'أخر مكالمة'),
      ('lastEdit', 'أخر تحديث للبيانات'),
      ('services', 'الخدمات'),
      ('classes', 'الفصول'),
      ('groups', 'المجموعات'),
      ('areas', 'المناطق'),
      ('streets', 'الشوارع'),
      ('user', 'بيانات الخادم'),
    },
    Church: {
      ('id', '='),
      ('name', 'الاسم'),
      ('persons', 'المخدومين'),
    },
    College: {
      ('id', '='),
      ('name', 'الاسم'),
      ('persons', 'المخدومين'),
    },
    Father: {
      ('id', '='),
      ('name', 'الاسم'),
      ('persons', 'المخدومين'),
    },
    Hobby: {
      ('id', '='),
      ('name', 'الاسم'),
      ('color', 'اللون'),
      ('persons', 'المخدومين'),
    },
    Job: {
      ('id', '='),
      ('name', 'الاسم'),
      ('persons', 'المخدومين'),
    },
    PersonState: {
      ('id', '='),
      ('name', 'الاسم'),
      ('color', 'اللون'),
      ('persons', 'المخدومين'),
    },
    PersonType: {
      ('id', '='),
      ('name', 'الاسم'),
      ('color', 'اللون'),
      ('persons', 'المخدومين'),
    },
    Qualification: {
      ('id', '='),
      ('name', 'الاسم'),
      ('persons', 'المخدومين'),
    },
    School: {
      ('id', '='),
      ('name', 'الاسم'),
      ('persons', 'المخدومين'),
    },
    ShammasLevel: {
      ('id', '='),
      ('order', 'الترتيب'),
      ('name', 'الاسم'),
      ('persons', 'المخدومين'),
    },
    StudyYear: {
      ('id', '='),
      ('order', 'الترتيب'),
      ('name', 'الاسم'),
      ('persons', 'المخدومين'),
    },
    Tag: {
      ('id', '='),
      ('name', 'الاسم'),
      ('color', 'اللون'),
      ('persons', 'المخدومين'),
    },
  };

  static final _fieldsMetadataByName = {
    'order': const FieldMetadata(type: int, operators: Operator.comparitive),
    'color': FieldMetadata(
      type: Color,
      operators: Operator.comparitive.union({Operator.isNull}),
    ),
    // 'validity': const FieldMetadata(type: DateTimeRange),
    'adminOn': const FieldMetadata(type: AdminOnData),
    'person': const FieldMetadata(type: Person),
    'user': const FieldMetadata(type: User),
    'shammasLevel': const FieldMetadata(type: ShammasLevel),
    'school': const FieldMetadata(type: School),
    'college': const FieldMetadata(type: College),
    'church': const FieldMetadata(type: Church),
    'father': const FieldMetadata(type: Father),
    'job': const FieldMetadata(type: Job),
    'qualification': const FieldMetadata(type: Qualification),
    'personType': const FieldMetadata(type: PersonType),
    'state': const FieldMetadata(type: PersonState),
    'adminUsers': const FieldMetadata(type: User),
    'areas': const FieldMetadata(type: Area),
    'streets': const FieldMetadata(type: Street),
    'stores': const FieldMetadata(type: Store),
    'persons': const FieldMetadata(type: Person),
    'classes': const FieldMetadata(type: Class),
    'groups': const FieldMetadata(type: Group),
    'permissions': const FieldMetadata(type: UserPermission),
    'tags': const FieldMetadata(type: Tag),
    'hobbies': const FieldMetadata(type: Hobby),
  };

  static FieldMetadata getFieldMetadata(
    String name,
    FieldMetadata valueOnId,
  ) {
    switch (name) {
      case 'name' ||
            'jobDescription' ||
            'notes' ||
            'address' ||
            'mainPhone' ||
            'birthday':
      case _ when name.endsWith('Id'):
        return FieldMetadata(
          type: String,
          operators: Operator.comparitive
              .union(Operator.textual)
              .union({Operator.isNull}),
        );

      case 'serviceGender' || 'gender':
      case _ when name.startsWith('is'):
        return FieldMetadata(
          type: bool,
          operators: Operator.comparitive.union({Operator.isNull}),
        );

      case 'photoUpdatedAt' || 'birthdate':
      case _ when name.startsWith('last'):
        return FieldMetadata(
          type: DateTime,
          operators: Operator.comparitive.union({Operator.isNull}),
        );

      case 'family' || 'adminFamily' || 'families' || 'children' || 'parents':
        return const FieldMetadata(type: Family);

      case 'nextService' || 'service' || 'services':
        return const FieldMetadata(type: Service);

      case 'geolocation' || 'bounds' || 'line':
        return const FieldMetadata(type: Polygon, operators: Operator.spatial);

      case 'studyYearFrom' ||
            'studyYearTo' ||
            'studyYear' ||
            'serviceStudyYear':
        return const FieldMetadata(type: StudyYear);

      case 'id':
        return valueOnId;

      default:
        return _fieldsMetadataByName[name]!;
    }
  }
}
