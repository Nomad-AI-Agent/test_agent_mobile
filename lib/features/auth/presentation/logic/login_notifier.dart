
import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_request_model.dart';
import 'package:test_agent_mobile/features/auth/data/models/login/login_response_model.dart';
import 'package:test_agent_mobile/features/auth/presentation/logic/login_provider.dart';

class LoginNotifier extends AsyncNotifier<LoginResponseModel?> {
  @override
  FutureOr<LoginResponseModel?> build() {
    return null;
  }

  Future<void> login(LoginRequestModel body) async {
    state = const AsyncLoading();
    final authRepo = ref.read(authRepoProvider);

    state = await AsyncValue.guard(() => authRepo.login(body));
  }

  void reset() {
    state = const AsyncData(null);
  }
}

final loginNotifierProvider =
    AsyncNotifierProvider<LoginNotifier, LoginResponseModel?>(
  LoginNotifier.new,
);