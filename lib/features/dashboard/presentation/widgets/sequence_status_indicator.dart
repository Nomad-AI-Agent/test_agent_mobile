import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/sequence_item.dart';

class SequenceStatusIndicator extends StatelessWidget {
  final SequenceStatus status;

  const SequenceStatusIndicator({super.key, required this.status});

  Color _colorFor(SequenceStatus status) {
    switch (status) {
      case SequenceStatus.pass:
        return AppColorsLight.pass;
      case SequenceStatus.fail:
        return AppColorsLight.fail;
      case SequenceStatus.canceled:
        return AppColorsLight.warn;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 4.w,
      decoration: BoxDecoration(
        color: _colorFor(status),
        borderRadius: BorderRadius.circular(20.r),
      ),
    );
  }
}