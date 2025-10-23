import 'package:flutter/material.dart';

/// Application-wide constants
class AppConstants {
  // App Information
  static const String appName = 'JVS Cloud';
  static const String appVersion = '1.0.0';
  static const String appDescription = 'IaC & Cloud Management Platform';
  
  // Localization
  static const Locale fallbackLocale = Locale('en', 'US');
  static const List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('es', 'ES'),
  ];
  
  // API Configuration
  static const String baseUrl = 'https://api.jvscloud.com';
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
  static const Duration sendTimeout = Duration(seconds: 30);
  
  // Pagination
  static const int defaultPageSize = 20;
  static const int maxPageSize = 100;
  
  // Cache Configuration
  static const Duration cacheTimeout = Duration(hours: 24);
  static const int maxCacheSize = 100; // MB
  
  // Animation Durations
  static const Duration shortAnimation = Duration(milliseconds: 200);
  static const Duration mediumAnimation = Duration(milliseconds: 300);
  static const Duration longAnimation = Duration(milliseconds: 500);
  
  // UI Constants
  static const double defaultPadding = 16.0;
  static const double defaultMargin = 16.0;
  static const double defaultBorderRadius = 8.0;
  static const double cardElevation = 2.0;
  
  // Responsive Breakpoints
  static const double mobileBreakpoint = 600;
  static const double tabletBreakpoint = 900;
  static const double desktopBreakpoint = 1200;
  
  // Security
  static const Duration sessionTimeout = Duration(hours: 24);
  static const Duration tokenRefreshThreshold = Duration(minutes: 5);
  static const int maxLoginAttempts = 3;
  static const Duration loginLockoutDuration = Duration(minutes: 15);
  
  // Storage Keys
  static const String accessTokenKey = 'access_token';
  static const String refreshTokenKey = 'refresh_token';
  static const String userDataKey = 'user_data';
  static const String themeKey = 'theme_mode';
  static const String languageKey = 'language';
  static const String biometricEnabledKey = 'biometric_enabled';
  
  // Cloud Providers
  static const List<String> supportedCloudProviders = [
    'AWS',
    'Google Cloud Platform',
    'Microsoft Azure',
  ];
  
  // IaC Tools
  static const List<String> supportedIaCTools = [
    'Terraform',
    'CloudFormation',
    'Azure Bicep',
    'Pulumi',
  ];
  
  // Content Categories
  static const List<String> contentCategories = [
    'IaC Fundamentals',
    'Cloud Architecture',
    'DevOps Best Practices',
    'Security & Compliance',
    'Cost Optimization',
    'Monitoring & Observability',
  ];
}

/// Route paths for navigation
class AppRoutes {
  // Authentication
  static const String splash = '/';
  static const String login = '/login';
  static const String register = '/register';
  static const String forgotPassword = '/forgot-password';
  static const String resetPassword = '/reset-password';
  static const String biometricSetup = '/biometric-setup';
  
  // Main Navigation
  static const String dashboard = '/dashboard';
  static const String profile = '/profile';
  static const String settings = '/settings';
  
  // IaC Resources
  static const String iacResources = '/iac-resources';
  static const String iacResourceDetail = '/iac-resources/:id';
  static const String terraform = '/iac-resources/terraform';
  static const String cloudformation = '/iac-resources/cloudformation';
  static const String bicep = '/iac-resources/bicep';
  static const String pulumi = '/iac-resources/pulumi';
  
  // Cloud Providers
  static const String cloudProviders = '/cloud-providers';
  static const String aws = '/cloud-providers/aws';
  static const String gcp = '/cloud-providers/gcp';
  static const String azure = '/cloud-providers/azure';
  
  // Development Practices
  static const String devPractices = '/dev-practices';
  static const String devops = '/dev-practices/devops';
  static const String cicd = '/dev-practices/cicd';
  static const String agile = '/dev-practices/agile';
  static const String cleanCode = '/dev-practices/clean-code';
  
  // Content
  static const String search = '/search';
  static const String favorites = '/favorites';
  static const String articleDetail = '/article/:id';
  static const String codeTemplate = '/template/:id';
  
  // Admin (Future)
  static const String admin = '/admin';
  static const String adminContent = '/admin/content';
  static const String adminUsers = '/admin/users';
  static const String adminAnalytics = '/admin/analytics';
}

/// Asset paths
class AppAssets {
  // Images
  static const String logo = 'assets/images/logo.png';
  static const String logoWhite = 'assets/images/logo_white.png';
  static const String placeholderImage = 'assets/images/placeholder.png';
  
  // Icons
  static const String awsIcon = 'assets/icons/aws.svg';
  static const String gcpIcon = 'assets/icons/gcp.svg';
  static const String azureIcon = 'assets/icons/azure.svg';
  static const String terraformIcon = 'assets/icons/terraform.svg';
  static const String cloudformationIcon = 'assets/icons/cloudformation.svg';
  static const String bicepIcon = 'assets/icons/bicep.svg';
  static const String pulumiIcon = 'assets/icons/pulumi.svg';
  
  // Animations
  static const String loadingAnimation = 'assets/animations/loading.json';
  static const String successAnimation = 'assets/animations/success.json';
  static const String errorAnimation = 'assets/animations/error.json';
  static const String emptyStateAnimation = 'assets/animations/empty_state.json';
  
  // Code Templates
  static const String terraformTemplates = 'assets/code_templates/terraform/';
  static const String cloudformationTemplates = 'assets/code_templates/cloudformation/';
  static const String bicepTemplates = 'assets/code_templates/bicep/';
  static const String pulumiTemplates = 'assets/code_templates/pulumi/';
}

/// Error messages and codes
class AppErrors {
  // Network Errors
  static const String networkError = 'network_error';
  static const String timeoutError = 'timeout_error';
  static const String connectionError = 'connection_error';
  
  // Authentication Errors
  static const String invalidCredentials = 'invalid_credentials';
  static const String accountLocked = 'account_locked';
  static const String sessionExpired = 'session_expired';
  static const String biometricNotAvailable = 'biometric_not_available';
  static const String biometricNotEnrolled = 'biometric_not_enrolled';
  
  // Validation Errors
  static const String invalidEmail = 'invalid_email';
  static const String weakPassword = 'weak_password';
  static const String passwordMismatch = 'password_mismatch';
  static const String requiredField = 'required_field';
  
  // General Errors
  static const String unknownError = 'unknown_error';
  static const String serverError = 'server_error';
  static const String notFound = 'not_found';
  static const String unauthorized = 'unauthorized';
  static const String forbidden = 'forbidden';
}

/// Feature flags for enabling/disabling features
class FeatureFlags {
  static const bool enableBiometricAuth = true;
  static const bool enableDarkMode = true;
  static const bool enablePushNotifications = true;
  static const bool enableOfflineMode = true;
  static const bool enableAnalytics = true;
  static const bool enableCrashReporting = true;
  static const bool enableAdminPanel = false; // Future feature
  static const bool enablePremiumFeatures = false; // Future feature
}