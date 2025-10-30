/// Responsive breakpoints for the application
/// 
/// Defines consistent screen size breakpoints used throughout the app
/// for responsive design implementation.
class AppBreakpoints {
  AppBreakpoints._(); // Private constructor to prevent instantiation

  /// Extra small devices (small phones)
  static const double extraSmall = 480;

  /// Mobile devices (phones)
  static const double mobile = 768;

  /// Tablet devices
  static const double tablet = 1024;

  /// Desktop devices
  static const double desktop = 1440;

  /// Large desktop devices
  static const double largeDesktop = 1920;

  /// Helper methods for responsive checks
  static bool isExtraSmall(double width) => width < extraSmall;
  static bool isMobile(double width) => width < mobile;
  static bool isTablet(double width) => width >= mobile && width < desktop;
  static bool isDesktop(double width) => width >= desktop && width < largeDesktop;
  static bool isLargeDesktop(double width) => width >= largeDesktop;

  /// Get responsive padding based on screen width
  static double getHorizontalPadding(double width) {
    if (isExtraSmall(width)) return 12;
    if (isMobile(width)) return 16;
    if (isTablet(width)) return 24;
    if (isDesktop(width)) return 32;
    return 48; // Large desktop
  }

  /// Get responsive vertical padding based on screen width
  static double getVerticalPadding(double width) {
    if (isExtraSmall(width)) return 16;
    if (isMobile(width)) return 20;
    if (isTablet(width)) return 32;
    if (isDesktop(width)) return 40;
    return 60; // Large desktop
  }

  /// Get responsive font size for titles
  static double getTitleFontSize(double width) {
    if (isExtraSmall(width)) return 20;
    if (isMobile(width)) return 24;
    if (isTablet(width)) return 36;
    if (isDesktop(width)) return 48;
    return 56; // Large desktop
  }

  /// Get responsive font size for subtitles
  static double getSubtitleFontSize(double width) {
    if (isExtraSmall(width)) return 12;
    if (isMobile(width)) return 14;
    if (isTablet(width)) return 16;
    if (isDesktop(width)) return 18;
    return 20; // Large desktop
  }

  /// Get grid column count for responsive grids
  static int getGridColumnCount(double width) {
    if (isMobile(width)) return 1;
    if (isTablet(width)) return 2;
    return 4; // Desktop and above
  }
}