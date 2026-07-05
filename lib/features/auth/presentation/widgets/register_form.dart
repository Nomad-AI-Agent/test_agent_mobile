import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_agent_mobile/core/widgets/app_primary_button.dart';
import 'package:test_agent_mobile/features/auth/data/models/register/register_request_model.dart';
import 'package:test_agent_mobile/features/auth/presentation/logic/register_notifier.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/email_field.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/register_full_name_field.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/register_login_row.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/register_paswword_field.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/register_terms_row.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/register_username_field.dart';

class RegisterForm extends ConsumerWidget {
  const RegisterForm({
    super.key,
    required this.fullNameController,
    required this.usernameController,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
  });

  final TextEditingController fullNameController;
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;

  Future<void> _onRegisterPressed(WidgetRef ref) async {
    if (formKey.currentState?.validate() ?? false) {
      final body = RegisterRequestModel(
        fullname: fullNameController.text.trim(),
        username: usernameController.text.trim(),
        email: emailController.text.trim(),
        password: passwordController.text,
      );
      await ref.read(registerNotifierProvider.notifier).register(body);
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final registerState = ref.watch(registerNotifierProvider);

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 24.h),
          RegisterFullNameField(controller: fullNameController),
          SizedBox(height: 16.h),
          RegisterUsernameField(controller: usernameController),
          SizedBox(height: 16.h),
          LoginEmailField(controller: emailController),
          SizedBox(height: 16.h),
          RegisterPasswordField(controller: passwordController),
          SizedBox(height: 24.h),
          AppPrimaryButton(
            label: "Create Account",
            isLoading: registerState.isLoading,
            onPressed: () => _onRegisterPressed(ref),
          ),
          SizedBox(height: 16.h),
          RegisterTermsRow(onTermsTap: () {}, onPrivacyTap: () {}),
          SizedBox(height: 20.h),
          RegisterLoginRow(onLoginTap: () => context.pop()),
        ],
      ),
    );
  }
}
