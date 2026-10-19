import 'package:church_admin/church_admin.dart';

enum HomeMode {
  sundaySchool([
    HomeTab.summary,
    HomeTab.services,
    HomeTab.sundaySchoolPersons,
  ]),
  churchData([
    HomeTab.summary,
    HomeTab.areas,
    HomeTab.streets,
    HomeTab.families,
    HomeTab.stores,
    HomeTab.churchDataPersons,
  ]);

  final List<HomeTab> tabs;

  const HomeMode(this.tabs);
}
