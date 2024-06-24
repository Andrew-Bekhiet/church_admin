import 'package:church_admin/church_admin.dart';
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
            style: Theme.of(context).textTheme.labelSmall,
          ),
        ],
      ),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            tooltip: 'السجل',
            icon: const Icon(Icons.history),
            onPressed: _onHistoryTap(context),
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

  void Function() _onHistoryTap(BuildContext context) => () async {
        final viewableObjectListController = ViewableObjectListController(
          objectsPaginatableStream: getHistoryStream(),
        );
        await showDialog(
          context: context,
          builder: (context) {
            return Dialog(
              backgroundColor: Theme.of(context).scaffoldBackgroundColor,
              child: ViewableObjectList<T>(
                objectsController: viewableObjectListController,
                itemBuilder: (
                  context,
                  o,
                  config,
                ) =>
                    ViewableObjectWidget<User>(
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
                  onTap:
                      config?.onTap != null ? (_) => config!.onTap!(o) : null,
                  trailing: config?.trailing,
                ),
              ),
            );
          },
        );
        await viewableObjectListController.dispose();
      };
}
