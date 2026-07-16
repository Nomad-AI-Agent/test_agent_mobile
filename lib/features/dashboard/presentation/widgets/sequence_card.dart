import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/features/dashboard/domain/entity/sequence_item.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/sequence_meta_row.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/sequence_status_badge.dart';
import 'package:test_agent_mobile/features/dashboard/presentation/widgets/sequence_status_indicator.dart';

class SequenceCard extends StatelessWidget {
  final SequenceItem sequence;
  final VoidCallback? onTap;

  const SequenceCard({super.key, required this.sequence, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: AppColorsLight.surfaceContainerLow,
        ),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SequenceStatusIndicator(status: sequence.status),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.w,
                    vertical: 12.h,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              sequence.title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColorsLight.onSurface,
                              ),
                            ),
                            SizedBox(height: 6.h),
                            SequenceMetaRow(
                              passedSteps: sequence.passedSteps,
                              failedSteps: sequence.failedSteps,
                              url: sequence.url,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 10.w),
                      SequenceStatusBadge(status: sequence.status),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
