import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class SequenceMetaRow extends StatelessWidget {
  final String url;
  final int passedSteps;
  final int failedSteps;

  const SequenceMetaRow({
    super.key,
    required this.url,
    required this.passedSteps,
    required this.failedSteps,
  });

  Widget _metaChip(IconData icon, String text) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 12.sp, color: AppColorsLight.textMuted),
        SizedBox(width: 4.w),
        Text(
          text,
          style: TextStyle(fontSize: 11.sp, color: AppColorsLight.textMuted),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 14.w,
      runSpacing: 4.h,
      crossAxisAlignment: WrapCrossAlignment.center,
      children: [
        _metaChip(Icons.link, url),
        _metaChip(Icons.checklist_rtl, "${passedSteps}p / ${failedSteps}f"),
      ],
    );
  }
}
