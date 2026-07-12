/// Local status codes used when a real HTTP status code isn't available
/// (e.g. connection errors, timeouts, cancellations, or unknown failures).
///
/// NOTE: This file is provided as reference. If you already have this file
/// in your project with different values, keep yours — just make sure the
/// names below match what ApiErrorHandler expects.
class LocalStatusCodes {
  LocalStatusCodes._();

  static const int defaultError = -1;
  static const int connectionError = -2;
  static const int connectionTimeout = -3;
  static const int sendTimeout = -4;
  static const int receiveTimeout = -5;
  static const int badCertificate = -6;
  static const int badResponse = -7;
  static const int cancel = -8;
  static const int unknown = -9;
  static const int transformTimeout = -10;
}