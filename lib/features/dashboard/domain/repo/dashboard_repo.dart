import 'package:test_agent_mobile/features/dashboard/domain/entity/dashboard_result.dart';

abstract class DashboardRepo {
  Future<DashboardResult> getDashboardStatus();
  
}
