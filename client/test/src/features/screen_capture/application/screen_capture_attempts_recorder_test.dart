import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:mocktail/mocktail.dart';
import 'package:rxdart/rxdart.dart';

import '../../../fakes/erroring_graphql_link.dart';
import '../../../fakes/fake_logging_service.dart';
import '../../../fakes/mock_auth_bloc.dart';
import '../../../fakes/recording_graphql_link.dart';

void main() {
  const signedInUser = User(uid: 'uid', name: 'servant');

  late StreamController<ScreenCaptureKind> attempts;
  late BehaviorSubject<bool> connectivity;
  late MockAuthBloc authBloc;
  late FakeLoggingService logging;
  late StreamSubscription<void> recording;

  ScreenCaptureAttemptsRecorder recorderOver(Link link) {
    return ScreenCaptureAttemptsRecorder(
      attemptEventsStream: attempts.stream,
      authBloc: authBloc,
      screenCaptureAttempts: ScreenCaptureAttemptsDAO(
        db: DatabaseService(
          DBGraphQLClient(
            connectivityStream: connectivity,
            link: link,
            cache: GraphQLCache(),
            autoChangeFetchPolicy: false,
          ),
        ),
      ),
      logging: logging,
    );
  }

  Future<void> captureScreen(ScreenCaptureKind kind) async {
    attempts.add(kind);
    await pumpEventQueue();
  }

  setUp(() {
    attempts = StreamController();
    connectivity = BehaviorSubject.seeded(true);
    authBloc = MockAuthBloc();
    logging = FakeLoggingService();
    when(() => authBloc.currentUserData).thenReturn(signedInUser);
  });

  tearDown(() async {
    await recording.cancel();
    await attempts.close();
    await connectivity.close();
  });

  test('a screenshot while signed in is stored', () async {
    final link = RecordingGraphQLLink({
      'insertOperationsScreenCaptureAttempts': {'affectedRows': 1},
    });
    recording = recorderOver(link).recordAttemptsWhileSignedIn();

    await captureScreen(ScreenCaptureKind.screenshot);

    expect(
      link.requests.single.variables,
      {'captureKind': ScreenCaptureKind.screenshot.value},
    );
  });

  test(
    'a capture while signed in is stored even if the user signs out before an '
    'earlier write finishes',
    () async {
      final link = _HeldGraphQLLink({
        'insertOperationsScreenCaptureAttempts': {'affectedRows': 1},
      });
      recording = recorderOver(link).recordAttemptsWhileSignedIn();

      await captureScreen(ScreenCaptureKind.screenshot);
      await captureScreen(ScreenCaptureKind.screenRecording);
      when(() => authBloc.currentUserData).thenReturn(null);
      link.release.complete();
      await pumpEventQueue();

      expect(link.requests, hasLength(2));
    },
  );

  test('a screenshot while signed out is not stored', () async {
    when(() => authBloc.currentUserData).thenReturn(null);
    final link = RecordingGraphQLLink(const {});
    recording = recorderOver(link).recordAttemptsWhileSignedIn();

    await captureScreen(ScreenCaptureKind.screenshot);

    expect(link.requests, isEmpty);
  });

  test(
    'each attempt the server rejects is reported without stopping the recording',
    () async {
      recording = recorderOver(
        ErroringGraphQLLink('rejected'),
      ).recordAttemptsWhileSignedIn();

      await captureScreen(ScreenCaptureKind.screenshot);
      await captureScreen(ScreenCaptureKind.screenRecording);

      expect(logging.reportedErrors, hasLength(2));
    },
  );
}

class _HeldGraphQLLink extends Link {
  final List<Request> requests = [];
  final Map<String, dynamic> data;
  final Completer<void> release = Completer();

  _HeldGraphQLLink(this.data);

  @override
  Stream<Response> request(Request request, [NextLink? forward]) {
    requests.add(request);

    return Stream.fromFuture(
      release.future.then((_) => Response(data: data, response: const {})),
    );
  }
}
