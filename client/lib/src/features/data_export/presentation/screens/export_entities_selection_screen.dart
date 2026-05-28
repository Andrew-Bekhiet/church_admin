import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:church_admin/src/features/data_export/presentation/widgets/export_completed_body.dart';
import 'package:church_admin/src/features/data_export/presentation/widgets/export_in_progress_body.dart';
import 'package:church_admin/src/features/data_export/presentation/widgets/export_list_saved_files_body.dart';
import 'package:church_admin/src/features/data_export/presentation/widgets/export_loaded_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class ExportEntitiesSelectionScreen extends StatefulWidget {
  const ExportEntitiesSelectionScreen({super.key});

  @override
  State<ExportEntitiesSelectionScreen> createState() =>
      _ExportEntitiesSelectionScreenState();
}

class _ExportEntitiesSelectionScreenState
    extends State<ExportEntitiesSelectionScreen> {
  final DataExportCubit _cubit = DataExportCubit();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DataExportCubit, DataExportState>(
      bloc: _cubit,
      listenWhen: (_, current) => current is DataExportStateListener,
      listener: (context, state) => switch (state) {
        DataExportStateBuilder() => null,
        DataExportMessage(:final message) =>
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(message)),
          ),
        DataExportException(:final error) => unawaited(
          showDialog(
            context: context,
            builder: (context) => CAErrorDialog(exception: error),
          ),
        ),
      },
      buildWhen: (_, current) => current is DataExportStateBuilder,
      builder: (context, state) {
        final theme = Theme.of(context);
        final colorScheme = theme.colorScheme;

        return DefaultTabController(
          length: 4,
          child: Scaffold(
            appBar: switch (state) {
              DataExportListSavedFiles() => AppBar(
                centerTitle: false,
                toolbarHeight: 84,
                titleSpacing: 0,
                title: Padding(
                  padding: const EdgeInsetsDirectional.only(end: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    spacing: 4,
                    children: [
                      Text(
                        'ملفات التصدير المحفوظة',
                        style: theme.textTheme.titleLarge,
                      ),
                      Text(
                        'اضغط على ملف لفتحه، أو اضغط على بدء عملية تصدير جديدة',
                        style: theme.textTheme.bodySmall?.copyWith(
                          color: colorScheme.onSurfaceVariant,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                scrolledUnderElevation: 2,
              ),
              DataExportSelectingObjects() => AppBar(
                title: TitleSearchField(
                  searchStream: _cubit.searchController,
                  title: const Text('تصدير البيانات'),
                ),
                bottom: TabBar(
                  tabs: [
                    Tab(
                      icon: Icon(
                        ViewableObjectService.I.getDefaultIconFor<Area>(),
                      ),
                      text: 'المناطق',
                    ),
                    Tab(
                      icon: Icon(
                        ViewableObjectService.I.getDefaultIconFor<Service>(),
                      ),
                      text: 'الخدمات',
                    ),
                    Tab(
                      icon: Icon(
                        ViewableObjectService.I.getDefaultIconFor<Class>(),
                      ),
                      text: 'الفصول',
                    ),
                    Tab(
                      icon: Icon(
                        ViewableObjectService.I.getDefaultIconFor<Group>(),
                      ),
                      text: 'المجموعات',
                    ),
                  ],
                ),
              ),
              _ => null,
            },
            body: switch (state) {
              DataExportStateListener() => null,
              DataExportLoading() => const Center(
                child: CircularProgressIndicator(),
              ),
              DataExportListSavedFiles(:final files) =>
                ExportListSavedFilesBody(
                  files: files,
                  onTap: _cubit.openExportedFile,
                  onNewExport: _cubit.switchToSelectingObjects,
                ),
              DataExportSelectingObjects(
                :final areasController,
                :final servicesController,
                :final classesController,
                :final groupsController,
              ) =>
                ExportLoadedBody(
                  areasController: areasController,
                  servicesController: servicesController,
                  classesController: classesController,
                  groupsController: groupsController,
                ),
              DataExportInProgress(:final progress) => ExportInProgressBody(
                progress: progress,
              ),
              DataExportCompleted(:final file) => ExportCompletedBody(
                onDownload: () => _cubit.openExportedFile(file),
                onDismiss: _cubit.switchToSavedFiles,
              ),
            },
            floatingActionButton: switch (state) {
              DataExportListSavedFiles() => FloatingActionButton.extended(
                onPressed: _cubit.switchToSelectingObjects,
                icon: const Icon(Symbols.upload),
                label: const Text('بدء عملية تصدير جديدة'),
              ),
              DataExportSelectingObjects() => FloatingActionButton.extended(
                onPressed: _cubit.startExport,
                icon: const Icon(Symbols.play_arrow),
                label: const Text('بدء التصدير'),
              ),
              _ => null,
            },
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    unawaited(_cubit.close());
    super.dispose();
  }
}
