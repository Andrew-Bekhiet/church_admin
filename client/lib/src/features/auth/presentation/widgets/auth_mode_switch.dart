import 'package:church_admin/src/features/auth/presentation/screens/login_screen.dart';
import 'package:flutter/material.dart';

class AuthModeSwitch extends StatelessWidget {
  const AuthModeSwitch({
    required this.isLogin,
    required this.onToggle,
    super.key,
  });

  final bool isLogin;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      padding: const EdgeInsets.all(15),
      alignment: Alignment.bottomCenter,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            isLogin ? 'ليس لديك حساب؟' : 'لديك حساب بالفعل؟',
            style: theme.textTheme.bodyMedium,
          ),
          const SizedBox(width: 10),
          InkWell(
            key: LoginScreenKeys.switchLoginSignupButtonKey,
            onTap: onToggle,
            child: Text(
              isLogin ? 'إنشاء حساب جديد' : 'تسجيل الدخول',
              style: theme.textTheme.bodyMedium?.copyWith(
                color: theme.colorScheme.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
