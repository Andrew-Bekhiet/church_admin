import 'package:church_admin/church_admin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  static final GoRoute route = GoRoute(
    name: 'login',
    path: '/login',
    builder: (context, state) => const LoginScreen(),
    redirect: (context, state) {
      return redirect();
    },
  );

  @visibleForTesting
  static String? redirect() {
    if (AuthService.I.isSignedIn) {
      return '/';
    }
    return null;
  }

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _loading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _LoginTitle(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.shortestSide * 0.5,
                  width: MediaQuery.of(context).size.shortestSide * 0.5,
                  child: Image.asset(
                    'assets/Logo.png',
                    color: Theme.of(context).colorScheme.primary,
                    fit: BoxFit.scaleDown,
                    colorBlendMode: BlendMode.softLight,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Center(
                  child: Text(
                    'قم بتسجيل الدخول أو انشاء حساب',
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge
                        ?.copyWith(fontSize: 16),
                  ),
                ),
                const SizedBox(height: 30),
                FilledButton.tonalIcon(
                  style: FilledButton.styleFrom(
                    elevation: 2,
                  ),
                  icon: Container(
                    padding: const EdgeInsets.all(16),
                    child: Image.asset(
                      'assets/google_logo.png',
                      width: 30,
                      height: 30,
                    ),
                  ),
                  onPressed: _loading ? null : _loginWithGoogle,
                  label: SizedBox(
                    width: double.infinity,
                    child: _loading
                        ? const Center(child: CircularProgressIndicator())
                        : const Text(
                            'تسجيل الدخول بجوجل',
                          ),
                  ),
                ),
                Container(height: MediaQuery.of(context).size.height / 38),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                    children: [
                      TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        text: 'بتسجيل دخولك فإنك توافق على ',
                      ),
                      TextSpan(
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.blue,
                            ),
                        text: 'شروط الاستخدام',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //TODO: TOS
                          },
                      ),
                      TextSpan(
                        style: Theme.of(context).textTheme.bodySmall,
                        text: ' و',
                      ),
                      TextSpan(
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.blue,
                            ),
                        text: 'سياسة الخصوصية',
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //TODO: Privacy Policy
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> _loginWithGoogle() async {
    setState(() => _loading = true);
    try {
      if (await AuthService.I.signInWithGoogle()) {
        await AuthService.I.userStream.nextNonNullStrict;
        await setupSettings();
      }
      if (mounted) {
        setState(() => _loading = false);
      }
    } catch (err, stack) {
      if (mounted) {
        setState(() => _loading = false);
      }
      await LoggingService.I.reportError(
        err,
        stackTrace: stack,
      );
      if (mounted) {
        await showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('تعذر تسجيل الدخول'),
            content: Text(err.toString()),
          ),
        );
      }
    }
  }

  Future<void> setupSettings() async {
    try {
      final settings = UserSettingsService.I;

      // await settings.setSecondLineFor(Area, 'lastVisit');
      // await settings.setSecondLineFor(Street, 'lastVisit');
      // await settings.setSecondLineFor(Family, 'lastVisit');
      await settings.setSecondLineFor(Person, 'birthdate');
      await settings.setSecondLineFor(User, 'permissions');

      await NotificationsService.I.scheduleBirthDayNotification();
      await NotificationsService.I.scheduleKodasNotification();
      await NotificationsService.I.scheduleMeetingNotification();
      await NotificationsService.I.scheduleConfessionNotification();
    } catch (err, stack) {
      await LoggingService.I.reportError(
        err as Exception,
        stackTrace: stack,
      );
    }
  }
}

class _LoginTitle extends StatelessWidget implements PreferredSizeWidget {
  const _LoginTitle();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.all(16),
        child: Center(
          child: Text(
            'كنيسة السيدة العذراء مريم',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: Theme.of(context)
                      .textTheme
                      .headlineMedium
                      ?.color
                      ?.withOpacity(1),
                  // fontWeight: FontWeight.bold,
                ),
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 30);
}
