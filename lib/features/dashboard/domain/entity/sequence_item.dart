enum SequenceStatus { pass, fail, canceled }

class SequenceItem {
  final String id;
  final String title;
  final String url;
  final DateTime timestamp;
  final double durationSeconds;
  final int passedSteps;
  final int failedSteps;
  final SequenceStatus status;
  final String? statusReason; 

  const SequenceItem({
    required this.id,
    required this.title,
    required this.url,
    required this.timestamp,
    required this.durationSeconds,
    required this.passedSteps,
    required this.failedSteps,
    required this.status,
    this.statusReason,
  });
}