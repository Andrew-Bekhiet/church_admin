import 'dart:ui';

import 'package:church_admin/church_admin.dart';

import '../../../../../fakes/fake_ash_tables_link.dart';

abstract final class PlaceFixtures {
  static const Point tahrirSquare = Point(30.044, 31.235);

  static const Polygon shubraBounds = Polygon([
    Point(30.1, 31.2),
    Point(30.1, 31.3),
    Point(30.2, 31.3),
  ]);

  static const Line nileCorniche = Line([Point(30.0, 31.2), Point(30.1, 31.3)]);

  static final DateTime visitTime = DateTime(2026, 3, 4, 5, 6, 7);

  static const User editor = User(uid: 'user-1', name: 'مينا جرجس');

  static final Area shubra = Area(
    id: 'area-1',
    name: 'شبرا',
    color: const Color(0xFF2196F3),
    lastVisit: LastRecordedByInfo(time: visitTime, user: editor),
    lastEdit: LastRecordedByInfo(time: visitTime, user: editor),
    adminUsers: const [editor],
  );

  static const Area newCairo = Area(
    id: 'area-2',
    name: 'التجمع',
    color: Color(0xFF4CAF50),
  );

  static const Area heliopolis = Area(id: 'area-3', name: 'مصر الجديدة');

  static const Street nile = Street(
    id: 'street-1',
    name: 'كورنيش النيل',
    color: Color(0xFF2196F3),
    line: nileCorniche,
  );

  static const Street ramses = Street(
    id: 'street-2',
    name: 'رمسيس',
    color: Color(0xFFF44336),
  );

  static const Street corniche = Street(id: 'street-3', name: 'الكورنيش');

  static const Family servants = Family(id: 'family-1', name: 'خدام القديس');

  static const Address bakeryAddress = Address(
    area: newCairo,
    street: ramses,
    district: District(id: 'district-1', name: 'الزيتون'),
    houseCode: '12',
    substreetName: 'الشيخ',
    storeyNumber: 2,
    apartmentNumber: 5,
    specialLandmark: 'أمام المسجد',
    geolocation: tahrirSquare,
  );

  static const Store bookshop = Store(
    id: 'store-1',
    name: 'مكتبة المحبة',
    color: Color(0xFF2196F3),
    familyId: 'family-1',
  );

  static const Store bakery = Store(id: 'store-2', name: 'مخبز الأمل');

  static const Store pharmacy = Store(id: 'store-3', name: 'صيدلية الشفاء');

  static FakeAshTable areasTable({Iterable<Area>? rows}) => FakeAshTable(
    typename: 'Area',
    listRoot: 'areas',
    rows: rows ?? [shubra, newCairo, heliopolis],
    commandOnlyKeys: {'lastVisit'},
  );

  static FakeAshTable streetsTable({Iterable<Street>? rows}) => FakeAshTable(
    typename: 'Street',
    listRoot: 'streets',
    rows: rows ?? [nile, ramses, corniche],
    commandOnlyKeys: {'areas', 'lastVisit'},
  );

  static FakeAshTable storesTable({Iterable<Store>? rows}) => FakeAshTable(
    typename: 'Store',
    listRoot: 'stores',
    rows: rows ?? [bookshop, bakery, pharmacy],
    commandOnlyKeys: {'address'},
  );
}
