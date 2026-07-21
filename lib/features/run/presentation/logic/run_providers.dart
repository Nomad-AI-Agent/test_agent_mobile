import 'package:flutter_riverpod/flutter_riverpod.dart';

final projectsProvider = Provider<List<({String id, String name})>>((ref) {
  return const [
    (id: "1", name: "Project 1"),
  ];
});

final recentUrlsProvider = Provider<List<String>>((ref) {
  return const [
    "https://chatgpt.com/",
    "https://attendo-front-production.up.railway.app/",
  ]; 
});