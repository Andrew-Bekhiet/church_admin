import 'package:church_admin/church_admin.dart';
import 'package:flutter/material.dart';

class AppSwitcherPrivacyCover extends StatefulWidget {
  static const Color _nativeSplashColor = Color(0xFFE2CABF);

  final Widget child;

  const AppSwitcherPrivacyCover({required this.child, super.key});

  @override
  State<AppSwitcherPrivacyCover> createState() =>
      _AppSwitcherPrivacyCoverState();
}

abstract final class AppSwitcherPrivacyCoverKeys {
  static const Key cover = ValueKey('App Switcher Privacy Cover Key');
}

class _AppSwitcherPrivacyCoverState extends State<AppSwitcherPrivacyCover>
    with WidgetsBindingObserver {
  late bool _isCovered = _mustCoverIn(WidgetsBinding.instance.lifecycleState);

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        widget.child,
        if (_isCovered)
          const ColoredBox(
            key: AppSwitcherPrivacyCoverKeys.cover,
            color: AppSwitcherPrivacyCover._nativeSplashColor,
            child: Padding(
              padding: EdgeInsets.only(bottom: 24),
              child: SplashBranding(),
            ),
          ),
      ],
    );
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final mustCover = _mustCoverIn(state);
    if (mustCover == _isCovered) return;

    setState(() => _isCovered = mustCover);
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  bool _mustCoverIn(AppLifecycleState? state) {
    if (!CurrentPlatformService.I.isIOS ||
        LocalAuthService.I.isAuthenticationInProgress) {
      return false;
    }

    return switch (state) {
      AppLifecycleState.inactive ||
      AppLifecycleState.hidden ||
      AppLifecycleState.paused => true,
      AppLifecycleState.resumed || AppLifecycleState.detached || null => false,
    };
  }
}
