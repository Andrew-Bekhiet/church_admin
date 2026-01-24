import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:csv/csv.dart';
import 'package:googleapis/storage/v1.dart' as storage;
import 'package:googleapis/storagetransfer/v1.dart' as transfer;
import 'package:googleapis_auth/auth_io.dart';
import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:path/path.dart' as p;

final logger = Logger(
  printer: PrettyPrinter(
    methodCount: 0,
    noBoxingByDefault: true,
    dateTimeFormat: DateTimeFormat.dateAndTime,
  ),
);

Future<void> migratePhotos({
  required File churchDataServiceAccount,
  required File meetingHelperServiceAccount,
  required File churchAdminServiceAccount,
  Directory? exportDir,
}) async {
  logger.i('Starting photo migration using Storage Transfer Service...');

  final httpClient = http.Client();

  try {
    // Get service account credentials for the destination (ChurchAdmin)
    final churchAdminCredentials = ServiceAccountCredentials.fromJson(
      await churchAdminServiceAccount.readAsString(),
    );

    final accessCredentials =
        await obtainAccessCredentialsViaServiceAccount(churchAdminCredentials, [
          transfer.StoragetransferApi.cloudPlatformScope,
          storage.StorageApi.cloudPlatformScope,
        ], httpClient);

    final authClient = authenticatedClient(httpClient, accessCredentials);
    final transferApi = transfer.StoragetransferApi(authClient);

    // Get bucket names and project IDs
    final churchDataBucket = await _getBucketName(churchDataServiceAccount);
    final meetingHelperBucket = await _getBucketName(
      meetingHelperServiceAccount,
    );
    final churchAdminBucket = await _getBucketName(churchAdminServiceAccount);
    final projectId = await _getProjectId(churchAdminServiceAccount);

    logger.i('ChurchData bucket: $churchDataBucket');
    logger.i('MeetingHelper bucket: $meetingHelperBucket');
    logger.i('ChurchAdmin bucket: $churchAdminBucket');
    logger.i('Project ID: $projectId');

    // Migrate from ChurchData
    final areasPhotosJob = await _createTransferJob(
      transferApi: transferApi,
      projectId: projectId,
      sourceBucket: churchDataBucket,
      destBucket: churchAdminBucket,
      pathPrefix: 'AreasPhotos/',
      description: 'Transfer AreasPhotos from ChurchData to ChurchAdmin',
    );

    final personsPhotosJob1 = await _createTransferJob(
      transferApi: transferApi,
      projectId: projectId,
      sourceBucket: churchDataBucket,
      destBucket: churchAdminBucket,
      pathPrefix: 'PersonsPhotos/',
      description: 'Transfer PersonsPhotos from ChurchData to ChurchAdmin',
    );

    // Migrate from MeetingHelper
    final servicesPhotosJob = await _createTransferJob(
      transferApi: transferApi,
      projectId: projectId,
      sourceBucket: meetingHelperBucket,
      destBucket: churchAdminBucket,
      pathPrefix: 'ServicesPhotos/',
      description: 'Transfer ServicesPhotos from MeetingHelper to ChurchAdmin',
    );

    final classesPhotosJob = await _createTransferJob(
      transferApi: transferApi,
      projectId: projectId,
      sourceBucket: meetingHelperBucket,
      destBucket: churchAdminBucket,
      pathPrefix: 'ClassesPhotos/',
      description: 'Transfer ClassesPhotos from MeetingHelper to ChurchAdmin',
    );

    final personsPhotosJob2 = await _createTransferJob(
      transferApi: transferApi,
      projectId: projectId,
      sourceBucket: meetingHelperBucket,
      destBucket: churchAdminBucket,
      pathPrefix: 'PersonsPhotos/',
      description: 'Transfer PersonsPhotos from MeetingHelper to ChurchAdmin',
    );

    final jobNames = [
      areasPhotosJob,
      personsPhotosJob1,
      servicesPhotosJob,
      classesPhotosJob,
      personsPhotosJob2,
    ].whereType<String>().toList();

    logger.i('All transfer jobs created successfully!');
    logger.i('Waiting for transfer jobs to complete...');

    // Wait for all transfer jobs to complete
    await _waitForTransferJobsToComplete(
      transferApi: transferApi,
      projectId: projectId,
      jobNames: jobNames,
    );

    logger.i('All transfer jobs completed successfully!');
    // If export directory is provided, rename photos after transfers complete
    if (exportDir != null) {
      logger.i('Starting photo renaming with ID mapping...');
      final storageApi = storage.StorageApi(authClient);
      await _renamePhotosWithIdMappingInternal(
        storageApi: storageApi,
        churchAdminServiceAccount: churchAdminServiceAccount,
        exportDir: exportDir,
      );
    }
  } finally {
    httpClient.close();
  }
}

