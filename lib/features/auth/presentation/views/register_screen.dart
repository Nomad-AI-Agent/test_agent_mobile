import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/styles/app_text_sizes.dart';
import 'package:test_agent_mobile/features/auth/presentation/logic/register_notifier.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/auth_header.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/register_form.dart';

class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({super.key});

  @override
  ConsumerState<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<RegisterScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController fullNameController;
  late TextEditingController usernameController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    fullNameController = TextEditingController();
    usernameController = TextEditingController();
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    fullNameController.dispose();
    usernameController.dispose();
    super.dispose();
  }

  String _mapErrorToMessage(Object error) {
    return 'Registration failed. Please try again.';
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<void>>(registerNotifierProvider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          context.pop();
        },
        error: (error, stackTrace) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(_mapErrorToMessage(error))));
        },
      );
    });

    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      appBar: AppBar(
        backgroundColor: AppColorsLight.surface,
        elevation: 0,
        title: Text(
          "Sign Up",
          style: TextStyle(
            color: AppColorsLight.textPrimary,
            fontFamily: "Newsreader",
            fontSize: AppTextSizes.xxl.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () => context.pop(),
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 16.h),
              const AuthHeader(
                title: 'Create your account',
                subtitle:
                    'Start testing your product like a real user, in minutes',
                titleColor: AppColorsLight.textPrimary,
                subtitleColor: AppColorsLight.textSecondary,
              ),
              RegisterForm(
                fullNameController: fullNameController,
                usernameController: usernameController,
                emailController: emailController,
                passwordController: passwordController,
                formKey: formKey,
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
