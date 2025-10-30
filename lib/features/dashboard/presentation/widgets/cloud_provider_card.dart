import 'package:flutter/material.dart';
import '../../../../core/constants/app_assets.dart';

/// A reusable cloud provider card widget that displays provider information
/// including logo, title, subtitle and themed styling.
class CloudProviderCard extends StatelessWidget {
  /// Provider title (e.g., "Amazon Web Services")
  final String title;
  
  /// Provider subtitle/description
  final String subtitle;
  
  /// Primary color for the provider theme
  final Color color;
  
  /// Callback when the card is tapped
  final VoidCallback onTap;
  
  /// Optional custom logo asset path
  final String? logoPath;

  const CloudProviderCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.onTap,
    this.logoPath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          width: 300,
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              _buildLogo(),
              const SizedBox(height: 16),
              _buildTitle(),
              const SizedBox(height: 8),
              _buildSubtitle(),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the logo container with shadow effect
  Widget _buildLogo() {
    return Container(
      width: 80,
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: _buildLogoImage(),
      ),
    );
  }

  /// Builds the logo image with fallback
  Widget _buildLogoImage() {
    return Image.asset(
      logoPath ?? AppAssets.logo,
      fit: BoxFit.contain,
      color: color,
      errorBuilder: (context, error, stackTrace) => Icon(
        Icons.cloud,
        color: color,
        size: 40,
      ),
    );
  }

  /// Builds the provider title
  Widget _buildTitle() {
    return Text(
      title,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Colors.grey[800],
      ),
      textAlign: TextAlign.center,
    );
  }

  /// Builds the provider subtitle
  Widget _buildSubtitle() {
    return Text(
      subtitle,
      style: TextStyle(
        fontSize: 14,
        color: Colors.grey[600],
      ),
      textAlign: TextAlign.center,
    );
  }
}