Future<void> renamePhotosWithIdMapping({
  required File churchAdminServiceAccount,
  required Directory exportDir,
}) async {
  logger.i('Starting photo renaming with ID mapping...');

  final httpClient = http.Client();

  try {
    // Get service account credentials for ChurchAdmin
    final churchAdminCredentials = ServiceAccountCredentials.fromJson(
      await churchAdminServiceAccount.readAsString(),
    );

    final accessCredentials =
        await obtainAccessCredentialsViaServiceAccount(churchAdminCredentials, [
          storage.StorageApi.cloudPlatformScope,
          transfer.StoragetransferApi.cloudPlatformScope,
        ], httpClient);

    final authClient = authenticatedClient(httpClient, accessCredentials);
    final storageApi = storage.StorageApi(authClient);

    await _renamePhotosWithIdMappingInternal(
      storageApi: storageApi,
      churchAdminServiceAccount: churchAdminServiceAccount,
      exportDir: exportDir,
    );
  } finally {
    httpClient.close();
  }
}

Future<void> _renamePhotosWithIdMappingInternal({
  required storage.StorageApi storageApi,
  required File churchAdminServiceAccount,
  required Directory exportDir,
}) async {
  final churchAdminBucket = await _getBucketName(churchAdminServiceAccount);

  logger.i('ChurchAdmin bucket: $churchAdminBucket');

  // Read ID mappings
  final areasMapping = await _readIdMapping(
    File(p.join(exportDir.path, 'areas_ids_mapping.csv')),
  );
  final personsMapping = await _readIdMapping(
    File(p.join(exportDir.path, 'persons_ids_mapping.csv')),
  );
  final servicesMapping = await _readIdMapping(
    File(p.join(exportDir.path, 'services_ids_mapping.csv')),
  );
  final classesMapping = await _readIdMapping(
    File(p.join(exportDir.path, 'classes_ids_mapping.csv')),
  );

  logger.i('Loaded ID mappings:');
  logger.i('  Areas: ${areasMapping.length}');
  logger.i('  Persons: ${personsMapping.length}');
  logger.i('  Services: ${servicesMapping.length}');
  logger.i('  Classes: ${classesMapping.length}');

  // Rename files in each directory and move them to new directory structure
  final areasIds = await _renameFilesInDirectory(
    storageApi: storageApi,
    bucket: churchAdminBucket,
    directoryPrefix: 'AreasPhotos/',
    newDirectoryPrefix: 'areas/',
    idMapping: areasMapping,
    description: 'AreasPhotos',
  );

  final personsIds = await _renameFilesInDirectory(
    storageApi: storageApi,
    bucket: churchAdminBucket,
    directoryPrefix: 'PersonsPhotos/',
    newDirectoryPrefix: 'persons/',
    idMapping: personsMapping,
    description: 'PersonsPhotos',
  );

  final servicesIds = await _renameFilesInDirectory(
    storageApi: storageApi,
    bucket: churchAdminBucket,
    directoryPrefix: 'ServicesPhotos/',
    newDirectoryPrefix: 'services/',
    idMapping: servicesMapping,
    description: 'ServicesPhotos',
  );

  final classesIds = await _renameFilesInDirectory(
    storageApi: storageApi,
    bucket: churchAdminBucket,
    directoryPrefix: 'ClassesPhotos/',
    newDirectoryPrefix: 'classes/',
    idMapping: classesMapping,
    description: 'ClassesPhotos',
  );

  // Write successful IDs to files
  await _writeIdsToFile(
    exportDir: exportDir,
    filename: 'areas_with_photos.txt',
    ids: areasIds,
  );

  await _writeIdsToFile(
    exportDir: exportDir,
    filename: 'persons_with_photos.txt',
    ids: personsIds,
  );

  await _writeIdsToFile(
    exportDir: exportDir,
    filename: 'services_with_photos.txt',
    ids: servicesIds,
  );

  await _writeIdsToFile(
    exportDir: exportDir,
    filename: 'classes_with_photos.txt',
    ids: classesIds,
  );

  logger.i('All photos renamed successfully!');
}

Future<Map<String, String>> _readIdMapping(File mappingFile) async {
  final mapping = <String, String>{};

  if (!await mappingFile.exists()) {
    logger.w('ID mapping file does not exist: ${mappingFile.path}');
    return mapping;
  }

  try {
    final content = await mappingFile.readAsString();
    final rows = const CsvToListConverter().convert(content);

    if (rows.isEmpty) {
      logger.w('ID mapping file is empty: ${mappingFile.path}');
      return mapping;
    }

    // Skip header row
    for (var i = 1; i < rows.length; i++) {
      final row = rows[i];
      if (row.length >= 2) {
        final originalId = row[0].toString();
        final newId = row[1].toString();
        mapping[originalId] = newId;
      }
    }

    logger.i('Loaded ${mapping.length} ID mappings from ${mappingFile.path}');
  } catch (e) {
    logger.e('Failed to read ID mapping file ${mappingFile.path}: $e');
    rethrow;
  }

  return mapping;
}

