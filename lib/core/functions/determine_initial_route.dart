import 'package:test_agent_mobile/core/routing/routes.dart';
import 'package:test_agent_mobile/core/services/secure_storage_service.dart';

Future<String> determineInitialRoute() async {
  final hasToken = await SecureStorageService.hasValidToken();
  if (hasToken) {
    return Routes.projectScreen;
  }
  return Routes.onboardingScreen;
}
