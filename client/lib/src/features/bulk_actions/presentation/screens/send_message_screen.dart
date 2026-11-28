import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class SendMessageScreen extends StatefulWidget {
  static final MessageTemplate defaultTemplate = MessageTemplate(
    text:
        'كل سنة وانت طيب يا '
        '${MessageTemplate.tokenOf(PersonMessageFields.firstName)} 🎂',
    fields: [PersonMessageFields.firstName],
  );

  final Set<Person> persons;
  final SendMessageBulkAction action;

  const SendMessageScreen({
    required this.persons,
    required this.action,
    super.key,
  });

  @override
  State<SendMessageScreen> createState() => _SendMessageScreenState();
}

class _SendMessageScreenState extends State<SendMessageScreen> {
  late final MessageRunCubit _cubit = MessageRunCubit(
    persons: widget.persons,
    personsDAO: DatabaseService.I.persons,
    channel: widget.action.createChannel(),
    analyticsService: AnalyticsService.I,
    loggingService: LoggingService.I,
    userPreferencesService: UserPreferencesService.I,
  );

  late final MessageTemplateEditingController _templateController =
      MessageTemplateEditingController(
        template: _cubit.withLastSentTextOr(
          SendMessageScreen.defaultTemplate,
        ),
      );

  late final AppLifecycleListener _appLifecycleListener;

  @override
  void initState() {
    super.initState();

    _appLifecycleListener = AppLifecycleListener(
      onShow: _cubit.returnFromChat,
      onHide: _cubit.cancelNextChatCountdown,
    );
    unawaited(_cubit.load());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        appBar: AppBar(title: Text(widget.action.label)),
        body: BlocBuilder<MessageRunCubit, MessageRunState>(
          builder: (context, state) => switch (state) {
            MessageRunLoading() => const Center(
              child: CircularProgressIndicator(),
            ),

            MessageRunLoadFailure() => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                children: [
                  const Text('تعذر تحميل أرقام الهواتف'),
                  FilledButton(
                    onPressed: () => unawaited(_cubit.load()),
                    child: const Text('إعادة المحاولة'),
                  ),
                ],
              ),
            ),

            final MessageRunComposing composing => MessageComposeView(
              state: composing,
              templateController: _templateController,
            ),

            final MessageRunSending sending => MessageQueueView(
              state: sending,
              channelIcon: widget.action.icon,
              onMarkNotSent: _cubit.markNotSentIfSent,
              onCancelNextChatCountdown: _cubit.cancelNextChatCountdown,
              onSelectPhone: _cubit.selectPhone,
              onEditMessage: _cubit.editCurrentMessageUnlessChatOpened,
              onStop: _cubit.stop,
              onSkip: _cubit.skipCurrent,
              onOpenChat: () => unawaited(_cubit.openCurrentChat()),
              onReturnFromChat: _cubit.returnFromChat,
            ),

            final MessageRunPassEnded passEnded => MessageSummaryView(
              state: passEnded,
              onResume: _cubit.resume,
              onMarkNotSent: _cubit.markNotSentIfSent,
            ),
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _appLifecycleListener.dispose();
    _templateController.dispose();
    unawaited(_cubit.close());

    super.dispose();
  }
}
