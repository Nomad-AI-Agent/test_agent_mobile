import 'package:flutter/material.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/dashboard/dashboard_screen.dart';
import 'package:test_agent_mobile/features/history/presentation/history_screen.dart';
import 'package:test_agent_mobile/features/navigation/navigation_screen.dart';
import 'package:test_agent_mobile/features/projects/presentation/projects_screen.dart';
import 'package:test_agent_mobile/features/run/presentation/run_screen.dart';

class MainNavShell extends StatefulWidget {
  const MainNavShell({super.key});

  @override
  State<MainNavShell> createState() => _MainNavShellState();
}

class _MainNavShellState extends State<MainNavShell> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    DashboardScreen(),
    RunScreen(), 
    HistoryScreen(),
    ProjectsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColorsLight.surface,
      body: Column(
        children: [
          Expanded(
            child: IndexedStack(
              index: _currentIndex,
              children: _screens,
            ),
          ),
          NavigationScreen(
            currentIndex: _currentIndex,
            onTap: (index) => setState(() => _currentIndex = index),
          ),
        ],
      ),
    );
  }
}