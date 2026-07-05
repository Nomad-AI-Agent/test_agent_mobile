// register_password_field.dart
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/widgets/app_text_form_field.dart';
import 'package:test_agent_mobile/features/auth/presentation/widgets/password_strength_indicator.dart';

class RegisterPasswordField extends StatefulWidget {
  const RegisterPasswordField({super.key, required this.controller});

  final TextEditingController controller;

  @override
  State<RegisterPasswordField> createState() => _RegisterPasswordFieldState();
}

class _RegisterPasswordFieldState extends State<RegisterPasswordField> {
  bool obscurePassword = true;
  PasswordStrength strength = PasswordStrength.empty;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onChanged);
  }

  void _onChanged() {
    setState(() {
      strength = calculatePasswordStrength(widget.controller.text);
    });
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onChanged);
    super.dispose();
  }

  String? _validate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppTextFormField(
          controller: widget.controller,
          validator: _validate,
          obscureText: obscurePassword,
          hintText: "Password",
          borderRadius: 12,
          enabledBorderColor: AppColorsLight.outlineVariant,
          focusedBorderColor: AppColorsLight.onSurface,
          backgroundColor: AppColorsLight.surfaceContainerLow,
          suffixIcon: IconButton(
            icon: Icon(
              obscurePassword
                  ? Icons.visibility_off_outlined
                  : Icons.visibility_outlined,
              color: AppColorsLight.textMuted,
            ),
            onPressed: () => setState(() => obscurePassword = !obscurePassword),
          ),
        ),
        SizedBox(height: 8.h),
        PasswordStrengthIndicator(strength: strength),
      ],
    );
  }
}
