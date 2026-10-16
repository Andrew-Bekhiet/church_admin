import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

abstract final class HomePagesConfig {
  static const summaryPage = HomePageConfig(
    label: 'الرئيسية',
    pageIcon: Symbols.home,
  );

  static final services = HomePageConfig<Service>(
    label: 'الخدمات',
    pageIcon: Symbols.volunteer_activism,
    fabIcon: const Icon(Symbols.add),
    listType: ViewableObjectListType.grid,
    fabOnTapLocation: const EditServiceRoute().location,
  );
  static final sundaySchoolPersons = HomePageConfig<Person>(
    label: 'المخدومين',
    pageIcon: Symbols.person,
    fabIcon: const Icon(Symbols.person_add),
    fabOnTapLocation: const EditPersonRoute().location,
  );

  static final areas = HomePageConfig<Area>(
    label: 'المناطق',
    fabIcon: const Icon(Symbols.add_location),
    pageIcon: Symbols.pin_drop,
    fabOnTapLocation: const EditAreaRoute().location,
  );
  static final streets = HomePageConfig<Street>(
    label: 'الشوراع',
    fabIcon: const Icon(Symbols.add_road),
    pageIcon: Symbols.road,
    fabOnTapLocation: const EditStreetRoute().location,
  );
  static final families = HomePageConfig<Family>(
    label: 'العائلات',
    fabIcon: const Icon(Symbols.group_add),
    pageIcon: Symbols.diversity_1,
    fabOnTapLocation: const EditFamilyRoute().location,
  );
  static final stores = HomePageConfig<Store>(
    label: 'المتاجر',
    fabIcon: const Icon(Symbols.add_business),
    pageIcon: Symbols.store,
    fabOnTapLocation: const EditStoreRoute().location,
  );
  static final churchDataPersons = HomePageConfig<Person>(
    label: 'الأفراد',
    pageIcon: Symbols.person,
    fabIcon: const Icon(Symbols.person_add),
    fabOnTapLocation: const EditPersonRoute().location,
  );
}
