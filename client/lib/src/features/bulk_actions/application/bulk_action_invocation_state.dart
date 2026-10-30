import 'package:equatable/equatable.dart';

sealed class BulkActionInvocationState with Equatable {
  const BulkActionInvocationState();
}

final class BulkActionIdle extends BulkActionInvocationState {
  @override
  List<Object?> get props => const [];

  const BulkActionIdle();
}

final class BulkActionRunning extends BulkActionInvocationState {
  final String actionKey;

  @override
  List<Object?> get props => [actionKey];

  const BulkActionRunning(this.actionKey);
}
