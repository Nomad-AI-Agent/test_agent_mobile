import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';

class SheetHeader extends StatelessWidget {
  final String title;
  final VoidCallback onClose;

  const SheetHeader({super.key, required this.title, required this.onClose});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              width: 32.w,
              height: 32.h,
              decoration: BoxDecoration(
                color: AppColorsLight.surfaceContainerLow,
                borderRadius: BorderRadius.circular(8.r),
              ),
              alignment: Alignment.center,
              child: Icon(
                Icons.create_new_folder_outlined,
                size: 18.sp,
                color: AppColorsDark.surface,
              ),
            ),
            SizedBox(width: 10.w),
            Text(
              title,
              style: TextStyle(
                fontSize: 17.sp,
                fontFamily: "newsreader",
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: onClose,
          child: Container(
            width: 30.w,
            height: 30.h,
            alignment: Alignment.center,
            child: Icon(Icons.close, size: 18.sp, color: Colors.grey.shade600),
          ),
        ),
      ],
    );
  }
}