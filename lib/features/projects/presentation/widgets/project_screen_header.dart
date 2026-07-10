import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ProjectsScreenHeader extends StatelessWidget {
  const ProjectsScreenHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Projects",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontFamily: "Newsreader",
            fontSize: 24.sp,
          ),
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