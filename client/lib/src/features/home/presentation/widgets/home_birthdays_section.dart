import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class HomeBirthdaysSection extends StatelessWidget {
  final HomeBirthdays? birthdays;
  final ValueChanged<HomeBirthdays> onTap;

  const HomeBirthdaysSection({
    required this.birthdays,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedSize(
      duration: const Duration(milliseconds: 400),
      alignment: Alignment.topCenter,
      curve: Easing.standard,
      child: switch (birthdays) {
        final HomeBirthdays birthdays when !birthdays.isEmpty =>
          HomeBirthdaysCard(
            key: HomeBirthdaysSectionKeys.birthdaysButtonKey,
            birthdays: birthdays,
            onTap: () => onTap(birthdays),
          ),
        _ => const SizedBox.shrink(),
      },
    );
  }
}

abstract final class HomeBirthdaysSectionKeys {
  static const Key birthdaysButtonKey = Key('birthdays_button');
}
