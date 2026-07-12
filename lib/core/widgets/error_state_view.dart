import 'package:flutter/material.dart';
import 'package:test_agent_mobile/core/network/api_error_model.dart';
import 'package:test_agent_mobile/core/network/api_exception.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/widgets/api_error_ui_mapper.dart';

class ErrorStateView extends StatefulWidget {
  final Object error;
  final VoidCallback? onRetry;

  const ErrorStateView({super.key, required this.error, this.onRetry});

  @override
  State<ErrorStateView> createState() => _ErrorStateViewState();
}

class _ErrorStateViewState extends State<ErrorStateView>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _fade;
  late final Animation<double> _scale;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 420),
    );
    _fade = CurvedAnimation(parent: _controller, curve: Curves.easeOut);
    _scale = Tween<double>(
      begin: 0.94,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
    _controller.forward();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (MediaQuery.of(context).disableAnimations) {
      _controller.value = 1.0;
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;

    final IconData icon;
    final String title;
    final String message;

    if (widget.error is ApiException) {
      final apiError = (widget.error as ApiException).error;
      icon = apiError.type.icon;
      title = _titleFor(apiError.type);
      message = apiError.message;
    } else {
      icon = Icons.error_outline_rounded;
      title = 'Something went wrong';
      message = 'Please try again in a moment.';
    }

    return Center(
      child: FadeTransition(
        opacity: _fade,
        child: ScaleTransition(
          scale: _scale,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 88,
                  height: 88,
                  decoration: BoxDecoration(
                    color: AppColors.failDim(brightness),
                    shape: BoxShape.circle,
                  ),
                  child: Icon(
                    icon,
                    size: 36,
                    color: AppColors.fail(brightness),
                  ),
                ),
                const SizedBox(height: 24),
                Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: AppColors.textPrimary(brightness),
                    height: 1.3,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  message,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: AppColors.textSecondary(brightness),
                    height: 1.45,
                  ),
                ),
                if (widget.onRetry != null) ...[
                  const SizedBox(height: 28),
                  Material(
                    color: AppColors.surfaceContainerHighest(brightness),
                    borderRadius: BorderRadius.circular(100),
                    child: InkWell(
                      onTap: widget.onRetry,
                      borderRadius: BorderRadius.circular(100),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 28,
                          vertical: 14,
                        ),
                        child: Text(
                          'Retry',
                          style: TextStyle(
                            color: AppColors.onSurface(brightness),
                            fontWeight: FontWeight.w600,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _titleFor(ApiErrorType type) {
    switch (type) {
      case ApiErrorType.connectionError:
      case ApiErrorType.connectionTimeout:
        return 'No connection';
      case ApiErrorType.sendTimeout:
      case ApiErrorType.receiveTimeout:
      case ApiErrorType.transformTimeout:
        return 'Taking longer than expected';
      case ApiErrorType.badCertificate:
        return 'Connection not secure';
      case ApiErrorType.badResponse:
        return 'Couldn\'t load this';
      case ApiErrorType.cancel:
        return 'Request cancelled';
      case ApiErrorType.parsingError:
      case ApiErrorType.unknown:
      case ApiErrorType.defaultError:
        return 'Something went wrong';
    }
  }
}
