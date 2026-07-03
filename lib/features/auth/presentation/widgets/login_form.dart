import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_agent_mobile/core/routing/routes.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_request_model.dart';
import 'package:test_agent_mobile/features/auth/presentation/logic/login_notifier.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/login_button.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/email_field.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/password_field.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/login_sign_up_row.dart';

class LoginFrom extends ConsumerWidget {
  const LoginFrom({
    super.key,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });

  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  Future<void> _onLoginPressed(WidgetRef ref) async {
    if (formKey.currentState?.validate() ?? false) {
      final body = LoginRequestModel(
        login: emailController.text.trim(),
        password: passwordController.text,
      );
      await ref.read(loginNotifierProvider.notifier).login(body);
      
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginNotifierProvider);

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h),
          LoginEmailField(controller: emailController),
          SizedBox(height: 20.h),
          LoginPasswordField(
            controller: passwordController,
            onForgotPasswordTap: () {
              // TODO: navigate to forgot password screen
            },
          ),
          SizedBox(height: 28.h),
          LoginButton(
            isLoading: loginState.isLoading,
            onPressed: () => _onLoginPressed(ref),
          ),
          SizedBox(height: 20.h),
          LoginSignUpRow(
            onSignUpTap: () {
               context.push(Routes.registerScreen);
            },
          ),
        ],
      ),
    );
  }
}