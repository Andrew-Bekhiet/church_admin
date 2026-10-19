import 'dart:ui';

import 'package:church_admin/church_admin.dart';

import '../../../../../fakes/fake_ash_tables_link.dart';

/// One metadata lookup as its DAO serves it: [listed] holds three records in
/// the order the DAO lists them, and [created] the record a create answers
/// for a given server id, with the server's create presets applied.
class LookupCase<T extends ViewableWithID> {
  static final List<LookupCase<ViewableWithID>> all = [
    LookupCase<Church>(
      typename: 'Church',
      listRoot: 'churches',
      dao: (metadata) => metadata.churches,
      creatable: (metadata) => metadata.churches,
      listed: const [
        Church(id: 'church-1', name: 'الأنبا أنطونيوس', isHidden: false),
        Church(id: 'church-2', name: 'العذراء', isHidden: false),
        Church(id: 'church-3', name: 'مار جرجس', isHidden: false),
      ],
      createdPresets: {'isHidden': true},
      created: (id) => Church(id: id, name: 'مار مرقس'),
    ),
    LookupCase<College>(
      typename: 'College',
      listRoot: 'colleges',
      dao: (metadata) => metadata.colleges,
      creatable: (metadata) => metadata.colleges,
      listed: const [
        College(id: 'college-1', name: 'الآداب'),
        College(id: 'college-2', name: 'التجارة'),
        College(id: 'college-3', name: 'الهندسة'),
      ],
      created: (id) =>
          College(id: id, name: 'الطب', universityId: 'university-1'),
    ),
    LookupCase<District>(
      typename: 'District',
      listRoot: 'districts',
      dao: (metadata) => metadata.districts,
      creatable: (metadata) => metadata.districts,
      listed: const [
        District(id: 'district-1', name: 'شبرا'),
        District(id: 'district-2', name: 'مصر الجديدة'),
        District(id: 'district-3', name: 'المعادي'),
      ],
      created: (id) => District(id: id, name: 'الزيتون'),
    ),
    LookupCase<Father>(
      typename: 'Father',
      listRoot: 'fathers',
      dao: (metadata) => metadata.fathers,
      creatable: (metadata) => metadata.fathers,
      listed: const [
        Father(id: 'father-1', name: 'أبونا بولس', isHidden: false),
        Father(id: 'father-2', name: 'أبونا داود', isHidden: false),
        Father(id: 'father-3', name: 'أبونا مينا', isHidden: false),
      ],
      createdPresets: {'isHidden': true},
      created: (id) =>
          Father(id: id, name: 'أبونا يوحنا', churchId: 'church-1'),
    ),
    LookupCase<Hobby>(
      typename: 'Hobby',
      listRoot: 'hobbies',
      dao: (metadata) => metadata.hobbies,
      creatable: (metadata) => metadata.hobbies,
      listed: const [
        Hobby(id: 'hobby-1', name: 'القراءة'),
        Hobby(id: 'hobby-2', name: 'الرسم', color: Color(0xFF2196F3)),
        Hobby(id: 'hobby-3', name: 'الموسيقى'),
      ],
      created: (id) =>
          Hobby(id: id, name: 'الكرة', color: const Color(0xFF4CAF50)),
    ),
    LookupCase<Job>(
      typename: 'Job',
      listRoot: 'jobs',
      dao: (metadata) => metadata.jobs,
      creatable: (metadata) => metadata.jobs,
      listed: const [
        Job(id: 'job-1', name: 'مهندس'),
        Job(id: 'job-2', name: 'طبيب'),
        Job(id: 'job-3', name: 'محاسب'),
      ],
      created: (id) => Job(id: id, name: 'مدرس'),
    ),
    LookupCase<PersonState>(
      typename: 'PersonState',
      listRoot: 'personStates',
      dao: (metadata) => metadata.personStates,
      listed: const [
        PersonState(id: 'state-1', name: 'منتظم', color: Color(0xFF4CAF50)),
        PersonState(id: 'state-2', name: 'متابعة', color: Color(0xFFFFC107)),
        PersonState(id: 'state-3', name: 'منقطع', color: Color(0xFFF44336)),
      ],
    ),
    LookupCase<PersonType>(
      typename: 'PersonType',
      listRoot: 'personTypes',
      dao: (metadata) => metadata.personTypes,
      creatable: (metadata) => metadata.personTypes,
      listed: const [
        PersonType(id: 'type-1', name: 'ابن', order: 1, isHidden: false),
        PersonType(id: 'type-2', name: 'ابنة', order: 2, isHidden: false),
        PersonType(id: 'type-3', name: 'جد', order: 3, isHidden: false),
      ],
      createdPresets: {'order': 0, 'isFamilyAdmin': false, 'isHidden': true},
      created: (id) => PersonType(id: id, name: 'حفيد'),
    ),
    LookupCase<Qualification>(
      typename: 'Qualification',
      listRoot: 'qualifications',
      dao: (metadata) => metadata.qualifications,
      creatable: (metadata) => metadata.qualifications,
      listed: const [
        Qualification(id: 'qualification-1', name: 'بكالوريوس'),
        Qualification(id: 'qualification-2', name: 'ماجستير'),
        Qualification(id: 'qualification-3', name: 'دكتوراه'),
      ],
      created: (id) => Qualification(id: id, name: 'دبلوم'),
    ),
    LookupCase<School>(
      typename: 'School',
      listRoot: 'schools',
      dao: (metadata) => metadata.schools,
      creatable: (metadata) => metadata.schools,
      listed: const [
        School(id: 'school-1', name: 'الفرير'),
        School(id: 'school-2', name: 'الراهبات'),
        School(id: 'school-3', name: 'الإصلاح'),
      ],
      created: (id) => School(id: id, name: 'النصر'),
    ),
    LookupCase<ShammasLevel>(
      typename: 'ShammasLevel',
      listRoot: 'shammasLevels',
      dao: (metadata) => metadata.shammasLevels,
      listed: const [
        ShammasLevel(id: 'level-1', order: 1, name: 'إبصالتس'),
        ShammasLevel(id: 'level-2', order: 2, name: 'أغنسطس'),
        ShammasLevel(id: 'level-3', order: 3, name: 'إيبودياكون'),
      ],
    ),
    LookupCase<StudyYear>(
      typename: 'StudyYear',
      listRoot: 'studyYears',
      dao: (metadata) => metadata.studyYears,
      listed: [
        StudyYear(order: 1, name: 'أولى ابتدائي'),
        StudyYear(order: 2, name: 'ثانية ابتدائي'),
        StudyYear(order: 3, name: 'ثالثة ابتدائي'),
      ],
    ),
    LookupCase<Tag>(
      typename: 'Tag',
      listRoot: 'tags',
      dao: (metadata) => metadata.tags,
      creatable: (metadata) => metadata.tags,
      listed: const [
        Tag(id: 'tag-1', name: 'خادم', color: Color(0xFF9C27B0)),
        Tag(id: 'tag-2', name: 'مرنم'),
        Tag(id: 'tag-3', name: 'كشافة'),
      ],
      created: (id) =>
          Tag(id: id, name: 'جديد', color: const Color(0xFF00BCD4)),
    ),
  ];

  final String typename;
  final String listRoot;
  final StreamableDAO<T> Function(MetadataDAO metadata) dao;
  final CreatableDAO<T> Function(MetadataDAO metadata)? creatable;
  final List<T> listed;
  final Json createdPresets;
  final T Function(String id)? created;

  const LookupCase({
    required this.typename,
    required this.listRoot,
    required this.dao,
    required this.listed,
    this.creatable,
    this.createdPresets = const {},
    this.created,
  });

  FakeAshTable table({required int initialRows}) => FakeAshTable(
    typename: typename,
    listRoot: listRoot,
    rows: listed.take(initialRows).cast<ToJson>(),
    createdPresets: createdPresets,
  );
}
