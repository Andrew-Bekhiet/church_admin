import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class HomeModeCards extends StatelessWidget {
  final HomeMode selectedMode;
  final ValueChanged<HomeMode> onModeSelected;

  const HomeModeCards({
    required this.selectedMode,
    required this.onModeSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicHeight(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (final mode in HomeMode.values)
            Expanded(
              child: HomeModeCard(
                key: HomeModeCardsKeys.modeKeyFor(mode),
                mode: mode,
                isSelected: mode == selectedMode,
                onTap: () => onModeSelected(mode),
              ),
            ),
        ],
      ),
    );
  }
}

abstract final class HomeModeCardsKeys {
  static const Key churchDataButtonKey = Key('church_data_button');
  static const Key sundaySchoolButtonKey = Key('sunday_school_button');

  static Key modeKeyFor(HomeMode mode) => switch (mode) {
    HomeMode.churchData => churchDataButtonKey,
    HomeMode.sundaySchool => sundaySchoolButtonKey,
  };
}
