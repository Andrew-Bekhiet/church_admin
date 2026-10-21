import 'package:church_admin/church_admin.dart';
import 'package:material_ui/material_ui.dart';

class HomeDailyTextCards extends StatelessWidget {
  final HomeDailyData? dailyData;
  final ValueChanged<HomeDailyDataType> onTap;

  const HomeDailyTextCards({
    required this.dailyData,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = ColorScheme.of(context);

    if (dailyData case final dailyData?) {
      return Card.outlined(
        color: colorScheme.surfaceContainerLow,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: BorderSide(color: colorScheme.primary),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            for (final type in HomeDailyDataType.values)
              SessionReplayUnmask(
                child: HomeDailyTextSection(
                  key: HomeDailyTextCardsKeys.dailyTextKeyFor(type),
                  type: type,
                  text: dailyData.select(type),
                  onTap: () => onTap(type),
                ),
              ),
          ],
        ),
      );
    }

    return const Center(child: CircularProgressIndicator());
  }
}

abstract final class HomeDailyTextCardsKeys {
  static const Key verseButtonKey = Key('verse_button');
  static const Key sneksarButtonKey = Key('sneksar_button');
  static const Key sayingButtonKey = Key('saying_button');

  static Key dailyTextKeyFor(HomeDailyDataType type) => switch (type) {
    HomeDailyDataType.verse => verseButtonKey,
    HomeDailyDataType.sneksar => sneksarButtonKey,
    HomeDailyDataType.saying => sayingButtonKey,
  };
}
