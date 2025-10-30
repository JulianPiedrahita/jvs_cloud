import 'package:flutter/material.dart';

/// Color scheme based on the vibrant logo colors
/// This defines the primary color palette extracted from the logo:
/// - Blues, purples, oranges, yellows, and reds/pinks
class AppColors {
  // Primary Brand Colors from Logo
  static const Color primaryBlue = Color(0xFF2196F3);
  static const Color primaryPurple = Color(0xFF9C27B0);
  static const Color primaryOrange = Color(0xFFFF9800);
  static const Color primaryYellow = Color(0xFFFFC107);
  static const Color primaryRed = Color(0xFFE91E63);
  
  // Gradient Colors for Dynamic Backgrounds - ALL LOGO COLORS
  static const List<Color> primaryGradient = [
    Color(0xFF2196F3), // Blue from logo
    Color(0xFFFFC107), // Yellow from logo - NOW VISIBLE
    Color(0xFFFF9800), // Orange from logo
    Color(0xFF9C27B0), // Purple from logo
    Color(0xFFE91E63), // Pink/Red from logo
  ];
  
  static const List<Color> secondaryGradient = [
    Color(0xFFFFC107), // Yellow from logo - HIGHLIGHTED
    Color(0xFFFF9800), // Orange from logo
    Color(0xFFE91E63), // Pink from logo
  ];
  
  // Full logo gradient for complete brand representation
  static const List<Color> logoCompleteGradient = [
    Color(0xFF2196F3), // Blue
    Color(0xFFFFC107), // Yellow - VISIBLE NOW
    Color(0xFFFF9800), // Orange
    Color(0xFF9C27B0), // Purple  
    Color(0xFFE91E63), // Pink/Red
  ];
  
  static const List<Color> accentGradient = [
    Color(0xFF9C27B0), // Purple
    Color(0xFF2196F3), // Blue
    Color(0xFF00BCD4), // Cyan
  ];
  
  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color grey50 = Color(0xFFFAFAFA);
  static const Color grey100 = Color(0xFFF5F5F5);
  static const Color grey200 = Color(0xFFEEEEEE);
  static const Color grey300 = Color(0xFFE0E0E0);
  static const Color grey400 = Color(0xFFBDBDBD);
  static const Color grey500 = Color(0xFF9E9E9E);
  static const Color grey600 = Color(0xFF757575);
  static const Color grey700 = Color(0xFF616161);
  static const Color grey800 = Color(0xFF424242);
  static const Color grey900 = Color(0xFF212121);
  
  // Semantic Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color warning = Color(0xFFFFC107);
  static const Color error = Color(0xFFF44336);
  static const Color info = Color(0xFF2196F3);
  
  // Surface Colors for Light Theme
  static const Color surfaceLight = Color(0xFFFFFFFF);
  static const Color backgroundLight = Color(0xFFFAFAFA);
  static const Color cardLight = Color(0xFFFFFFFF);
  
  // Surface Colors for Dark Theme
  static const Color surfaceDark = Color(0xFF121212);
  static const Color backgroundDark = Color(0xFF000000);
  static const Color cardDark = Color(0xFF1E1E1E);
  
  // Text Colors
  static const Color textPrimaryLight = Color(0xFF212121);
  static const Color textSecondaryLight = Color(0xFF757575);
  static const Color textPrimaryDark = Color(0xFFFFFFFF);
  static const Color textSecondaryDark = Color(0xFFB3B3B3);
  
  // Cloud Provider Brand Colors
  static const Color awsOrange = Color(0xFFFF9900);
  static const Color gcpBlue = Color(0xFF4285F4);
  static const Color azureBlue = Color(0xFF0078D4);
  
  // IaC Tool Colors
  static const Color terraformPurple = Color(0xFF623CE4);
  static const Color cloudFormationOrange = Color(0xFFFF9900);
  static const Color bicepBlue = Color(0xFF0078D4);
  static const Color pulumiPurple = Color(0xFF8A2BE2);
}

