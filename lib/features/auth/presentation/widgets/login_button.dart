import 'package:flutter/material.dart';
import 'package:test_agent_mobile/core/widgets/app_primary_button.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    super.key,
    required this.onPressed,
    this.isLoading = false,
  });

  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return AppPrimaryButton(
      label: "Log In",
      onPressed: onPressed,
      isLoading: isLoading,
    );
  }
}
