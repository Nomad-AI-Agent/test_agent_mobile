import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:test_agent_mobile/core/routing/routes.dart';
import 'package:test_agent_mobile/features/auth/presentation/views/home_test.dart';
import 'package:test_agent_mobile/features/auth/presentation/views/login_screen.dart';
import 'package:test_agent_mobile/features/auth/presentation/views/register_screen.dart';
import 'package:test_agent_mobile/features/navigation/main_nav_shell.dart';
import 'package:test_agent_mobile/features/onboarding/presentation/onboarding_screen.dart';
import 'package:test_agent_mobile/features/project_details/presentation/project_details.dart';
import 'package:test_agent_mobile/features/projects/presentation/projects_screen.dart';
import 'package:test_agent_mobile/features/splash/animated_splash_screen.dart';
import 'package:test_agent_mobile/features/welcome/presentation/welcome_screen.dart';

class AppRoute {
  AppRoute._();

  static CustomTransitionPage<void> _buildPageWithTransition({
    required LocalKey key,
    required Widget child,
  }) {
    return CustomTransitionPage<void>(
      key: key,
      child: child,
      transitionDuration: const Duration(milliseconds: 280),
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        return SlideTransition(
          position: Tween<Offset>(
            begin: const Offset(0.05, 0),
            end: Offset.zero,
          ).animate(animation),
          child: FadeTransition(opacity: animation, child: child),
        );
      },
    );
  }

  static final GoRouter router = GoRouter(
    initialLocation: Routes.splashScreen,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: Routes.splashScreen,
        name: Routes.splashScreen,
        pageBuilder: (context, state) => _buildPageWithTransition(
          key: state.pageKey,
          child: AnimatedSplashScreen(
            onAnimationComplete: () async {
              // final route = await determineInitialRoute();
              const route = Routes.navigationScreen;
              if (context.mounted) {
                context.go(route);
              }
            },
          ),
        ),
      ),

      GoRoute(
        path: Routes.welcomeScreen,
        name: Routes.welcomeScreen,
        pageBuilder: (context, state) => _buildPageWithTransition(
          key: state.pageKey,
          child: const WelcomeScreen(),
        ),
      ),

      GoRoute(
        path: Routes.projectDetails,
        name: Routes.projectDetails,
        pageBuilder: (context, state) => _buildPageWithTransition(
          key: state.pageKey,
          child: const ProjectDetails(),
        ),
      ),
      GoRoute(
        path: Routes.navigationScreen,
        name: Routes.navigationScreen,
        pageBuilder: (context, state) => _buildPageWithTransition(
          key: state.pageKey,
          child: const MainNavShell(),
        ),
      ),

      GoRoute(
        path: Routes.onboardingScreen,
        name: Routes.onboardingScreen,
        pageBuilder: (context, state) => _buildPageWithTransition(
          key: state.pageKey,
          child: const OnboardingScreen(),
        ),
      ),
      GoRoute(
        path: Routes.loginScreen,
        name: Routes.loginScreen,
        pageBuilder: (context, state) => _buildPageWithTransition(
          key: state.pageKey,
          child: const LoginScreen(),
        ),
      ),
      GoRoute(
        path: Routes.homeScreen,
        name: Routes.homeScreen,
        pageBuilder: (context, state) => _buildPageWithTransition(
          key: state.pageKey,
          child: const HomeTest(),
        ),
      ),
      GoRoute(
        path: Routes.registerScreen,
        name: Routes.registerScreen,
        pageBuilder: (context, state) => _buildPageWithTransition(
          key: state.pageKey,
          child: const RegisterScreen(),
        ),
      ),
      GoRoute(
        path: Routes.projectScreen,
        name: Routes.projectScreen,
        pageBuilder: (context, state) => _buildPageWithTransition(
          key: state.pageKey,
          child: const ProjectsScreen(),
        ),
      ),
    ],
    errorBuilder: (context, state) =>
        Scaffold(body: Center(child: Text('Page not found: ${state.uri}'))),
  );
}