Future<List<String>> _renameFilesInDirectory({
  required storage.StorageApi storageApi,
  required String bucket,
  required String directoryPrefix,
  required String newDirectoryPrefix,
  required Map<String, String> idMapping,
  required String description,
}) async {
  logger.i(
    'Renaming files in $description and moving to $newDirectoryPrefix...',
  );

  // List all objects in the directory
  final objects = <storage.Object>[];
  String? pageToken;

  do {
    final listResponse = await storageApi.objects.list(
      bucket,
      prefix: directoryPrefix,
      pageToken: pageToken,
    );

    objects.addAll(listResponse.items ?? []);
    pageToken = listResponse.nextPageToken;
  } while (pageToken != null);

  logger.i('Found ${objects.length} objects in $directoryPrefix');

  if (objects.isEmpty) {
    logger.w('No objects found in $directoryPrefix, skipping...');
    return [];
  }

  // Create rename operations (copy + delete)
  final renameOperations = <({String oldName, String newName})>[];

  for (final object in objects) {
    if (object.name == null) continue;

    final fileName = p.basename(object.name!);

    // Extract original ID from filename (assuming format: {id}.{ext} or {id}_something.{ext})
    final originalId = _extractIdFromFileName(fileName);

    if (originalId == null) {
      logger.w('Could not extract ID from filename: $fileName');
      continue;
    }

    final newId = idMapping[originalId];
    if (newId == null) {
      logger.w('No mapping found for ID: $originalId in file: $fileName');
      continue;
    }

    // Construct new filename with new ID and new directory
    final newFileName = fileName.replaceFirst(originalId, newId);
    final newPath = p
        .join(newDirectoryPrefix, newFileName)
        .replaceAll('\\', '/');

    if (object.name != newPath) {
      renameOperations.add((oldName: object.name!, newName: newPath));
    }
  }

  logger.i('Found ${renameOperations.length} files to rename in $description');

  // Collect all successfully moved IDs
  final successfulIds = <String>[];

  // Process renames in batches of 500
  const batchSize = 500;
  for (var i = 0; i < renameOperations.length; i += batchSize) {
    final batch = renameOperations.skip(i).take(batchSize).toList();
    final batchNumber = (i ~/ batchSize) + 1;
    final totalBatches = (renameOperations.length / batchSize).ceil();

    logger.i(
      'Processing batch $batchNumber/$totalBatches (${batch.length} files) for $description...',
    );

    final batchIds = await _processRenameBatch(
      storageApi: storageApi,
      bucket: bucket,
      operations: batch,
    );

    successfulIds.addAll(batchIds);
  }

  logger.i(
    'Finished renaming files in $description. Successfully moved ${successfulIds.length} files.',
  );

  return successfulIds;
}

String? _extractIdFromFileName(String fileName) {
  final nameWithoutExt = p.basenameWithoutExtension(fileName);

  return nameWithoutExt.isEmpty ? null : nameWithoutExt;
}

Future<List<String>> _processRenameBatch({
  required storage.StorageApi storageApi,
  required String bucket,
  required List<({String oldName, String newName})> operations,
}) async {
  // Process all rename operations concurrently using Future.wait
  final results = await Future.wait(
    operations.map((operation) async {
      try {
        // Move object to new name (moves the object, no need to delete source)
        await storageApi.objects.move(
          bucket,
          operation.oldName,
          operation.newName,
        );
        // Extract ID from newName (e.g., "AreasPhotos/{id}.ext" -> "{id}")
        final fileName = p.basename(operation.newName);
        final id = _extractIdFromFileName(fileName);
        return id;
      } catch (e) {
        // Handle case where file doesn't exist
        if (e.toString().contains('No such object') ||
            e.toString().contains('404')) {
          logger.w('Object does not exist, skipping: ${operation.oldName}');
          return null;
        }
        logger.e(
          'Failed to rename ${operation.oldName} to ${operation.newName}: $e',
        );
        // Continue with next operation instead of failing entire batch
        return null;
      }
    }),
  );

  // Return list of successfully moved IDs (filter out nulls)
  return results.whereType<String>().toList();
}

Future<void> _writeIdsToFile({
  required Directory exportDir,
  required String filename,
  required List<String> ids,
}) async {
  if (ids.isEmpty) {
    logger.w('No IDs to write to $filename');
    return;
  }

  final file = File(p.join(exportDir.path, filename));
  await file.writeAsString(ids.join('\n'));

  logger.i('Wrote ${ids.length} IDs to $filename');
}

