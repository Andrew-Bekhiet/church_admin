import 'package:church_admin/church_admin.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'functions_object_image_info_test.mocks.dart';

@GenerateNiceMocks([MockSpec<FunctionsService>()])
void main() {
  setUp(_setUp);
  tearDown(resetGlobalProviderContainer);

  group(
    'FunctionsObjectImageInfo =>',
    () {
      test(
        'cacheKey',
        () {
          const unit = FunctionsObjectImageInfo('table', 'id');

          expect(unit.cacheKey, 'table/id');
        },
      );

      test(
        'equality',
        () {
          final date = DateTime.now();

          final unit1 = FunctionsObjectImageInfo(
            'smth',
            'idd',
            lastUpdatedTime: date,
          );
          final unit2 = FunctionsObjectImageInfo(
            'smth',
            'idd',
            lastUpdatedTime: date,
          );

          expect(unit1, equals(unit2));
        },
      );

      test(
        'getDownloadUrl',
        () async {
          const unit = FunctionsObjectImageInfo('table', 'id');

          await unit.getDownloadUrl();

          verify(FunctionsService.I.getDownloadUrl('table', 'id'));
        },
      );

      test(
        'getUploadUrl',
        () async {
          const unit = FunctionsObjectImageInfo('table', 'id');

          await unit.getUploadUrl(contentType: 'contentType');

          verify(
            FunctionsService.I
                .getUploadUrl('table', 'id', contentType: 'contentType'),
          );
        },
      );

      test(
        'delete',
        () async {
          const unit = FunctionsObjectImageInfo('table', 'id');

          await unit.delete();

          verify(FunctionsService.I.deletePhoto('table', 'id'));
        },
      );
    },
  );
}

void _setUp() {
  globalProviderContainer = ProviderContainer(
    overrides: [
      functionsServiceProvider.overrideWith((ref) => MockFunctionsService()),
    ],
  );
}
