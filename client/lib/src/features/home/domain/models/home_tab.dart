import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

enum HomeTab {
  summary(label: 'الرئيسية', icon: Symbols.home),
  services(
    label: 'الخدمات',
    icon: Symbols.volunteer_activism,
    createIcon: Symbols.add,
    entity: Service,
    defaultListType: ViewableObjectListType.grid,
  ),
  sundaySchoolPersons(
    label: 'المخدومين',
    icon: Symbols.person,
    createIcon: Symbols.person_add,
    entity: Person,
  ),
  areas(
    label: 'المناطق',
    icon: Symbols.pin_drop,
    createIcon: Symbols.add_location,
    entity: Area,
  ),
  streets(
    label: 'الشوراع',
    icon: Symbols.road,
    createIcon: Symbols.add_road,
    entity: Street,
  ),
  families(
    label: 'العائلات',
    icon: Symbols.diversity_1,
    createIcon: Symbols.group_add,
    entity: Family,
  ),
  stores(
    label: 'المتاجر',
    icon: Symbols.store,
    createIcon: Symbols.add_business,
    entity: Store,
  ),
  churchDataPersons(
    label: 'الأفراد',
    icon: Symbols.person,
    createIcon: Symbols.person_add,
    entity: Person,
  );

  final String label;
  final IconData icon;
  final IconData? createIcon;
  final Type? entity;
  final ViewableObjectListType? defaultListType;

  String? get createLocation => switch (this) {
    summary => null,
    services => const EditServiceRoute().location,
    sundaySchoolPersons ||
    churchDataPersons => const EditPersonRoute().location,
    areas => const EditAreaRoute().location,
    streets => const EditStreetRoute().location,
    families => const EditFamilyRoute().location,
    stores => const EditStoreRoute().location,
  };

  const HomeTab({
    required this.label,
    required this.icon,
    this.createIcon,
    this.entity,
    this.defaultListType,
  });
}
