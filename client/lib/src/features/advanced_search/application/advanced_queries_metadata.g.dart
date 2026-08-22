// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: member_ordering

part of 'advanced_queries_metadata.dart';

// **************************************************************************
// QueryableRegisteryGenerator
// **************************************************************************

abstract final class _$AdvancedQueriesMetadata {
  final attendanceRecord = QueryableType<AttendanceRecord>(
    name: 'AttendanceRecord',
    label: 'حضور الاجتماع',
    fieldsMetadata: AttendanceRecordFields().allFields,
    fieldsMetadataByName: AttendanceRecordFields().allFieldsByName,
    fromJson: AttendanceRecord.fromJson,
  );

  final meeting = QueryableType<Meeting>(
    name: 'Meeting',
    label: 'اجتماع',
    fieldsMetadata: MeetingFields().allFields,
    fieldsMetadataByName: MeetingFields().allFieldsByName,
    fromJson: Meeting.fromJson,
  );

  final aggregateData = QueryableType<AggregateData>(
    name: 'AggregateData',
    label: 'الإحصائيات',
    fieldsMetadata: AggregateDataFields().allFields,
    fieldsMetadataByName: AggregateDataFields().allFieldsByName,
    fromJson: AggregateData.fromJson,
  );

  final historyAggregateData = QueryableType<HistoryAggregateData>(
    name: 'HistoryAggregateData',
    label: 'HistoryAggregateData',
    fieldsMetadata: HistoryAggregateDataFields().allFields,
    fieldsMetadataByName: HistoryAggregateDataFields().allFieldsByName,
    fromJson: HistoryAggregateData.fromJson,
  );

  final address = QueryableType<Address>(
    name: 'Address',
    label: 'العنوان',
    fieldsMetadata: AddressFields().allFields,
    fieldsMetadataByName: AddressFields().allFieldsByName,
    fromJson: Address.fromJson,
  );

  final area = QueryableType<Area>(
    name: 'Area',
    label: 'المناطق',
    fieldsMetadata: AreaFields().allFields,
    fieldsMetadataByName: AreaFields().allFieldsByName,
    fromJson: Area.fromJson,
  );

  final church = QueryableType<Church>(
    name: 'Church',
    label: 'الكنائس',
    fieldsMetadata: ChurchFields().allFields,
    fieldsMetadataByName: ChurchFields().allFieldsByName,
    fromJson: Church.fromJson,
  );

  final $class = QueryableType<Class>(
    name: 'Class',
    label: 'الفصول',
    fieldsMetadata: ClassFields().allFields,
    fieldsMetadataByName: ClassFields().allFieldsByName,
    fromJson: Class.fromJson,
  );

  final college = QueryableType<College>(
    name: 'College',
    label: 'الكليات',
    fieldsMetadata: CollegeFields().allFields,
    fieldsMetadataByName: CollegeFields().allFieldsByName,
    fromJson: College.fromJson,
  );

  final district = QueryableType<District>(
    name: 'District',
    label: 'الأحياء السكنية',
    fieldsMetadata: DistrictFields().allFields,
    fieldsMetadataByName: DistrictFields().allFieldsByName,
    fromJson: District.fromJson,
  );

  final family = QueryableType<Family>(
    name: 'Family',
    label: 'العائلات',
    fieldsMetadata: FamilyFields().allFields,
    fieldsMetadataByName: FamilyFields().allFieldsByName,
    fromJson: Family.fromJson,
  );

  final father = QueryableType<Father>(
    name: 'Father',
    label: 'أباء الاعتراف',
    fieldsMetadata: FatherFields().allFields,
    fieldsMetadataByName: FatherFields().allFieldsByName,
    fromJson: Father.fromJson,
  );

  final group = QueryableType<Group>(
    name: 'Group',
    label: 'المجموعات',
    fieldsMetadata: GroupFields().allFields,
    fieldsMetadataByName: GroupFields().allFieldsByName,
    fromJson: Group.fromJson,
  );

  final hobby = QueryableType<Hobby>(
    name: 'Hobby',
    label: 'الهوايات',
    fieldsMetadata: HobbyFields().allFields,
    fieldsMetadataByName: HobbyFields().allFieldsByName,
    fromJson: Hobby.fromJson,
  );

  final job = QueryableType<Job>(
    name: 'Job',
    label: 'الوظائف',
    fieldsMetadata: JobFields().allFields,
    fieldsMetadataByName: JobFields().allFieldsByName,
    fromJson: Job.fromJson,
  );

  final martialStatus = QueryableType<MartialStatus>.enum$(
    name: 'MartialStatus',
    label: 'الحالات الاجتماعية',
    byName: MartialStatus.byName,
    enumValues: MartialStatus.values,
  );

