import 'dart:async';

import 'package:bloc_test/bloc_test.dart';
import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockFingerprintSyncStatusDAO extends Mock
    implements FingerprintSyncStatusDAO {}

void main() {
  group('FingerprintLastSyncCubit', () {
    late _MockFingerprintSyncStatusDAO dao;
    late StreamController<DateTime?> serverLastSyncedAt;

    FingerprintLastSyncCubit cubit() =>
        FingerprintLastSyncCubit(fingerprintSyncStatus: dao);

    setUp(() {
      dao = _MockFingerprintSyncStatusDAO();
      serverLastSyncedAt = StreamController();
      addTearDown(serverLastSyncedAt.close);
      when(
        dao.streamLastSyncedAtOrNullIfNeverSynced,
      ).thenAnswer((_) => serverLastSyncedAt.stream);
    });

    blocTest<FingerprintLastSyncCubit, FingerprintLastSyncState>(
      'is loading until the server answers',
      build: cubit,
      verify: (cubit) =>
          expect(cubit.state, const FingerprintLastSyncLoading()),
    );

    blocTest<FingerprintLastSyncCubit, FingerprintLastSyncState>(
      'reports never synced when the server holds no sync status',
      build: cubit,
      act: (_) => serverLastSyncedAt.add(null),
      expect: () => [const FingerprintLastSyncNever()],
    );

    blocTest<FingerprintLastSyncCubit, FingerprintLastSyncState>(
      'reports the time the server last synced at',
      build: cubit,
      act: (_) => serverLastSyncedAt.add(DateTime.utc(2026, 11, 20, 7, 5)),
      expect: () => [
        FingerprintLastSyncKnown(DateTime.utc(2026, 11, 20, 7, 5)),
      ],
    );

    blocTest<FingerprintLastSyncCubit, FingerprintLastSyncState>(
      'reports the sync status as unavailable when reading it fails',
      build: cubit,
      act: (_) => serverLastSyncedAt.addError(StateError('offline')),
      expect: () => [isA<FingerprintLastSyncUnavailable>()],
    );

    blocTest<FingerprintLastSyncCubit, FingerprintLastSyncState>(
      'moves from never synced to the time once the server reports one',
      build: cubit,
      act: (_) {
        serverLastSyncedAt
          ..add(null)
          ..add(DateTime.utc(2026, 11, 20, 7, 5));
      },
      expect: () => [
        const FingerprintLastSyncNever(),
        FingerprintLastSyncKnown(DateTime.utc(2026, 11, 20, 7, 5)),
      ],
    );

    blocTest<FingerprintLastSyncCubit, FingerprintLastSyncState>(
      'stops listening to the server when closed',
      build: cubit,
      act: (cubit) => cubit.close(),
      verify: (_) => expect(serverLastSyncedAt.hasListener, isFalse),
    );
  });
}
