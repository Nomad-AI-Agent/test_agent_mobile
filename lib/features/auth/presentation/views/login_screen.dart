import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:test_agent_mobile/core/routing/routes.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/styles/app_text_sizes.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_response_model.dart';
import 'package:test_agent_mobile/features/auth/presentation/logic/login_notifier.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/auth_header.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/login_form.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late GlobalKey<FormState> formKey;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  String _mapErrorToMessage(Object error) {
    return 'Login failed. Please check your credentials and try again.';
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<LoginResponseModel?>>(loginNotifierProvider, (
      previous,
      next,
    ) {
      next.whenOrNull(
        data: (data) {
          if (data != null) {
            context.go(Routes.homeScreen);
          }
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
          "Login",
          style: TextStyle(
            color: AppColorsLight.textPrimary,
            fontFamily: "Newsreader",
            fontSize: AppTextSizes.xxl.sp,
            fontWeight: FontWeight.w600,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
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
                title: 'Welcome Back!',
                subtitle: 'Log in to continue testing with Nomad.',
                subtitleColor: AppColorsDark.primaryFixed,
              ),
              SizedBox(height: 32.h),
              LoginFrom(
                emailController: emailController,
                passwordController: passwordController,
                formKey: formKey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
