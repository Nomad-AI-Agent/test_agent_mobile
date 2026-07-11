import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/sequence_item.dart';

class SequenceStatusBadge extends StatelessWidget {
  final SequenceStatus status;

  const SequenceStatusBadge({super.key, required this.status});

  Color _textColor(SequenceStatus status) {
    switch (status) {
      case SequenceStatus.pass:
        return AppColorsLight.pass;
      case SequenceStatus.fail:
        return AppColorsLight.fail;
      case SequenceStatus.canceled:
        return AppColorsLight.warn;
    }
  }

  Color _bgColor(SequenceStatus status) {
    switch (status) {
      case SequenceStatus.pass:
        return AppColorsLight.passDim;
      case SequenceStatus.fail:
        return AppColorsLight.failDim;
      case SequenceStatus.canceled:
        return AppColorsLight.warnDim;
    }
  }

  String _label(SequenceStatus status) {
    switch (status) {
      case SequenceStatus.pass:
        return "PASS";
      case SequenceStatus.fail:
        return "FAIL";
      case SequenceStatus.canceled:
        return "CANCELED";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 4.h),
      decoration: BoxDecoration(
        color: _bgColor(status),
        borderRadius: BorderRadius.circular(99.r),
      ),
      child: Text(
        _label(status),
        style: TextStyle(
          fontSize: 11.sp,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.5,
          color: _textColor(status),
        ),
      ),
    );
  }
}