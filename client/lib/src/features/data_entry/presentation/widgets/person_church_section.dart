import 'package:church_admin/church_admin.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import 'package:material_ui/material_ui.dart';

class PersonChurchSection extends StatelessWidget {
  final Person person;

  const PersonChurchSection({required this.person, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: const Text('الكنيسة'),
          subtitle: Text(person.church?.name ?? ''),
        ),
        ListTile(
          title: const Text('أب الاعتراف'),
          subtitle: Text(person.father?.name ?? ''),
        ),
        ListTile(
          title: const Text('خادم؟'),
          subtitle: Text(person.isServant ? 'نعم' : 'لا'),
          trailing: person.isServant && person.user?.email != null
              ? IconButton(
                  key: PersonChurchSectionKeys.linkedUserButton,
                  onPressed: () => ViewUserRoute(
                    uid: person.user!.uid,
                    user: person.user,
                  ).push(context),
                  icon: const Icon(Symbols.manage_accounts),
                  tooltip: 'عرض بيانات الخادم',
                )
              : null,
        ),
        if (person.isServant)
          ListTile(
            title: const Text('الكنيسة التي يخدم بها'),
            subtitle: Text(person.servingChurch?.name ?? ''),
          ),
        if (person.isServant)
          ListTile(
            title: const Text('نوع الخدمة'),
            subtitle: Text(person.serviceType ?? ''),
          ),
        if (person.gender.canBeShammas)
          ListTile(
            title: const Text('شماس؟'),
            subtitle: Text(person.isShammas ? 'نعم' : 'لا'),
          ),
        if (person.gender.canBeShammas && person.isShammas)
          ListTile(
            title: const Text('رتبة الشموسية'),
            subtitle: Text(person.shammasLevel?.name ?? ''),
          ),
        ListTile(
          title: const Text('الحالة الروحية'),
          subtitle: Text(person.state?.name ?? ''),
          trailing: person.state?.color == null
              ? null
              : ClipRRect(
                  borderRadius: const BorderRadius.all(
                    Radius.circular(10),
                  ),
                  child: Container(
                    width: 50,
                    height: 50,
                    color: person.state!.color,
                  ),
                ),
        ),
      ],
    );
  }
}

abstract final class PersonChurchSectionKeys {
  static const Key linkedUserButton = ValueKey('Person Linked User Button Key');
}