Future<String> _getBucketName(File serviceAccountFile) async {
  final jsonString = await serviceAccountFile.readAsString();
  final json = jsonDecode(jsonString) as Map<String, dynamic>;
  final projectId = json['project_id'] as String;
  return '$projectId.appspot.com';
}

Future<String> _getProjectId(File serviceAccountFile) async {
  final jsonString = await serviceAccountFile.readAsString();
  final json = jsonDecode(jsonString) as Map<String, dynamic>;
  return json['project_id'] as String;
}

Future<String?> _createTransferJob({
  required transfer.StoragetransferApi transferApi,
  required String projectId,
  required String sourceBucket,
  required String destBucket,
  required String pathPrefix,
  required String description,
}) async {
  logger.i('Creating transfer job: $description');
  logger.i('  From: gs://$sourceBucket/$pathPrefix');
  logger.i('  To: gs://$destBucket/$pathPrefix');

  try {
    final transferJob = transfer.TransferJob()
      ..description = description
      ..status = 'ENABLED'
      ..projectId = projectId
      ..transferSpec = (transfer.TransferSpec()
        ..gcsDataSource = (transfer.GcsData()..bucketName = sourceBucket)
        ..gcsDataSink = (transfer.GcsData()..bucketName = destBucket)
        ..objectConditions = (transfer.ObjectConditions()
          ..includePrefixes = [pathPrefix])
        ..transferOptions = (transfer.TransferOptions()
          ..overwriteObjectsAlreadyExistingInSink = false
          ..deleteObjectsUniqueInSink = false));

    final result = await transferApi.transferJobs.create(transferJob);

    logger.i('Transfer job created: ${result.name}');

    // Run the job immediately
    if (result.name != null) {
      await transferApi.transferJobs.run(
        transfer.RunTransferJobRequest()..projectId = projectId,
        result.name!,
      );
      logger.i('Transfer job started: ${result.name}');
      return result.name;
    }
    return null;
  } catch (e) {
    logger.e('Failed to create transfer job for $pathPrefix: $e');
    rethrow;
  }
}

Future<void> _waitForTransferJobsToComplete({
  required transfer.StoragetransferApi transferApi,
  required String projectId,
  required List<String> jobNames,
}) async {
  if (jobNames.isEmpty) {
    logger.w('No transfer jobs to wait for');
    return;
  }

  logger.i('Waiting for ${jobNames.length} transfer job(s) to complete...');

  final completedJobs = <String>{};
  const checkInterval = Duration(seconds: 15);
  const maxWaitTime = Duration(hours: 24);
  final startTime = DateTime.now();

  while (completedJobs.length < jobNames.length) {
    // Check if we've exceeded max wait time
    if (DateTime.now().difference(startTime) > maxWaitTime) {
      logger.e('Timeout waiting for transfer jobs to complete');
      throw TimeoutException(
        'Transfer jobs did not complete within ${maxWaitTime.inHours} hours',
      );
    }

    // Check status of each job
    for (final jobName in jobNames) {
      if (completedJobs.contains(jobName)) {
        continue;
      }

      try {
        // List transfer operations for this job, must also provide projectId in filter
        final jobNameFilter =
            '{"projectId":"$projectId","jobNames":["$jobName"]}';
        final operations = await transferApi.transferOperations.list(
          'transferOperations',
          jobNameFilter,
        );

        if (operations.operations == null || operations.operations!.isEmpty) {
          // No operations yet, job might not have started
          logger.d('No operations found for job: $jobName');
          continue;
        }

        // Check if all operations are complete
        bool allComplete = true;
        bool hasError = false;

        for (final operation in operations.operations!) {
          if (operation.done != true) {
            allComplete = false;
            break;
          }

          // Check for errors
          if (operation.error != null) {
            hasError = true;
            logger.e(
              'Transfer operation ${operation.name} failed: ${operation.error}',
            );
          }
        }

        if (hasError) {
          logger.e('Transfer job $jobName has errors');
          completedJobs.add(jobName); // Mark as done to stop checking
        } else if (allComplete) {
          logger.i('Transfer job $jobName completed successfully');
          completedJobs.add(jobName);
        } else {
          // Get progress info
          final inProgressOps = operations.operations!
              .where((op) => op.done != true)
              .length;
          logger.d(
            'Job $jobName: $inProgressOps operation(s) still in progress',
          );
        }
      } catch (e) {
        logger.w('Error checking status of job $jobName: $e');
        // Continue checking other jobs
      }
    }

    // If not all jobs are complete, wait before checking again
    if (completedJobs.length < jobNames.length) {
      final remaining = jobNames.length - completedJobs.length;
      logger.i(
        'Waiting for $remaining job(s) to complete. Checking again in ${checkInterval.inSeconds} seconds...',
      );
      await Future.delayed(checkInterval);
    }
  }

  logger.i('All transfer jobs completed successfully!');
}
