class ProjectData {
  final String? id;
  final String name;
  final String description;
  final int runsCount;
  final DateTime lastRunDate;

  ProjectData({
    required this.name,
    required this.description,
    required this.runsCount,
    required this.lastRunDate,
    this.id,
  });
}
