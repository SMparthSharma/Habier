import 'package:flutter/material.dart';
import 'app_sizes.dart';

class AppTextStyles {
  AppTextStyles._();

  // ───────────────────────────────────────────────────────────────────────────
  // Font Families
  // ───────────────────────────────────────────────────────────────────────────

  static const String serif = 'NotoSerif';
  static const String sans = 'DMSans';

  // ───────────────────────────────────────────────────────────────────────────
  // Font Weights
  // ───────────────────────────────────────────────────────────────────────────

  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;

  // ───────────────────────────────────────────────────────────────────────────
  // Display Styles
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get displayLg => TextStyle(
        fontFamily: serif,
        fontSize: AppSizes.textHuge,
        fontWeight: bold,
        height: 1.2,
      );

  static TextStyle get displayMd => TextStyle(
        fontFamily: serif,
        fontSize: AppSizes.textXxl,
        fontWeight: bold,
        height: 1.2,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Titles
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get titleLg => TextStyle(
        fontFamily: serif,
        fontSize: AppSizes.textXl,
        fontWeight: bold,
        height: 1.3,
      );

  static TextStyle get titleMd => TextStyle(
        fontFamily: serif,
        fontSize: AppSizes.textLg,
        fontWeight: semiBold,
        height: 1.3,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Body Text
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get bodyMd => TextStyle(
        fontFamily: sans,
        fontSize: AppSizes.textMd,
        fontWeight: regular,
        height: 1.5,
      );

  static TextStyle get bodySm => TextStyle(
        fontFamily: sans,
        fontSize: AppSizes.textSm,
        fontWeight: regular,
        height: 1.5,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Buttons
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get buttonMd => TextStyle(
        fontFamily: sans,
        fontSize: AppSizes.textSm,
        fontWeight: semiBold,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Caption
  // ───────────────────────────────────────────────────────────────────────────

  static TextStyle get caption => TextStyle(
        fontFamily: sans,
        fontSize: AppSizes.textXs,
        fontWeight: regular,
        height: 1.4,
      );

  // ───────────────────────────────────────────────────────────────────────────
  // Color Helpers
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