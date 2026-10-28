import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_ui/material_ui.dart';

class BulkWhatsappMessageScreen extends StatefulWidget {
  final Set<Person> persons;

  const BulkWhatsappMessageScreen({required this.persons, super.key});

  @override
  State<BulkWhatsappMessageScreen> createState() =>
      _BulkWhatsappMessageScreenState();
}

class _BulkWhatsappMessageScreenState extends State<BulkWhatsappMessageScreen> {
  late final BulkWhatsappMessageCubit _cubit = BulkWhatsappMessageCubit(
    persons: widget.persons,
    personsDAO: DatabaseService.I.persons,
    launcherService: LauncherService.I,
    phoneNumberService: PhoneNumberService.I,
    analyticsService: AnalyticsService.I,
  );

  late final PlaceholderTextEditingController _templateController =
      PlaceholderTextEditingController(
        template: BulkWhatsappMessageCubit.defaultTemplate,
      );

  late final AppLifecycleListener _appLifecycleListener;

  @override
  void initState() {
    super.initState();

    _appLifecycleListener = AppLifecycleListener(
      onResume: () => unawaited(_cubit.continueAfterOpenedChat()),
    );
    unawaited(_cubit.load());
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        appBar: AppBar(title: const Text('رسالة واتساب')),
        body: BlocBuilder<BulkWhatsappMessageCubit, BulkWhatsappMessageState>(
          builder: (context, state) => switch (state) {
            BulkWhatsappLoading() => const Center(
              child: CircularProgressIndicator(),
            ),

            BulkWhatsappLoadFailure() => Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: 8,
                children: [
                  const Text('تعذر تحميل أرقام الهواتف'),
                  FilledButton(
                    onPressed: () => unawaited(_cubit.load()),
                    child: const Text('اعادة المحاولة'),
                  ),
                ],
              ),
            ),

            final BulkWhatsappComposing composing => BulkWhatsappComposeView(
              state: composing,
              templateController: _templateController,
            ),

            final BulkWhatsappSending sending => BulkWhatsappQueueView(
              state: sending,
            ),

            final BulkWhatsappFinished finished => BulkWhatsappSummaryView(
              state: finished,
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
