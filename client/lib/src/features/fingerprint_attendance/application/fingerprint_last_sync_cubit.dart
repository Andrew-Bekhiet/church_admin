import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FingerprintLastSyncCubit extends Cubit<FingerprintLastSyncState> {
  late final StreamSubscription<DateTime?> _subscription;

  FingerprintLastSyncCubit({FingerprintSyncStatusDAO? fingerprintSyncStatus})
    : super(const FingerprintLastSyncLoading()) {
    _subscription =
        (fingerprintSyncStatus ?? DatabaseService.I.fingerprintSyncStatus)
            .streamLastSyncedAtOrNullIfNeverSynced()
            .listen(
              (lastSyncedAt) => emit(
                lastSyncedAt == null
                    ? const FingerprintLastSyncNever()
                    : FingerprintLastSyncKnown(lastSyncedAt),
              ),
              onError: (Object error) =>
                  emit(FingerprintLastSyncUnavailable(error)),
            );
  }

  @override
  Future<void> close() async {
    await _subscription.cancel();

    return super.close();
  }
}
