import 'package:church_admin/church_admin.dart';
import 'package:churchdata_core/churchdata_core.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoryProperty<T extends LastRecordedByInfo> extends StatelessWidget {
  const HistoryProperty({
    required this.name,
    required this.getHistoryStream,
    this.onRecordNow,
    this.showTime = true,
    this.value,
    super.key,
  });

  final String name;
  final bool showTime;
  final DateTime? value;
  final DelegatingPaginatableStream<T> Function() getHistoryStream;
  final void Function()? onRecordNow;

  DateFormat get dateFormat =>
      DateFormat('yyyy/M/d' + (showTime ? '   h:m a' : ''), 'ar-EG');

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(name),
      subtitle: Row(
        children: <Widget>[
          Expanded(
            child: Text(value?.toDurationString() ?? ''),
          ),
          Text(
            value != null ? dateFormat.format(value!) : '',
            style: Theme.of(context).textTheme.overline,
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            tooltip: 'السجل',
            icon: const Icon(Icons.history),
            onPressed: () async {
              await showDialog(
                context: context,
                builder: (context) => Dialog(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  child: DataObjectListViewBase<void, T>(
                    controller: ListControllerBase(
                      objectsPaginatableStream: getHistoryStream(),
                    ),
                    autoDisposeController: true,
                    itemBuilder: (
                      o, {
                      onLongPress,
                      onTap,
                      subtitle,
                      trailing,
                    }) =>
                        ViewableObjectWidget(
                      o.user ??
                          User(
                            name: o.name,
                            uid: o.recordedBy ?? '',
                          ),
                      title: Text(dateFormat.format(o.time)),
                      subtitle: Text(o.user?.name ?? ''),
                      onLongPress: () => onLongPress?.call(o),
                      onTap: () => onTap?.call(o),
                      trailing: trailing,
                    ),
                  ),
                ),
              );
            },
          ),
          if (onRecordNow != null)
            IconButton(
              onPressed: onRecordNow,
              icon: const Icon(Icons.task_alt),
              tooltip: 'تسجيل $name',
            ),
        ],
      ),
    );
  }
}
