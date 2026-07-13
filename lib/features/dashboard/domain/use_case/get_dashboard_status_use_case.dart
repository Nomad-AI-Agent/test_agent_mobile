import 'package:test_agent_mobile/features/dashboard/domain/entity/dashboard_result.dart';
import 'package:test_agent_mobile/features/dashboard/domain/repo/dashboard_repo.dart';

class GetDashboardStatusUseCase {
  final DashboardRepo dashboardRepo;

  GetDashboardStatusUseCase({required this.dashboardRepo});

  Future<DashboardResult> execute() {
    return dashboardRepo.getDashboardStatus();
  }
}