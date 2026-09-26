import 'dart:async';

import 'package:church_admin/church_admin.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  static AuthBloc get I => globalProviderContainer.read(authBlocProvider);

  static bool _isSettled(AuthState state) => switch (state) {
    AuthLoading() => false,
    AuthAuthenticated(:final authUser, :final userData) =>
      authUser.hasuraUserId == null || userData != null,
    _ => true,
  };

  final AuthRepository _authRepository;
  final DatabaseService _databaseService;
  final AuthStorage _authStorage;
  final Stream<bool> _connectivityStream;
  final FunctionsService _functionsService;
  final FeatureFlagsRepository _featureFlagsRepository;

  Timer? _refreshTokenTimer;
  Future<void> _localDataUpdates = Future.value();

  bool get isSignedIn => state.unwrapped is AuthAuthenticated;

  bool get isApproved => switch (state.unwrapped) {
    AuthAuthenticated(:final isApproved) => isApproved,
    _ => false,
  };

  AuthUser? get currentUser => switch (state.unwrapped) {
    AuthAuthenticated(:final authUser) => authUser,
    _ => null,
  };

  User? get currentUserData => switch (state.unwrapped) {
    AuthAuthenticated(:final userData) => userData,
    _ => null,
  };

  String? get currentIdToken => switch (state.unwrapped) {
    AuthAuthenticated(:final authUser) => authUser.idToken,
    _ => null,
  };

  Stream<AuthUser?> get userStream =>
      stream.map((_) => currentUser).startWith(currentUser).distinct();

  Stream<User?> get userDataStream =>
      stream.map((_) => currentUserData).startWith(currentUserData).distinct();

  Stream<String?> get idTokenStream =>
      stream.map((_) => currentIdToken).startWith(currentIdToken).distinct();

  Stream<bool> get isSignedInStream =>
      stream.map((_) => isSignedIn).startWith(isSignedIn).distinct();

  Future<void> get loaded => _isSettled(state)
      ? Future.value()
      : stream
            .firstWhere(_isSettled)
            .then<void>((_) => null)
            .timeout(const Duration(seconds: 8), onTimeout: () => null);

  AuthBloc({
    required this._authRepository,
    required this._databaseService,
    required this._authStorage,
    required this._connectivityStream,
    required this._functionsService,
    required this._featureFlagsRepository,
    bool loadCachedUser = true,
  }) : super(const AuthInitial()) {
    on<ListenToSubscriptions>(
      _onListenToSubscriptions,
      transformer: (events, mapper) => events
          .scan(
            (_, event, i) => i == 0
                ? event
                : throw Exception('Already listening to subscriptions'),
            const ListenToSubscriptions(),
          )
          .switchMap(mapper),
    );
    on<SignInWithEmailPassword>(_onSignInWithEmailPassword);
    on<SignUpWithEmailPassword>(_onSignUpWithEmailPassword);
    on<SendPasswordResetEmail>(_onSendPasswordResetEmail);
    on<SignOut>(_onSignOut);
    on<ReloadUser>(_onReloadUser);
    on<ApplyInvitationCode>(_onApplyInvitationCode);
    on<SendEmailVerification>(_onSendEmailVerification);

    add(ListenToSubscriptions(loadCachedUser: loadCachedUser));
  }

  Future<void> _onListenToSubscriptions(
    ListenToSubscriptions event,
    Emitter<AuthState> emit,
  ) async {
    await Future.wait([
      _listenToUserChanges(emit, event),
      _listenToConnectivityChanges(emit),
    ]);
  }

  Future<void> _listenToUserChanges(
    Emitter<AuthState> emit,
    ListenToSubscriptions event,
  ) {
    final liveUserStream = _authRepository.userChanges.switchMap(
      (authUser) {
        if (authUser == null) {
          return Stream.value((null, null));
        }

        final hasuraUserId = authUser.hasuraUserId;
        if (hasuraUserId == null) {
          return Stream.value((authUser, null));
        }

        final userDataStream = _databaseService.users
            .streamSingleById(id: hasuraUserId, fullData: true)
            .map((userData) => (authUser, userData));

        if (state.unwrapped case AuthAuthenticated(userData: User())) {
          return userDataStream;
        }

        return userDataStream.startWith((authUser, null));
      },
    );

    return emit.forEach(
      (event.loadCachedUser ? _loadCachedData() : Future.value((null, null)))
          .asStream()
          .concatWith([liveUserStream])
          .distinct()
          .doOnData((data) {
            final (authUser, userData) = data;

            if (authUser == null) return;

            unawaited(
              _enqueueLocalDataUpdate(() async {
                await _authStorage.writeAuthDataToCache(authUser);
                await _authStorage.writeUserToCache(userData);
              }),
            );
          }),
      onData: (data) {
        final (authUser, userData) = data;

        if (authUser == null) {
          return const AuthUnauthenticated();
        }

        _scheduleTokenRefresh(authUser);

        final state = AuthAuthenticated(authUser: authUser, userData: userData);
        if (!state.isApproved && authUser.emailVerified) _maybeClaimAccount();

        return state;
      },
      onError: (error, stackTrace) => AuthExceptionState(
        exception: error,
        stackTrace: stackTrace,
        previousState: state,
      ),
    );
  }

  Future<void> _enqueueLocalDataUpdate(Future<void> Function() update) {
    final queuedUpdate = _localDataUpdates.then((_) => update());

    _localDataUpdates = queuedUpdate.catchError(
      (Object error, StackTrace stackTrace) => LoggingService.I.exception(
        LogRecord(error: error, stackTrace: stackTrace),
      ),
    );

    return queuedUpdate;
  }

  void _scheduleTokenRefresh(AuthUser authUser) {
    _refreshTokenTimer?.cancel();
    _refreshTokenTimer = Timer(
      _getTokenExpiry(authUser).difference(DateTime.now()),
      _verifySession,
    );
  }

  Future<void> _listenToConnectivityChanges(Emitter<AuthState> emit) {
    return emit.onEach(
      _connectivityStream.distinct().where(
        (isConnected) => isConnected && state is AuthAuthenticated,
      ),
      onData: (_) => unawaited(_verifySession()),
    );
  }

  Future<void> _verifySession() async {
    try {
      await _authRepository.refreshToken();
    } catch (e, stackTrace) {
      switch (e) {
        case SessionRevokedException():
          add(const SignOut());

        case AuthNetworkException() || StateError():
          return;

        default:
          await LoggingService.I.exception(
            LogRecord(error: e, stackTrace: stackTrace),
          );
      }
    }
  }

  DateTime _getTokenExpiry(AuthUser authUser) {
    final claims = authUser.claims;
    final exp = claims['exp'] as int;

    return DateTime.fromMillisecondsSinceEpoch(exp * 1000);
  }

  Future<(AuthUser?, User?)> _loadCachedData() async {
    final authUser = await _authStorage.getAuthDataFromCache();

    if (authUser == null) {
      return (null, null);
    }
    final userData = await _authStorage.getUserFromCache();

    return (authUser, userData);
  }

  Future<void> _onSignInWithEmailPassword(
    SignInWithEmailPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(AuthLoading(previousState: state));

      await _authRepository.signInWithEmailPassword(
        email: event.email,
        password: event.password,
      );

      await _authStorage.saveUserPasswordHash(event.email, event.password);
    } catch (e, stackTrace) {
      emit(
        AuthExceptionState(
          exception: e,
          stackTrace: stackTrace,
          previousState: state,
        ),
      );
    }
  }

  Future<void> _onSignUpWithEmailPassword(
    SignUpWithEmailPassword event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(AuthLoading(previousState: state));

      await _authRepository.signUpWithEmailPassword(
        email: event.email,
        password: event.password,
      );

      await _authStorage.saveUserPasswordHash(event.email, event.password);
      await _authRepository.sendEmailVerification();
    } catch (e, stackTrace) {
      emit(
        AuthExceptionState(
          exception: e,
          stackTrace: stackTrace,
          previousState: state,
        ),
      );
    }
  }

  Future<void> _onSendPasswordResetEmail(
    SendPasswordResetEmail event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final previousState = state;

      emit(AuthLoading(previousState: previousState));

      await _authRepository.sendPasswordResetEmail(email: event.email);

      emit(previousState);
    } catch (e, stackTrace) {
      emit(
        AuthExceptionState(
          exception: e,
          stackTrace: stackTrace,
          previousState: state,
        ),
      );
    }
  }

  Future<void> _onSignOut(
    SignOut event,
    Emitter<AuthState> emit,
  ) async {
    try {
      emit(AuthLoading(previousState: state));

      await _authRepository.signOut();

      emit(const AuthUnauthenticated());
    } catch (e, stackTrace) {
      emit(
        AuthExceptionState(
          exception: e,
          stackTrace: stackTrace,
          previousState: state,
        ),
      );
    }
  }

  Future<void> _onReloadUser(
    ReloadUser event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final previousState = state;
      emit(AuthLoading(previousState: previousState));
      await _authRepository.reload();

      if (!(currentUser?.emailVerified ?? false)) emit(previousState);
    } catch (e, stackTrace) {
      emit(
        AuthExceptionState(
          exception: e,
          stackTrace: stackTrace,
          previousState: state,
        ),
      );
    }
  }

  Future<void> _maybeClaimAccount() async {
    if (!_featureFlagsRepository.enableAccountClaimingByEmail) {
      return;
    }

    if (!await _functionsService.tryClaimAccount()) return;

    await _authRepository.refreshToken();
  }

  Future<void> _onApplyInvitationCode(
    ApplyInvitationCode event,
    Emitter<AuthState> emit,
  ) async {
    final previousState = state;

    try {
      emit(AuthLoading(previousState: previousState));

      await _functionsService.applyInvitationCode(event.code);
      await _authRepository.reload();
      await _authRepository.refreshToken();
    } catch (e, stackTrace) {
      emit(
        AuthExceptionState(
          exception: e,
          stackTrace: stackTrace,
          previousState: previousState,
        ),
      );
    }
  }

  Future<void> _onSendEmailVerification(
    SendEmailVerification event,
    Emitter<AuthState> emit,
  ) async {
    try {
      final previousState = state;
      emit(AuthLoading(previousState: previousState));

      await _authRepository.sendEmailVerification();

      emit(previousState);
    } catch (e, stackTrace) {
      emit(
        AuthExceptionState(
          exception: e,
          stackTrace: stackTrace,
          previousState: state,
        ),
      );
    }
  }

  @override
  Future<void> close() async {
    _refreshTokenTimer?.cancel();

    return super.close();
  }
}
