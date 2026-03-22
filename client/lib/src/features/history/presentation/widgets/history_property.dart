import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class HistoryProperty<T extends LastRecordedByInfo> extends StatelessWidget {
  const HistoryProperty({
    required this.name,
    required this.getHistoryListController,
    this.onRecordNow,
    this.showTime = true,
    this.value,
    super.key,
  });

  final String name;
  final bool showTime;
  final DateTime? value;
  final ViewableObjectListController<T> Function() getHistoryListController;
  final void Function()? onRecordNow;

  DateFormat get dateFormat => DateFormat(
    'التاريخ: yyyy/M/d${showTime ? '\nالساعة: h:m a' : ''}',
    'ar-EG',
  );

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        name,
        style: Theme.of(context).textTheme.headlineSmall,
      ),
      subtitle: InkWell(
        onTap: _onHistoryTap(context),
        child: Row(
          spacing: 10,
          children: [
            Expanded(
              child: Text(
                value?.toDurationString() ?? '',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Text(
              value != null ? dateFormat.format(value!) : '',
              style: Theme.of(context).textTheme.labelMedium,
            ),
            if (onRecordNow != null)
              OutlinedButton.icon(
                style: OutlinedButton.styleFrom(
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  side: BorderSide(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                onPressed: onRecordNow,
                icon: const Icon(Symbols.task_alt),
                label: const Text('تحديث الآن'),
              ),
          ],
        ),
      ),
    );
  }

  void Function() _onHistoryTap(BuildContext context) => () async {
    final viewableObjectListController = getHistoryListController();

    await showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          child: ViewableObjectList<T>(
            objectsController: viewableObjectListController,
            itemBuilder:
                (
                  context,
                  o,
                  config,
                ) => ViewableObjectWidget<User>(
                  o.user ??
                      User(
                        name: o.name,
                        uid: o.recordedBy ?? '',
                      ),
                  photo: ImageObjectWidget(
                    o.user ??
                        User(
                          name: o.name,
                          uid: o.recordedBy ?? '',
                        ),
                  ),
                  subtitle: Text(dateFormat.format(o.time)),
                  onLongPress: config?.onLongPress != null
                      ? (_) => config!.onLongPress!(o)
                      : null,
                  onTap: config?.onTap != null
                      ? (_) => config!.onTap!(o)
                      : null,
                  trailing: config?.trailing,
                ),
          ),
        );
      },
    );
    await viewableObjectListController.dispose();
  };
}
