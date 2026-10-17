import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:material_ui/material_ui.dart';

class HomeDailyTextSheet extends StatelessWidget {
  static const double _maxHeightFraction = 0.7;

  final HomeDailyDataType type;

  const HomeDailyTextSheet({required this.type, super.key});

  static Future<void> show(BuildContext context, HomeDailyDataType type) {
    final homeCubit = context.read<HomeCubit>();

    return showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      showDragHandle: true,
      useSafeArea: true,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height * _maxHeightFraction,
      ),
      builder: (context) => BlocProvider.value(
        value: homeCubit,
        child: HomeDailyTextSheet(type: type),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = TextTheme.of(context);
    final homeCubit = context.read<HomeCubit>();

    return BlocSelector<HomeCubit, HomeState, String?>(
      selector: (state) => state.dailyData?.select(type),
      builder: (context, text) {
        if (text == null) return const SizedBox.shrink();

        return Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 16,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 8,
              children: [
                Icon(type.icon),
                Text(type.title, style: textTheme.titleLarge),
              ],
            ),
            Flexible(
              child: SingleChildScrollView(
                padding: const EdgeInsetsDirectional.symmetric(horizontal: 24),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: textTheme.displaySmall,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                spacing: 12,
                children: [
                  FilledButton.tonalIcon(
                    key: HomeDailyTextSheetKeys.shareButtonKey,
                    onPressed: () => unawaited(ShareService.I.shareText(text)),
                    icon: const Icon(Symbols.share),
                    label: const Text('مشاركة'),
                  ),
                  if (type.canShowAnother)
                    FilledButton.icon(
                      key: HomeDailyTextSheetKeys.newItemButtonKey,
                      onPressed: () => homeCubit.showAnotherDailyText(type),
                      icon: const Icon(Symbols.refresh),
                      label: Text('${type.label} أخرى'),
                    ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}

abstract final class HomeDailyTextSheetKeys {
  static const Key shareButtonKey = Key('share_button');
  static const Key newItemButtonKey = Key('new_item_button');
}