/// Application theme configuration
class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryBlue,
        brightness: Brightness.light,
        primary: AppColors.primaryBlue,
        secondary: AppColors.primaryPurple,
        tertiary: AppColors.primaryOrange,
        surface: AppColors.surfaceLight,
        onSurface: AppColors.textPrimaryLight,
        error: AppColors.error,
      ),
      
      // App Bar Theme
      appBarTheme: const AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 1,
        backgroundColor: AppColors.surfaceLight,
        foregroundColor: AppColors.textPrimaryLight,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimaryLight,
        ),
      ),
      
      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      
      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.grey300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.grey300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primaryBlue, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.error),
        ),
        filled: true,
        fillColor: AppColors.grey50,
      ),
      
      // Text Theme
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: AppColors.textPrimaryLight),
        displayMedium: TextStyle(color: AppColors.textPrimaryLight),
        displaySmall: TextStyle(color: AppColors.textPrimaryLight),
        headlineLarge: TextStyle(color: AppColors.textPrimaryLight),
        headlineMedium: TextStyle(color: AppColors.textPrimaryLight),
        headlineSmall: TextStyle(color: AppColors.textPrimaryLight),
        titleLarge: TextStyle(color: AppColors.textPrimaryLight),
        titleMedium: TextStyle(color: AppColors.textPrimaryLight),
        titleSmall: TextStyle(color: AppColors.textPrimaryLight),
        bodyLarge: TextStyle(color: AppColors.textPrimaryLight),
        bodyMedium: TextStyle(color: AppColors.textPrimaryLight),
        bodySmall: TextStyle(color: AppColors.textSecondaryLight),
        labelLarge: TextStyle(color: AppColors.textPrimaryLight),
        labelMedium: TextStyle(color: AppColors.textPrimaryLight),
        labelSmall: TextStyle(color: AppColors.textSecondaryLight),
      ),
    );
  }
  
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primaryBlue,
        brightness: Brightness.dark,
        primary: AppColors.primaryBlue,
        secondary: AppColors.primaryPurple,
        tertiary: AppColors.primaryOrange,
        surface: AppColors.surfaceDark,
        onSurface: AppColors.textPrimaryDark,
        error: AppColors.error,
      ),
      
      // App Bar Theme
      appBarTheme: const AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 1,
        backgroundColor: AppColors.surfaceDark,
        foregroundColor: AppColors.textPrimaryDark,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w600,
          color: AppColors.textPrimaryDark,
        ),
      ),
      
      // Elevated Button Theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ),
      
      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.grey600),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.grey600),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.primaryBlue, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(color: AppColors.error),
        ),
        filled: true,
        fillColor: AppColors.grey800,
      ),
      
      // Text Theme
      textTheme: const TextTheme(
        displayLarge: TextStyle(color: AppColors.textPrimaryDark),
        displayMedium: TextStyle(color: AppColors.textPrimaryDark),
        displaySmall: TextStyle(color: AppColors.textPrimaryDark),
        headlineLarge: TextStyle(color: AppColors.textPrimaryDark),
        headlineMedium: TextStyle(color: AppColors.textPrimaryDark),
        headlineSmall: TextStyle(color: AppColors.textPrimaryDark),
        titleLarge: TextStyle(color: AppColors.textPrimaryDark),
        titleMedium: TextStyle(color: AppColors.textPrimaryDark),
        titleSmall: TextStyle(color: AppColors.textPrimaryDark),
        bodyLarge: TextStyle(color: AppColors.textPrimaryDark),
        bodyMedium: TextStyle(color: AppColors.textPrimaryDark),
        bodySmall: TextStyle(color: AppColors.textSecondaryDark),
        labelLarge: TextStyle(color: AppColors.textPrimaryDark),
        labelMedium: TextStyle(color: AppColors.textPrimaryDark),
        labelSmall: TextStyle(color: AppColors.textSecondaryDark),
      ),
    );
  }
}