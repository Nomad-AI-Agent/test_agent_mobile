import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/network/connectivity_provider.dart';
import 'package:test_agent_mobile/core/widgets/connectivity_indicator.dart';

class ProjectsScreenHeader extends ConsumerWidget {
  const ProjectsScreenHeader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final connectivity = ref.watch(connectivityStreamProvider);
    final isConnected = connectivity.value ?? true;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                "Projects",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontFamily: "Newsreader",
                  fontSize: 24.sp,
                ),
              ),
            ),
            ConnectivityIndicator(isConnected: isConnected),
          ],
        ),
        Text(
          "Group of test runs into projects for better organization.",
          style: TextStyle(
            fontSize: 16.sp,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
