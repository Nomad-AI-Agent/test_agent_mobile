import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:test_agent_mobile/features/dashboard/data/models/dashboard_status_model.dart';

abstract class DashboardLocalDataSource {
  Future<DashboardStatusModel?> getCached();
  Future<void> cacheStatus(DashboardStatusModel status);
  Future<void> clear();
}

class DashboardLocalDataSourceImpl implements DashboardLocalDataSource {
  static const _key = 'cached_dashboard_status';

  final SharedPreferences prefs;

  DashboardLocalDataSourceImpl({required this.prefs});

  @override
  Future<DashboardStatusModel?> getCached() async {
    final raw = prefs.getString(_key);
    if (raw == null) return null;
    try {
      return DashboardStatusModel.fromJson(
        jsonDecode(raw) as Map<String, dynamic>,
      );
    } catch (_) {
      return null;
    }
  }

  @override
  Future<void> cacheStatus(DashboardStatusModel status) async {
    await prefs.setString(_key, jsonEncode(status.toJson()));
  }

  @override
  Future<void> clear() async {
    await prefs.remove(_key);
  }
}