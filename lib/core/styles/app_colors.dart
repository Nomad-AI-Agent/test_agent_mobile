import 'package:flutter/material.dart';

class AppColorsDark {
  AppColorsDark._();

  // Surfaces
  static const Color surface = Color(0xFF000000);
  static const Color surfaceContainerLow = Color(0xFF111111);
  static const Color surfaceContainerLowest = Color(0xFF222222);
  static const Color surfaceContainerHighest = Color(0xFF333333);

  // Primary
  static const Color primary = Color(0xFFFFFFFF);
  static const Color primaryContainer = Color(0xFFCCCCCC);
  static const Color primaryFixed = Color(0xFF666666);

  // On surface / outline
  static const Color onSurface = Color(0xFFFFFFFF);
  static const Color outlineVariant = Color(0xFF555555);

  // Status colors
  static const Color pass = Color(0xFF4CAF7C);
  static const Color passDim = Color(0xFF1A2F23);
  static const Color fail = Color(0xFFD66B6B);
  static const Color failDim = Color(0xFF2D1A1A);
  static const Color warn = Color(0xFFD4A343);
  static const Color warnDim = Color(0xFF2D2515);

  // Text colors
  static const Color textPrimary = onSurface;
  static const Color textSecondary = Color(0xB3FFFFFF); 
  static const Color textMuted = Color(0x80FFFFFF); 
}

class AppColorsLight {
  AppColorsLight._();

  // Surfaces
  static const Color surface = Color(0xFFFFFFFF);
  static const Color surfaceContainerLow = Color(0xFFF0F0F0);
  static const Color surfaceContainerLowest = Color(0xFFFFFFFF);
  static const Color surfaceContainerHighest = Color(0xFFE0E0E0);

  // Primary
  static const Color primary = Color(0xFF000000);
  static const Color primaryContainer = Color(0xFF333333);
  static const Color primaryFixed = Color(0xFFF0F0F0);

  // On surface / outline
  static const Color onSurface = Color(0xFF000000);
  static const Color outlineVariant = Color(0xFFCCCCCC);

  // Status colors
  static const Color pass = Color(0xFF2A7352);
  static const Color passDim = Color(0xFFEAF3ED);
  static const Color fail = Color(0xFFA63C3C);
  static const Color failDim = Color(0xFFFDF0EF);
  static const Color warn = Color(0xFF9E6616);
  static const Color warnDim = Color(0xFFFDF9E9);

  // Text colors
  static const Color textPrimary = onSurface;
  static const Color textSecondary = Color(0xB3000000);
  static const Color textMuted = Color(0x80000000); 
}

class AppColors {
  AppColors._();

  static bool _isDark(Brightness brightness) => brightness == Brightness.dark;

  static Color surface(Brightness b) =>
      _isDark(b) ? AppColorsDark.surface : AppColorsLight.surface;

  static Color surfaceContainerLow(Brightness b) => _isDark(b)
      ? AppColorsDark.surfaceContainerLow
      : AppColorsLight.surfaceContainerLow;

  static Color surfaceContainerLowest(Brightness b) => _isDark(b)
      ? AppColorsDark.surfaceContainerLowest
      : AppColorsLight.surfaceContainerLowest;

  static Color surfaceContainerHighest(Brightness b) => _isDark(b)
      ? AppColorsDark.surfaceContainerHighest
      : AppColorsLight.surfaceContainerHighest;

  static Color primary(Brightness b) =>
      _isDark(b) ? AppColorsDark.primary : AppColorsLight.primary;

  static Color primaryContainer(Brightness b) => _isDark(b)
      ? AppColorsDark.primaryContainer
      : AppColorsLight.primaryContainer;

  static Color primaryFixed(Brightness b) =>
      _isDark(b) ? AppColorsDark.primaryFixed : AppColorsLight.primaryFixed;

  static Color onSurface(Brightness b) =>
      _isDark(b) ? AppColorsDark.onSurface : AppColorsLight.onSurface;

  static Color outlineVariant(Brightness b) =>
      _isDark(b) ? AppColorsDark.outlineVariant : AppColorsLight.outlineVariant;

  static Color pass(Brightness b) =>
      _isDark(b) ? AppColorsDark.pass : AppColorsLight.pass;

  static Color passDim(Brightness b) =>
      _isDark(b) ? AppColorsDark.passDim : AppColorsLight.passDim;

  static Color fail(Brightness b) =>
      _isDark(b) ? AppColorsDark.fail : AppColorsLight.fail;

  static Color failDim(Brightness b) =>
      _isDark(b) ? AppColorsDark.failDim : AppColorsLight.failDim;

  static Color warn(Brightness b) =>
      _isDark(b) ? AppColorsDark.warn : AppColorsLight.warn;

  static Color warnDim(Brightness b) =>
      _isDark(b) ? AppColorsDark.warnDim : AppColorsLight.warnDim;

  static Color textPrimary(Brightness b) =>
      _isDark(b) ? AppColorsDark.textPrimary : AppColorsLight.textPrimary;

  static Color textSecondary(Brightness b) =>
      _isDark(b) ? AppColorsDark.textSecondary : AppColorsLight.textSecondary;

  static Color textMuted(Brightness b) =>
      _isDark(b) ? AppColorsDark.textMuted : AppColorsLight.textMuted;
}