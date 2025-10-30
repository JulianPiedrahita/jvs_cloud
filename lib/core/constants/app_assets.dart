/// Application assets constants
/// 
/// Centralizes all asset paths to avoid hardcoded strings throughout the app
/// and provides type-safe access to application assets.
class AppAssets {
  AppAssets._(); // Private constructor to prevent instantiation

  /// Images
  static const String _imagesPath = 'assets/images/';
  
  /// Logo and branding assets
  static const String logo = '${_imagesPath}logo.png';
  static const String backgroundImage = '${_imagesPath}fondo.jpg';
  
  /// Project-specific assets
  static const String slacCode = '${_imagesPath}slaccode.png';
  static const String hubFlow = '${_imagesPath}hubflow.png';
  
  /// Icons
  static const String _iconsPath = 'assets/icons/';
  
  /// Animation assets
  static const String _animationsPath = 'assets/animations/';
  
  /// Translation assets
  static const String _translationsPath = 'assets/translations/';
  
  /// Code template assets
  static const String _codeTemplatesPath = 'assets/code_templates/';
  
  /// Helper method to get asset path with validation
  static String getImagePath(String imageName) {
    return '$_imagesPath$imageName';
  }
  
  /// Helper method to get icon path with validation
  static String getIconPath(String iconName) {
    return '$_iconsPath$iconName';
  }
  
  /// Helper method to get animation path with validation
  static String getAnimationPath(String animationName) {
    return '$_animationsPath$animationName';
  }
  
  /// All image assets for validation
  static const List<String> allImages = [
    logo,
    backgroundImage,
    slacCode,
    hubFlow,
  ];
  
  /// Cloud provider logos (if needed in the future)
  static const String awsLogo = '${_imagesPath}aws_logo.png';
  static const String gcpLogo = '${_imagesPath}gcp_logo.png';
  static const String azureLogo = '${_imagesPath}azure_logo.png';
}