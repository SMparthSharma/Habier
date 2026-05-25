import 'package:flutter/material.dart';

/// ---------------------------------------------------------------------------
/// AppColors
///
/// Centralized color constants for the app.
///
/// Usage:
///   color: AppColors.primary
/// ---------------------------------------------------------------------------

class AppColors {
  AppColors._();

  // ───────────────────────────────────────────────────────────────────────────
  // Brand Colors
  // ───────────────────────────────────────────────────────────────────────────

  static const Color primary = Color(0xFF4F46E5);
  static const Color primaryLight = Color(0xFF6366F1);
  static const Color primaryDark = Color(0xFF3730A3);

  static const Color secondary = Color(0xFF06B6D4);
  static const Color accent = Color(0xFFF59E0B);

  // ───────────────────────────────────────────────────────────────────────────
  // Background Colors
  // ───────────────────────────────────────────────────────────────────────────

  static const Color backgroundLight = Color(0xFFF8FAFC);
  static const Color backgroundDark = Color(0xFF0F172A);

  static const Color surfaceLight = Colors.white;
  static const Color surfaceDark = Color(0xFF1E293B);

  // ───────────────────────────────────────────────────────────────────────────
  // Text Colors
  // ───────────────────────────────────────────────────────────────────────────

  static const Color textPrimaryLight = Color(0xFF0F172A);
  static const Color textSecondaryLight = Color(0xFF475569);

  static const Color textPrimaryDark = Colors.white;
  static const Color textSecondaryDark = Color(0xFFCBD5E1);

  // ───────────────────────────────────────────────────────────────────────────
  // Border / Divider
  // ───────────────────────────────────────────────────────────────────────────

  static const Color borderLight = Color(0xFFE2E8F0);
  static const Color borderDark = Color(0xFF334155);

  static const Color dividerLight = Color(0xFFE2E8F0);
  static const Color dividerDark = Color(0xFF475569);

  // ───────────────────────────────────────────────────────────────────────────
  // Status Colors
  // ───────────────────────────────────────────────────────────────────────────

  static const Color success = Color(0xFF22C55E);
  static const Color warning = Color(0xFFF59E0B);
  static const Color error = Color(0xFFEF4444);
  static const Color info = Color(0xFF3B82F6);

  // ───────────────────────────────────────────────────────────────────────────
  // Neutral Colors
  // ───────────────────────────────────────────────────────────────────────────

  static const Color white = Colors.white;
  static const Color black = Colors.black;
  static const Color transparent = Colors.transparent;

  // Greys
  static const Color grey50  = Color(0xFFF8FAFC);
  static const Color grey100 = Color(0xFFF1F5F9);
  static const Color grey200 = Color(0xFFE2E8F0);
  static const Color grey300 = Color(0xFFCBD5E1);
  static const Color grey400 = Color(0xFF94A3B8);
  static const Color grey500 = Color(0xFF64748B);
  static const Color grey600 = Color(0xFF475569);
  static const Color grey700 = Color(0xFF334155);
  static const Color grey800 = Color(0xFF1E293B);
  static const Color grey900 = Color(0xFF0F172A);

  // ───────────────────────────────────────────────────────────────────────────
  // Button Colors
  // ───────────────────────────────────────────────────────────────────────────

  static const Color buttonPrimary = primary;
  static const Color buttonSecondary = secondary;

  static const Color buttonDisabled = grey300;

  // ───────────────────────────────────────────────────────────────────────────
  // Input Field Colors
  // ───────────────────────────────────────────────────────────────────────────

  static const Color inputFillLight = Colors.white;
  static const Color inputFillDark = Color(0xFF1E293B);

  static const Color inputBorderLight = borderLight;
  static const Color inputBorderDark = borderDark;

  // ───────────────────────────────────────────────────────────────────────────
  // Card Colors
  // ───────────────────────────────────────────────────────────────────────────

  static const Color cardLight = Colors.white;
  static const Color cardDark = Color(0xFF1E293B);

  // ───────────────────────────────────────────────────────────────────────────
  // Shadow Colors
  // ───────────────────────────────────────────────────────────────────────────

  static Color shadowLight = Colors.black.withOpacity(0.05);
  static Color shadowDark = Colors.black.withOpacity(0.2);
}