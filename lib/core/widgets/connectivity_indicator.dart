import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConnectivityIndicator extends StatelessWidget {
  final bool isConnected;

  const ConnectivityIndicator({required this.isConnected , super.key});

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: isConnected
          ? 'Connected — data is up to date'
          : 'You are offline — showing cached data',
      preferBelow: true,
      triggerMode: TooltipTriggerMode.tap,
      textStyle: TextStyle(color: Colors.white, fontSize: 12.sp),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        borderRadius: BorderRadius.circular(6),
      ),
      child: Icon(
        isConnected ? Icons.wifi_rounded : Icons.wifi_off_rounded,
        size: 20.sp,
        color: isConnected ? Colors.green : Colors.orange[800],
      ),
    );
  }
}