  final person = QueryableType<Person>(
    name: 'Person',
    label: 'المخدومين',
    fieldsMetadata: PersonFields().allFields,
    fieldsMetadataByName: PersonFields().allFieldsByName,
    fromJson: Person.fromJson,
  );

  final personState = QueryableType<PersonState>(
    name: 'PersonState',
    label: 'الحالات الروحية',
    fieldsMetadata: PersonStateFields().allFields,
    fieldsMetadataByName: PersonStateFields().allFieldsByName,
    fromJson: PersonState.fromJson,
  );

  final personType = QueryableType<PersonType>(
    name: 'PersonType',
    label: 'نوع الفرد في العائلة',
    fieldsMetadata: PersonTypeFields().allFields,
    fieldsMetadataByName: PersonTypeFields().allFieldsByName,
    fromJson: PersonType.fromJson,
  );

  final qualification = QueryableType<Qualification>(
    name: 'Qualification',
    label: 'المؤهلات',
    fieldsMetadata: QualificationFields().allFields,
    fieldsMetadataByName: QualificationFields().allFieldsByName,
    fromJson: Qualification.fromJson,
  );

  final areasStreets = QueryableType<AreasStreets>(
    name: 'AreasStreets',
    label: 'المنطقة',
    fieldsMetadata: AreasStreetsFields().allFields,
    fieldsMetadataByName: AreasStreetsFields().allFieldsByName,
    fromJson: AreasStreets.fromJson,
  );

  final classesPersons = QueryableType<ClassesPersons>(
    name: 'ClassesPersons',
    label: 'فصول المخدوم',
    fieldsMetadata: ClassesPersonsFields().allFields,
    fieldsMetadataByName: ClassesPersonsFields().allFieldsByName,
    fromJson: ClassesPersons.fromJson,
  );

  final familiesFamilies = QueryableType<FamiliesFamilies>(
    name: 'FamiliesFamilies',
    label: 'العائلات',
    fieldsMetadata: FamiliesFamiliesFields().allFields,
    fieldsMetadataByName: FamiliesFamiliesFields().allFieldsByName,
    fromJson: FamiliesFamilies.fromJson,
  );

  final personsGroups = QueryableType<PersonsGroups>(
    name: 'PersonsGroups',
    label: 'مجموعات المخدوم',
    fieldsMetadata: PersonsGroupsFields().allFields,
    fieldsMetadataByName: PersonsGroupsFields().allFieldsByName,
    fromJson: PersonsGroups.fromJson,
  );

  final personsHobbies = QueryableType<PersonsHobbies>(
    name: 'PersonsHobbies',
    label: 'هوايات المخدوم',
    fieldsMetadata: PersonsHobbiesFields().allFields,
    fieldsMetadataByName: PersonsHobbiesFields().allFieldsByName,
    fromJson: PersonsHobbies.fromJson,
  );

  final personsServices = QueryableType<PersonsServices>(
    name: 'PersonsServices',
    label: 'خدمات المخدوم',
    fieldsMetadata: PersonsServicesFields().allFields,
    fieldsMetadataByName: PersonsServicesFields().allFieldsByName,
    fromJson: PersonsServices.fromJson,
  );

  final personsTags = QueryableType<PersonsTags>(
    name: 'PersonsTags',
    label: 'شارات المخدوم',
    fieldsMetadata: PersonsTagsFields().allFields,
    fieldsMetadataByName: PersonsTagsFields().allFieldsByName,
    fromJson: PersonsTags.fromJson,
  );

  final school = QueryableType<School>(
    name: 'School',
    label: 'المدارس',
    fieldsMetadata: SchoolFields().allFields,
    fieldsMetadataByName: SchoolFields().allFieldsByName,
    fromJson: School.fromJson,
  );

  final service = QueryableType<Service>(
    name: 'Service',
    label: 'الخدمات',
    fieldsMetadata: ServiceFields().allFields,
    fieldsMetadataByName: ServiceFields().allFieldsByName,
    fromJson: Service.fromJson,
  );

  final shammasLevel = QueryableType<ShammasLevel>(
    name: 'ShammasLevel',
    label: 'رتب الشموسية',
    fieldsMetadata: ShammasLevelFields().allFields,
    fieldsMetadataByName: ShammasLevelFields().allFieldsByName,
    fromJson: ShammasLevel.fromJson,
  );

  final store = QueryableType<Store>(
    name: 'Store',
    label: 'المتاجر',
    fieldsMetadata: StoreFields().allFields,
    fieldsMetadataByName: StoreFields().allFieldsByName,
    fromJson: Store.fromJson,
  );

