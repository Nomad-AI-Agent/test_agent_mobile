import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/network/connectivity_provider.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/widgets/connectivity_indicator.dart';

class DashboardHeader extends ConsumerStatefulWidget {
  const DashboardHeader({super.key});

  @override
  ConsumerState<DashboardHeader> createState() => _DashboardHeaderState();
}

class _DashboardHeaderState extends ConsumerState<DashboardHeader> {
  final GlobalKey<TooltipState> _tooltipKey = GlobalKey<TooltipState>();
  bool? _wasConnected;
  Timer? _hideTimer;

  @override
  void dispose() {
    _hideTimer?.cancel();
    super.dispose();
  }

  void _showTooltipAutomatically() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _tooltipKey.currentState?.ensureTooltipVisible();
    });
    _hideTimer?.cancel();
    _hideTimer = Timer(const Duration(seconds: 4), () {
      _tooltipKey.currentState?.deactivate();
    });
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<bool>>(connectivityStreamProvider, (previous, next) {
      final isConnected = next.value;
      if (isConnected == null) return;
      if (_wasConnected != false && isConnected == false) {
        _showTooltipAutomatically();
      }
      _wasConnected = isConnected;
    });

    final connectivity = ref.watch(connectivityStreamProvider);
    final isConnected = connectivity.value ?? true;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Good Evening,\nTester.",
                style: TextStyle(
                  fontFamily: "Newsreader",
                  fontSize: 28.sp,
                  fontWeight: FontWeight.bold,
                  color: AppColorsLight.onSurface,
                ),
              ),
            ),
            ConnectivityIndicator(isConnected: isConnected),
          ],
        ),
        SizedBox(height: 6.h),
        Text(
          "Here is the current state of your test environments.",
          style: TextStyle(
            fontSize: 14.sp,
            color: AppColorsLight.textSecondary,
          ),
        ),
      ],
    );
  }
}
