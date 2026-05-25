import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_sizes.dart';
import 'app_text_styles.dart';

/// ---------------------------------------------------------------------------
/// AppTheme
///
/// Centralized Light & Dark Theme
///
/// Usage:
///
/// MaterialApp(
///   theme: AppTheme.lightTheme,
///   darkTheme: AppTheme.darkTheme,
///   themeMode: ThemeMode.system,
/// )
/// ---------------------------------------------------------------------------

class AppTheme {
  AppTheme._();

  // ───────────────────────────────────────────────────────────────────────────
  // LIGHT THEME
  // ───────────────────────────────────────────────────────────────────────────

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      primaryColor: AppColors.primary,

      scaffoldBackgroundColor: AppColors.backgroundLight,

      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surfaceLight,
        error: AppColors.error,
      ),

      // ─── App Bar ──────────────────────────────────────────────────────────

      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.backgroundLight,
        foregroundColor: AppColors.textPrimaryLight,
        toolbarHeight: AppSizes.appBarHeight,
        titleTextStyle: AppTextStyles.titleMd.copyWith(
          color: AppColors.textPrimaryLight,
        ),
      ),

      // ─── Card Theme ───────────────────────────────────────────────────────

      cardTheme: CardThemeData(
        color: AppColors.cardLight,
        elevation: AppSizes.elevationSm,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: AppSizes.roundedLg,
          side: const BorderSide(
            color: AppColors.borderLight,
          ),
        ),
      ),

      // ─── Elevated Button Theme ────────────────────────────────────────────

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,

          minimumSize: Size(
            double.infinity,
            AppSizes.buttonHeight,
          ),

          shape: RoundedRectangleBorder(
            borderRadius: AppSizes.roundedMd,
          ),

          textStyle: AppTextStyles.buttonMd,
        ),
      ),

      // ─── Outlined Button Theme ────────────────────────────────────────────

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: Size(
            double.infinity,
            AppSizes.buttonHeight,
          ),

          side: const BorderSide(
            color: AppColors.borderLight,
          ),

          shape: RoundedRectangleBorder(
            borderRadius: AppSizes.roundedMd,
          ),

          textStyle: AppTextStyles.buttonMd,
        ),
      ),

      // ─── Input Decoration Theme ───────────────────────────────────────────

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.inputFillLight,

        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSizes.spaceMd,
          vertical: AppSizes.spaceMd,
        ),

        border: OutlineInputBorder(
          borderRadius: AppSizes.roundedMd,
          borderSide: const BorderSide(
            color: AppColors.inputBorderLight,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: AppSizes.roundedMd,
          borderSide: const BorderSide(
            color: AppColors.inputBorderLight,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: AppSizes.roundedMd,
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: 1.5,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: AppSizes.roundedMd,
          borderSide: const BorderSide(
            color: AppColors.error,
          ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: AppSizes.roundedMd,
          borderSide: const BorderSide(
            color: AppColors.error,
            width: 1.5,
          ),
        ),

        hintStyle: AppTextStyles.bodySm.copyWith(
          color: AppColors.grey500,
        ),
      ),

      // ─── Text Theme ───────────────────────────────────────────────────────

      textTheme: TextTheme(
        displayLarge: AppTextStyles.displayLg.copyWith(
          color: AppColors.textPrimaryLight,
        ),

        displayMedium: AppTextStyles.displayMd.copyWith(
          color: AppColors.textPrimaryLight,
        ),

        headlineLarge: AppTextStyles.titleLg.copyWith(
          color: AppColors.textPrimaryLight,
        ),

        headlineMedium: AppTextStyles.titleMd.copyWith(
          color: AppColors.textPrimaryLight,
        ),

        headlineSmall: AppTextStyles.titleSm.copyWith(
          color: AppColors.textPrimaryLight,
        ),

        bodyLarge: AppTextStyles.bodyLg.copyWith(
          color: AppColors.textPrimaryLight,
        ),

        bodyMedium: AppTextStyles.bodyMd.copyWith(
          color: AppColors.textPrimaryLight,
        ),

        bodySmall: AppTextStyles.bodySm.copyWith(
          color: AppColors.textSecondaryLight,
        ),

        labelLarge: AppTextStyles.labelLg.copyWith(
          color: AppColors.textPrimaryLight,
        ),

        labelMedium: AppTextStyles.labelMd.copyWith(
          color: AppColors.textPrimaryLight,
        ),

        labelSmall: AppTextStyles.labelSm.copyWith(
          color: AppColors.textSecondaryLight,
        ),
      ),

      // ─── Divider Theme ────────────────────────────────────────────────────

      dividerTheme: DividerThemeData(
        color: AppColors.dividerLight,
        thickness: AppSizes.dividerThickness,
      ),

      // ─── Bottom Navigation Bar ────────────────────────────────────────────

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.surfaceLight,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey500,
        elevation: AppSizes.elevationSm,
      ),
    );
  }

  // ───────────────────────────────────────────────────────────────────────────
  // DARK THEME
  // ───────────────────────────────────────────────────────────────────────────

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,

      primaryColor: AppColors.primary,

      scaffoldBackgroundColor: AppColors.backgroundDark,

      colorScheme: const ColorScheme.dark(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surfaceDark,
        error: AppColors.error,
      ),

      // ─── App Bar ──────────────────────────────────────────────────────────

      appBarTheme: AppBarTheme(
        elevation: 0,
        centerTitle: true,
        backgroundColor: AppColors.backgroundDark,
        foregroundColor: AppColors.textPrimaryDark,
        toolbarHeight: AppSizes.appBarHeight,
        titleTextStyle: AppTextStyles.titleMd.copyWith(
          color: AppColors.textPrimaryDark,
        ),
      ),

      // ─── Card Theme ───────────────────────────────────────────────────────

      cardTheme: CardThemeData(
        color: AppColors.cardDark,
        elevation: AppSizes.elevationSm,
        margin: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: AppSizes.roundedLg,
          side: const BorderSide(
            color: AppColors.borderDark,
          ),
        ),
      ),

      // ─── Elevated Button Theme ────────────────────────────────────────────

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.white,

          minimumSize: Size(
            double.infinity,
            AppSizes.buttonHeight,
          ),

          shape: RoundedRectangleBorder(
            borderRadius: AppSizes.roundedMd,
          ),

          textStyle: AppTextStyles.buttonMd,
        ),
      ),

      // ─── Input Decoration Theme ───────────────────────────────────────────

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.inputFillDark,

        contentPadding: EdgeInsets.symmetric(
          horizontal: AppSizes.spaceMd,
          vertical: AppSizes.spaceMd,
        ),

        border: OutlineInputBorder(
          borderRadius: AppSizes.roundedMd,
          borderSide: const BorderSide(
            color: AppColors.inputBorderDark,
          ),
        ),

        enabledBorder: OutlineInputBorder(
          borderRadius: AppSizes.roundedMd,
          borderSide: const BorderSide(
            color: AppColors.inputBorderDark,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: AppSizes.roundedMd,
          borderSide: const BorderSide(
            color: AppColors.primary,
            width: 1.5,
          ),
        ),

        hintStyle: AppTextStyles.bodySm.copyWith(
          color: AppColors.grey400,
        ),
      ),

      // ─── Text Theme ───────────────────────────────────────────────────────

      textTheme: TextTheme(
        displayLarge: AppTextStyles.displayLg.copyWith(
          color: AppColors.textPrimaryDark,
        ),

        displayMedium: AppTextStyles.displayMd.copyWith(
          color: AppColors.textPrimaryDark,
        ),

        headlineLarge: AppTextStyles.titleLg.copyWith(
          color: AppColors.textPrimaryDark,
        ),

        headlineMedium: AppTextStyles.titleMd.copyWith(
          color: AppColors.textPrimaryDark,
        ),

        headlineSmall: AppTextStyles.titleSm.copyWith(
          color: AppColors.textPrimaryDark,
        ),

        bodyLarge: AppTextStyles.bodyLg.copyWith(
          color: AppColors.textPrimaryDark,
        ),

        bodyMedium: AppTextStyles.bodyMd.copyWith(
          color: AppColors.textPrimaryDark,
        ),

        bodySmall: AppTextStyles.bodySm.copyWith(
          color: AppColors.textSecondaryDark,
        ),
      ),

      // ─── Divider Theme ────────────────────────────────────────────────────

      dividerTheme: DividerThemeData(
        color: AppColors.dividerDark,
        thickness: AppSizes.dividerThickness,
      ),

      // ─── Bottom Navigation Bar ────────────────────────────────────────────

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.surfaceDark,
        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.grey400,
        elevation: AppSizes.elevationSm,
      ),
    );
  }
}