  final street = QueryableType<Street>(
    name: 'Street',
    label: 'الشوارع',
    fieldsMetadata: StreetFields().allFields,
    fieldsMetadataByName: StreetFields().allFieldsByName,
    fromJson: Street.fromJson,
  );

  final studyYear = QueryableType<StudyYear>(
    name: 'StudyYear',
    label: 'السنوات الدراسية',
    fieldsMetadata: StudyYearFields().allFields,
    fieldsMetadataByName: StudyYearFields().allFieldsByName,
    fromJson: StudyYear.fromJson,
  );

  final tag = QueryableType<Tag>(
    name: 'Tag',
    label: 'الشارات',
    fieldsMetadata: TagFields().allFields,
    fieldsMetadataByName: TagFields().allFieldsByName,
    fromJson: Tag.fromJson,
  );

  final workStatus = QueryableType<WorkStatus>.enum$(
    name: 'WorkStatus',
    label: 'حالات العمل',
    byName: WorkStatus.byName,
    enumValues: WorkStatus.values,
  );

  final lastRecordedByInfo = QueryableType<LastRecordedByInfo>(
    name: 'LastRecordedByInfo',
    label: 'بيانات آخر تسجيل',
    fieldsMetadata: LastRecordedByInfoFields().allFields,
    fieldsMetadataByName: LastRecordedByInfoFields().allFieldsByName,
    fromJson: LastRecordedByInfo.fromJson,
  );

  final adminOnData = QueryableType<AdminOnData>(
    name: 'AdminOnData',
    label: 'صلاحيات الإدارة على البيانات',
    fieldsMetadata: AdminOnDataFields().allFields,
    fieldsMetadataByName: AdminOnDataFields().allFieldsByName,
    fromJson: AdminOnData.fromJson,
  );

  final usersPermissionsRel = QueryableType<UsersPermissionsRel>(
    name: 'UsersPermissionsRel',
    label: 'صلاحيات المستخدم',
    fieldsMetadata: UsersPermissionsRelFields().allFields,
    fieldsMetadataByName: UsersPermissionsRelFields().allFieldsByName,
    fromJson: UsersPermissionsRel.fromJson,
  );

  final user = QueryableType<User>(
    name: 'User',
    label: 'الخدام',
    fieldsMetadata: UserFields().allFields,
    fieldsMetadataByName: UserFields().allFieldsByName,
    fromJson: User.fromJson,
  );

  final userPermission = QueryableType<UserPermission>.enum$(
    name: 'UserPermission',
    label: 'صلاحيات المستخدمين',
    byName: UserPermission.byName,
    enumValues: UserPermission.values,
  );

  late final allQueryables = <QueryableType<Object>>[
    attendanceRecord,
    meeting,
    aggregateData,
    historyAggregateData,
    address,
    area,
    church,
    $class,
    college,
    district,
    family,
    father,
    group,
    hobby,
    job,
    martialStatus,
    person,
    personState,
    personType,
    qualification,
    areasStreets,
    classesPersons,
    familiesFamilies,
    personsGroups,
    personsHobbies,
    personsServices,
    personsTags,
    school,
    service,
    shammasLevel,
    store,
    street,
    studyYear,
    tag,
    workStatus,
    lastRecordedByInfo,
    adminOnData,
    usersPermissionsRel,
    user,
    userPermission,
  ];
  late final allQueryablesByType = <Type, QueryableType<Object>>{
    AttendanceRecord: attendanceRecord,
    Meeting: meeting,
    AggregateData: aggregateData,
    HistoryAggregateData: historyAggregateData,
    Address: address,
    Area: area,
    Church: church,
    Class: $class,
    College: college,
    District: district,
    Family: family,
    Father: father,
    Group: group,
    Hobby: hobby,
    Job: job,
    MartialStatus: martialStatus,
    Person: person,
    PersonState: personState,
    PersonType: personType,
    Qualification: qualification,
    AreasStreets: areasStreets,
    ClassesPersons: classesPersons,
    FamiliesFamilies: familiesFamilies,
    PersonsGroups: personsGroups,
    PersonsHobbies: personsHobbies,
    PersonsServices: personsServices,
    PersonsTags: personsTags,
    School: school,
    Service: service,
    ShammasLevel: shammasLevel,
    Store: store,
    Street: street,
    StudyYear: studyYear,
    Tag: tag,
    WorkStatus: workStatus,
    LastRecordedByInfo: lastRecordedByInfo,
    AdminOnData: adminOnData,
    UsersPermissionsRel: usersPermissionsRel,
    User: user,
    UserPermission: userPermission,
  };
  _$AdvancedQueriesMetadata();
}
