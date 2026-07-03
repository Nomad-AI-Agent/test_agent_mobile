import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/features/auth/data/models/register/register_request_model.dart';
import 'package:test_agent_mobile/features/auth/presentation/logic/auth_provider.dart';

class RegisterNotifier extends AsyncNotifier<void> {
  @override
  FutureOr<void> build() {
    return null;
  }

  Future<void> register(RegisterRequestModel body) async {
    state = const AsyncLoading();
    final authRepo = ref.read(authRepoProvider);
    state = await AsyncValue.guard(() => authRepo.register(body));
  }

  void reset() {
    state = const AsyncData(null);
  }
}

final registerNotifierProvider = AsyncNotifierProvider<RegisterNotifier, void>(
  RegisterNotifier.new,
);