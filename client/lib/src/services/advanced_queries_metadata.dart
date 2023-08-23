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
    Point: const Point(0, 0),
    Polygon: const Polygon([]),
    Line: const Line([]),
    DateTimeRange: DateTimeRange(start: DateTime.now(), end: DateTime.now()),
    AdminOnData: const AdminOnData(permissionId: ''),
    UserPermission: UserPermission.approved,
  };

  static final Map<Type, (String, StreamableDAO)> queryableTypes = {
    Area: ('المناطق', DatabaseService.I.areas),
    Street: ('الشوارع', DatabaseService.I.streets),
    Family: ('العائلات', DatabaseService.I.families),
    Store: ('المتاجر', DatabaseService.I.stores),
    Service: ('الخدمات', DatabaseService.I.services),
    Class: ('الفصول', DatabaseService.I.classes),
    Group: ('المجموعات', DatabaseService.I.groups),
    User: ('الخدام', DatabaseService.I.users),
    Person: ('المخدومين', DatabaseService.I.persons),
    Church: ('الكنائس', DatabaseService.I.metadata.churches),
    College: ('الكليات', DatabaseService.I.metadata.colleges),
    Father: ('الأباء الكهنة', DatabaseService.I.metadata.fathers),
    Hobby: ('الهوايات', DatabaseService.I.metadata.hobbies),
    Job: ('الوظائف', DatabaseService.I.metadata.jobs),
    PersonState: ('الحالات الروحية', DatabaseService.I.metadata.personStates),
    PersonType: ('الحالات الاجتماعية', DatabaseService.I.metadata.personTypes),
    Qualification: ('المؤهلات', DatabaseService.I.metadata.qualifications),
    School: ('المدارس', DatabaseService.I.metadata.schools),
    ShammasLevel: ('رتب الشموسية', DatabaseService.I.metadata.shammasLevels),
    StudyYear: ('السنوات الدراسية', DatabaseService.I.metadata.studyYears),
    Tag: ('الشارات', DatabaseService.I.metadata.tags),
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
      ('id', 'id'),
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

  static const _fieldsMetadataByName = {
    'order': FieldMetadata(type: int),
    'color': FieldMetadata(type: Color),
    'geolocation': FieldMetadata(type: Point),
    'bounds': FieldMetadata(type: Polygon),
    'line': FieldMetadata(type: Line),
    'validity': FieldMetadata(type: DateTimeRange),
    'adminOn': FieldMetadata(type: AdminOnData),
    'person': FieldMetadata(type: Person),
    'user': FieldMetadata(type: User),
    'nextService': FieldMetadata(type: Service),
    'service': FieldMetadata(type: Service),
    'shammasLevel': FieldMetadata(type: ShammasLevel),
    'school': FieldMetadata(type: School),
    'college': FieldMetadata(type: College),
    'church': FieldMetadata(type: Church),
    'father': FieldMetadata(type: Father),
    'job': FieldMetadata(type: Job),
    'qualification': FieldMetadata(type: Qualification),
    'personType': FieldMetadata(type: PersonType),
    'state': FieldMetadata(type: PersonState),
    'adminUsers': FieldMetadata(type: User, isList: true),
    'areas': FieldMetadata(type: Area, isList: true),
    'streets': FieldMetadata(type: Street, isList: true),
    'stores': FieldMetadata(type: Store, isList: true),
    'families': FieldMetadata(type: Family, isList: true),
    'children': FieldMetadata(type: Family, isList: true),
    'parents': FieldMetadata(type: Family, isList: true),
    'persons': FieldMetadata(type: Person, isList: true),
    'services': FieldMetadata(type: Service, isList: true),
    'classes': FieldMetadata(type: Class, isList: true),
    'groups': FieldMetadata(type: Group, isList: true),
    'permissions': FieldMetadata(type: UserPermission, isList: true),
    'tags': FieldMetadata(type: Tag, isList: true),
    'hobbies': FieldMetadata(type: Hobby, isList: true),
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
        return const FieldMetadata(type: String);

      case 'serviceGender' || 'gender':
      case _ when name.startsWith('is'):
        return const FieldMetadata(type: bool);

      case 'photoUpdatedAt' || 'birthdate':
      case _ when name.startsWith('last'):
        return const FieldMetadata(type: DateTime);

      case 'family' || 'adminFamily':
        return const FieldMetadata(type: Family);

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
