// register_full_name_field.dart
import 'package:flutter/material.dart';
import 'package:test_agent_mobile/core/styles/app_colors.dart';
import 'package:test_agent_mobile/core/widgets/app_text_form_field.dart';

class RegisterFullNameField extends StatelessWidget {
  const RegisterFullNameField({super.key, required this.controller});

  final TextEditingController controller;

  String? _validate(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Full name is required';
    }
    if (value.trim().length < 3) {
      return 'Full name is too short';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
      controller: controller,
      validator: _validate,
      hintText: "Full name",
      borderRadius: 12,
      enabledBorderColor: AppColorsLight.outlineVariant,
      focusedBorderColor: AppColorsLight.onSurface,
      backgroundColor: AppColorsLight.surfaceContainerLow,
      keyboardType: TextInputType.name,
    );
  }
}