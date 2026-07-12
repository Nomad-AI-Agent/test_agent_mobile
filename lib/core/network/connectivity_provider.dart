import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/core/services/connectivity_service.dart';

final connectivityServiceProvider = Provider<ConnectivityService>((ref) {
  return ConnectivityServiceImpl();
});

final connectivityStreamProvider = StreamProvider<bool>((ref) async* {
  final service = ref.watch(connectivityServiceProvider);
  yield await service.isConnected;
  yield* service.onConnectivityChanged;
});