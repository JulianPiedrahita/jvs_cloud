import 'package:flutter/material.dart';
import '../../../../core/constants/app_breakpoints.dart';

/// A reusable feature card widget that displays feature information
/// including icon, title, and description with responsive layout.
class FeatureCard extends StatelessWidget {
  /// Feature icon
  final IconData icon;
  
  /// Feature title
  final String title;
  
  /// Feature description
  final String description;
  
  /// Primary color for the card theme
  final Color color;
  
  /// Callback when the card is tapped
  final VoidCallback onTap;
  
  /// Whether this is being displayed on mobile layout
  final bool isMobile;

  const FeatureCard({
    super.key,
    required this.icon,
    required this.title,
    required this.description,
    required this.color,
    required this.onTap,
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
        ),
      ),
    );
  }

  /// Builds the mobile layout (horizontal row)
  Widget _buildMobileLayout() {
    return Row(
      children: [
        _buildIconContainer(size: 40, iconSize: 20),
        const SizedBox(width: 12),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildTitle(fontSize: 16),
              const SizedBox(height: 4),
              _buildDescription(fontSize: 12),
            ],
          ),
        ),
      ],
    );
  }

  /// Builds the desktop layout (vertical column)
  Widget _buildDesktopLayout() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildIconContainer(size: 60, iconSize: 30),
        const SizedBox(height: 16),
        _buildTitle(fontSize: 18),
        const SizedBox(height: 8),
        _buildDescription(fontSize: 14),
      ],
    );
  }

  /// Builds the icon container
  Widget _buildIconContainer({required double size, required double iconSize}) {
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(isMobile ? 8 : 12),
      ),
      child: Icon(
        icon,
        size: iconSize,
        color: color,
      ),
    );
  }

  /// Builds the title text
  Widget _buildTitle({required double fontSize}) {
    return Text(
      title,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.grey[800],
      ),
      textAlign: isMobile ? TextAlign.start : TextAlign.center,
    );
  }

  /// Builds the description text
  Widget _buildDescription({required double fontSize}) {
    return Text(
      description,
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.grey[600],
      ),
      textAlign: isMobile ? TextAlign.start : TextAlign.center,
    );
  }
}