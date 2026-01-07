import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primary = Color(0xFF4C6EF5);
  static const Color primaryLight = Color(0xFF748FFC);
  static const Color primaryDark = Color(0xFF3B5BDB);

  // Secondary Colors
  static const Color secondary = Color(0xFF7C3AED);
  static const Color secondaryLight = Color(0xFF9333EA);
  static const Color secondaryDark = Color(0xFF6D28D9);

  // Background Colors
  static const Color background = Color(0xFFF5F5F5);
  static const Color surface = Color(0xFFFFFFFF);

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF666666);
  static const Color textHint = Color(0xFFAAAAAA);
  static const Color textLight = Color(0xFFFFFFFF);

  // Border Colors
  static const Color border = Color(0xFFE0E0E0);
  static const Color borderLight = Color(0xFFCCCCCC);

  // Status Colors
  static const Color success = Color(0xFF10B981);
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);
  static const Color info = Color(0xFF3B82F6);

  // Social Media Colors
  static const Color facebook = Color(0xFF1877F2);
  static const Color google = Color(0xFF4285F4);
  static const Color apple = Color(0xFF000000);

  // Other Colors
  static const Color grey = Color(0xFF999999);
  static const Color greyLight = Color(0xFFE5E5E5);
  static const Color shadow = Color(0x14000000);
  static const Color accentLavender = Color(0xFFC19BEC);
}

class AppFonts {
  static const String primary = 'Poppins';

  // Font Weights
  static const FontWeight light = FontWeight.w300;
  static const FontWeight regular = FontWeight.w400;
  static const FontWeight medium = FontWeight.w500;
  static const FontWeight semiBold = FontWeight.w600;
  static const FontWeight bold = FontWeight.w700;
  static const FontWeight extraBold = FontWeight.w800;

  // Font Sizes
  static const double size10 = 10.0;
  static const double size12 = 12.0;
  static const double size14 = 14.0;
  static const double size15 = 15.0;
  static const double size16 = 16.0;
  static const double size18 = 18.0;
  static const double size20 = 20.0;
  static const double size24 = 24.0;
  static const double size28 = 28.0;
  static const double size32 = 32.0;
}

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: AppColors.primary,
      scaffoldBackgroundColor: AppColors.background,
      fontFamily: AppFonts.primary,

      colorScheme: const ColorScheme.light(
        primary: AppColors.primary,
        secondary: AppColors.secondary,
        surface: AppColors.surface,
        background: AppColors.background,
        error: AppColors.error,
        onPrimary: AppColors.textLight,
        onSecondary: AppColors.textLight,
        onSurface: AppColors.textPrimary,
        onBackground: AppColors.textPrimary,
        onError: AppColors.textLight,
      ),

      // AppBar Theme
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.textLight),
        titleTextStyle: TextStyle(
          color: AppColors.textLight,
          fontSize: AppFonts.size20,
          fontWeight: AppFonts.semiBold,
          fontFamily: AppFonts.primary,
        ),
      ),

      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primary,
          foregroundColor: AppColors.textLight,
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          textStyle: const TextStyle(
            fontSize: AppFonts.size16,
            fontWeight: AppFonts.semiBold,
            fontFamily: AppFonts.primary,
          ),
        ),
      ),

      // Text Button Theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.primary,
          textStyle: const TextStyle(
            fontSize: AppFonts.size14,
            fontWeight: AppFonts.semiBold,
            fontFamily: AppFonts.primary,
          ),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.border, width: 1),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.border, width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: AppColors.error, width: 1),
        ),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 18,
        ),
        hintStyle: const TextStyle(
          color: AppColors.textHint,
          fontSize: AppFonts.size16,
          fontWeight: AppFonts.regular,
        ),
      ),

      // Card Theme
      // cardTheme: CardTheme(
      //   color: AppColors.surface,
      //   elevation: 2,
      //   shadowColor: AppColors.shadow,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(16),
      //   ),
      // ),

      // Icon Theme
      iconTheme: const IconThemeData(color: AppColors.textSecondary, size: 24),

      // Text Theme
      textTheme: const TextTheme(
        displayLarge: TextStyle(
          fontSize: AppFonts.size32,
          fontWeight: AppFonts.bold,
          color: AppColors.textPrimary,
        ),
        displayMedium: TextStyle(
          fontSize: AppFonts.size28,
          fontWeight: AppFonts.bold,
          color: AppColors.textPrimary,
        ),
        displaySmall: TextStyle(
          fontSize: AppFonts.size24,
          fontWeight: AppFonts.bold,
          color: AppColors.textPrimary,
        ),
        headlineLarge: TextStyle(
          fontSize: AppFonts.size32,
          fontWeight: AppFonts.bold,
          color: AppColors.primary,
        ),
        headlineMedium: TextStyle(
          fontSize: AppFonts.size20,
          fontWeight: AppFonts.bold,
          color: AppColors.primary,
        ),
        headlineSmall: TextStyle(
          fontSize: AppFonts.size18,
          fontWeight: AppFonts.semiBold,
          color: AppColors.textPrimary,
        ),
        titleLarge: TextStyle(
          fontSize: AppFonts.size18,
          fontWeight: AppFonts.bold,
          color: AppColors.textPrimary,
        ),
        titleMedium: TextStyle(
          fontSize: AppFonts.size16,
          fontWeight: AppFonts.semiBold,
          color: AppColors.textPrimary,
        ),
        titleSmall: TextStyle(
          fontSize: AppFonts.size14,
          fontWeight: AppFonts.medium,
          color: AppColors.textPrimary,
        ),
        bodyLarge: TextStyle(
          fontSize: AppFonts.size16,
          fontWeight: AppFonts.regular,
          color: AppColors.textPrimary,
        ),
        bodyMedium: TextStyle(
          fontSize: AppFonts.size14,
          fontWeight: AppFonts.regular,
          color: AppColors.textSecondary,
        ),
        bodySmall: TextStyle(
          fontSize: AppFonts.size12,
          fontWeight: AppFonts.regular,
          color: AppColors.textSecondary,
        ),
        labelLarge: TextStyle(
          fontSize: AppFonts.size16,
          fontWeight: AppFonts.semiBold,
          color: AppColors.textLight,
        ),
        labelMedium: TextStyle(
          fontSize: AppFonts.size14,
          fontWeight: AppFonts.medium,
          color: AppColors.textSecondary,
        ),
        labelSmall: TextStyle(
          fontSize: AppFonts.size12,
          fontWeight: AppFonts.regular,
          color: AppColors.textSecondary,
        ),
      ),

      // Checkbox Theme
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.resolveWith<Color>((states) {
          if (states.contains(MaterialState.selected)) {
            return AppColors.primary;
          }
          return AppColors.surface;
        }),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        side: const BorderSide(color: AppColors.borderLight, width: 1.5),
      ),
    );
  }
}
