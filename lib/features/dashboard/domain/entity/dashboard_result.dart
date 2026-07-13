import 'package:test_agent_mobile/features/dashboard/data/models/dashboard_status_model.dart';

enum DashboardSource { network, cache }

class DashboardResult {
  final DashboardStatusModel status;
  final DashboardSource source;

  const DashboardResult({required this.status, required this.source});
}