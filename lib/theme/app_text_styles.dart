import 'package:flutter/material.dart';
import 'app_sizes.dart';

/// ---------------------------------------------------------------------------
/// AppTextStyles
///
/// Centralized typography system for the app.
/// Uses AppSizes for responsive font scaling.
///
/// Usage:
///   style: AppTextStyles.titleLg
/// ---------------------------------------------------------------------------

class AppTextStyles {
  AppTextStyles._();

  // ───────────────────────────────────────────────────────────────────────────
  // Font Weights
  // ───────────────────────────────────────────────────────────────────────────

  static const FontWeight light   = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium  = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold    = FontWeight.w700;

  // ───────────────────────────────────────────────────────────────────────────
  // Display Styles
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get displayLg => TextStyle(
        fontSize: AppSizes.textHuge,
        fontWeight: bold,
        height: 1.2,
      );

  static TextStyle get displayMd => TextStyle(
        fontSize: AppSizes.textXxl,
        fontWeight: bold,
        height: 1.2,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Titles
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get titleLg => TextStyle(
        fontSize: AppSizes.textXl,
        fontWeight: bold,
        height: 1.3,
      );

  static TextStyle get titleMd => TextStyle(
        fontSize: AppSizes.textLg,
        fontWeight: semiBold,
        height: 1.3,
      );

  static TextStyle get titleSm => TextStyle(
        fontSize: AppSizes.textMd,
        fontWeight: semiBold,
        height: 1.3,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Body Text
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get bodyLg => TextStyle(
        fontSize: AppSizes.textLg,
        fontWeight: regular,
        height: 1.5,
      );

  static TextStyle get bodyMd => TextStyle(
        fontSize: AppSizes.textMd,
        fontWeight: regular,
        height: 1.5,
      );

  static TextStyle get bodySm => TextStyle(
        fontSize: AppSizes.textSm,
        fontWeight: regular,
        height: 1.5,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Labels / Buttons
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get labelLg => TextStyle(
        fontSize: AppSizes.textMd,
        fontWeight: medium,
        height: 1.3,
      );

  static TextStyle get labelMd => TextStyle(
        fontSize: AppSizes.textSm,
        fontWeight: medium,
        height: 1.3,
      );

  static TextStyle get labelSm => TextStyle(
        fontSize: AppSizes.textXs,
        fontWeight: medium,
        height: 1.2,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Buttons
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get buttonLg => TextStyle(
        fontSize: AppSizes.textMd,
        fontWeight: semiBold,
      );

  static TextStyle get buttonMd => TextStyle(
        fontSize: AppSizes.textSm,
        fontWeight: semiBold,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Captions / Helper Text
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get caption => TextStyle(
        fontSize: AppSizes.textXs,
        fontWeight: regular,
        height: 1.4,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Optional Color Helpers
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle white(TextStyle style) =>
      style.copyWith(color: Colors.white);

  static TextStyle black(TextStyle style) =>
      style.copyWith(color: Colors.black);

  static TextStyle grey(TextStyle style) =>
      style.copyWith(color: Colors.grey);

  static TextStyle primary(TextStyle style, Color color) =>
      style.copyWith(color: color);
}