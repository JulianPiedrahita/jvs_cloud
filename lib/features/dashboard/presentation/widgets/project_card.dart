import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../../core/constants/app_breakpoints.dart';

/// A reusable project card widget that displays project information
/// including title, description, technologies, and optional image.
class ProjectCard extends StatelessWidget {
  /// Project title
  final String title;
  
  /// Project description
  final String description;
  
  /// List of technologies used in the project
  final List<String> technologies;
  
  /// Primary color for the card theme
  final Color color;
  
  /// Callback when the card is tapped
  final VoidCallback onTap;
  
  /// Whether this is being displayed on mobile layout
  final bool isMobile;
  
  /// Optional image path for project logo/icon
  final String? imagePath;

  const ProjectCard({
    super.key,
    required this.title,
    required this.description,
    required this.technologies,
    required this.color,
    required this.onTap,
    required this.isMobile,
    this.imagePath,
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _buildImageHeader(),
              const SizedBox(height: 16),
              _buildTitle(),
              const SizedBox(height: 12),
              _buildDescription(),
              const SizedBox(height: 16),
              _buildTechnologies(),
              const Spacer(),
              _buildActionButton(),
            ],
          ),
        ),
      ),
    );
  }

  /// Builds the prominent image header
  Widget _buildImageHeader() {
    // En web, hacer las imágenes más anchas (casi del tamaño de la tarjeta)
    final imageSize = kIsWeb ? 
        (isMobile ? 120.0 : 160.0) : // Web: imágenes más anchas
        80.0; // Otras plataformas: tamaño normal
    
    return Container(
      width: kIsWeb ? double.infinity : imageSize, // Ancho completo en web con padding
      height: imageSize,
      margin: kIsWeb ? const EdgeInsets.symmetric(horizontal: 8) : null, // Pequeña separación en web
      decoration: BoxDecoration(
        color: imagePath != null ? Colors.white : color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: color.withOpacity(0.2),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: imagePath != null ? _buildImage() : _buildFallbackIcon(),
    );
  }

  /// Builds the project image with prominent styling
  Widget _buildImage() {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: Image.asset(
        imagePath!,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => _buildFallbackIcon(),
      ),
    );
  }

  /// Builds the fallback icon when no image is provided
  Widget _buildFallbackIcon() {
    final iconSize = kIsWeb ? (isMobile ? 60.0 : 80.0) : 40.0;
    
    return Icon(
      Icons.folder_open,
      size: iconSize,
      color: color,
    );
  }

  /// Builds the title text (now prominently below image)
  Widget _buildTitle() {
    return Text(
      title,
      style: TextStyle(
        fontSize: isMobile ? 18 : 20,
        fontWeight: FontWeight.bold,
        color: Colors.grey[800],
      ),
      textAlign: TextAlign.center,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }

  /// Builds the description text
  Widget _buildDescription() {
    return Text(
      description,
      style: TextStyle(
        fontSize: isMobile ? 12 : 14,
        color: Colors.grey[600],
        height: 1.4,
      ),
      textAlign: TextAlign.center,
      maxLines: 3,
      overflow: TextOverflow.ellipsis,
    );
  }

  /// Builds the technologies section
  Widget _buildTechnologies() {
    return Column(
      children: [
        Text(
          'Technologies:',
          style: TextStyle(
            fontSize: isMobile ? 10 : 12,
            fontWeight: FontWeight.w600,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8),
        Wrap(
          alignment: WrapAlignment.center,
          spacing: 4,
          runSpacing: 4,
          children: technologies
              .map((tech) => _buildTechnologyChip(tech))
              .toList(),
        ),
      ],
    );
  }

  /// Builds individual technology chip
  Widget _buildTechnologyChip(String technology) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Text(
        technology,
        style: TextStyle(
          fontSize: isMobile ? 10 : 12,
          color: color,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  /// Builds the action button
  Widget _buildActionButton() {
    return Align(
      alignment: Alignment.centerRight,
      child: TextButton.icon(
        onPressed: onTap,
        icon: Icon(Icons.arrow_forward, size: 16, color: color),
        label: Text(
          'View Project',
          style: TextStyle(
            fontSize: isMobile ? 12 : 14,
            color: color,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}