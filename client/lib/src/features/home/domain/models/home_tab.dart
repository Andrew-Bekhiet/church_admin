import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

enum HomeTab {
  summary(label: 'الرئيسية', icon: Symbols.home),
  services(
    label: 'الخدمات',
    icon: Symbols.volunteer_activism,
    createIcon: Symbols.add,
    createLabel: 'إضافة خدمة',
    entity: Service,
    defaultListType: ViewableObjectListType.grid,
  ),
  sundaySchoolPersons(
    label: 'المخدومين',
    icon: Symbols.person,
    createIcon: Symbols.person_add,
    createLabel: 'إضافة مخدوم',
    entity: Person,
  ),
  areas(
    label: 'المناطق',
    icon: Symbols.pin_drop,
    createIcon: Symbols.add_location,
    createLabel: 'إضافة منطقة',
    entity: Area,
  ),
  streets(
    label: 'الشوارع',
    icon: Symbols.road,
    createIcon: Symbols.add_road,
    createLabel: 'إضافة شارع',
    entity: Street,
  ),
  families(
    label: 'العائلات',
    icon: Symbols.diversity_1,
    createIcon: Symbols.group_add,
    createLabel: 'إضافة عائلة',
    entity: Family,
  ),
  stores(
    label: 'المتاجر',
    icon: Symbols.store,
    createIcon: Symbols.add_business,
    createLabel: 'إضافة متجر',
    entity: Store,
  ),
  churchDataPersons(
    label: 'الأفراد',
    icon: Symbols.person,
    createIcon: Symbols.person_add,
    createLabel: 'إضافة فرد',
    entity: Person,
  );

  final String label;
  final IconData icon;
  final IconData? createIcon;
  final String? createLabel;
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
    this.createLabel,
    this.entity,
    this.defaultListType,
  });
}
