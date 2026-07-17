import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:test_agent_mobile/core/network/connectivity_provider.dart';
import 'package:test_agent_mobile/core/widgets/connectivity_indicator.dart';

class ConnectivityAwareHeader extends ConsumerStatefulWidget {
  final Widget titleContent;

  const ConnectivityAwareHeader({super.key, required this.titleContent});

  @override
  ConsumerState<ConnectivityAwareHeader> createState() =>
      _ConnectivityAwareHeaderState();
}

class _ConnectivityAwareHeaderState extends ConsumerState<ConnectivityAwareHeader> {
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

    return Row(
      children: [
        Expanded(child: widget.titleContent),
        ConnectivityIndicator(isConnected: isConnected),
      ],
    );
  }
}