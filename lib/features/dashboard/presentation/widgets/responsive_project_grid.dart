import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../../../core/constants/app_breakpoints.dart';
import '../../../../core/constants/app_assets.dart';
import 'project_card.dart';

/// A responsive grid widget that displays project cards
/// Only visible on web platform using kIsWeb detection.
class ResponsiveProjectGrid extends StatelessWidget {
  const ResponsiveProjectGrid({super.key});

  @override
  Widget build(BuildContext context) {
    // Only show on web platform
    if (!kIsWeb) return const SizedBox.shrink();

    return LayoutBuilder(
      builder: (context, constraints) {
        final screenWidth = constraints.maxWidth;
        final isMobile = AppBreakpoints.isMobile(screenWidth);
        final isTablet = AppBreakpoints.isTablet(screenWidth);

        return Container(
          padding: EdgeInsets.symmetric(
            vertical: AppBreakpoints.getVerticalPadding(screenWidth),
            horizontal: AppBreakpoints.getHorizontalPadding(screenWidth),
          ),
          child: Column(
            children: [
              _buildHeader(screenWidth),
              SizedBox(height: isMobile ? 24 : 40),
              _buildProjectGrid(screenWidth, isMobile, isTablet),
            ],
          ),
        );
      },
    );
  }

  /// Builds the section header
  Widget _buildHeader(double screenWidth) {
    final isMobile = AppBreakpoints.isMobile(screenWidth);
    
    return Column(
      children: [
        Text(
          'Projects',
          style: TextStyle(
            fontSize: AppBreakpoints.getTitleFontSize(screenWidth),
            fontWeight: FontWeight.bold,
            color: const Color(0xFF2196F3),
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: isMobile ? 16 : 24),
        Text(
          'Discover our latest Infrastructure as Code projects and templates',
          style: TextStyle(
            fontSize: AppBreakpoints.getSubtitleFontSize(screenWidth),
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  /// Builds the responsive project grid
  Widget _buildProjectGrid(double screenWidth, bool isMobile, bool isTablet) {
    final projectData = _getProjectData();
    
    if (isMobile) {
      return _buildMobileLayout(projectData, screenWidth);
    } else {
      return _buildGridLayout(projectData, screenWidth, isTablet);
    }
  }

  /// Builds mobile layout (column)
  Widget _buildMobileLayout(List<ProjectData> projects, double screenWidth) {
    final isMobile = AppBreakpoints.isMobile(screenWidth);
    
    return Column(
      children: projects.asMap().entries.map((entry) {
        final index = entry.key;
        final project = entry.value;
        
        return Column(
          children: [
            if (index > 0) const SizedBox(height: 16),
            ProjectCard(
              title: project.title,
              description: project.description,
              technologies: project.technologies,
              color: project.color,
              onTap: project.onTap,
              isMobile: isMobile,
              imagePath: project.imagePath,
            ),
          ],
        );
      }).toList(),
    );
  }

  /// Builds grid layout (desktop/tablet)
  Widget _buildGridLayout(List<ProjectData> projects, double screenWidth, bool isTablet) {
    final crossAxisCount = AppBreakpoints.getGridColumnCount(screenWidth);
    final isMobile = AppBreakpoints.isMobile(screenWidth);
    
    // Ajustar aspect ratio para acomodar imágenes más grandes en web
    final aspectRatio = isMobile ? 0.8 : 0.75; // Más alto para imágenes anchas
    
    return GridView.count(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: crossAxisCount,
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      childAspectRatio: aspectRatio,
      children: projects.map((project) {
        return ProjectCard(
          title: project.title,
          description: project.description,
          technologies: project.technologies,
          color: project.color,
          onTap: project.onTap,
          isMobile: isMobile,
          imagePath: project.imagePath,
        );
      }).toList(),
    );
  }

  /// Gets the project data
  List<ProjectData> _getProjectData() {
    return [
      ProjectData(
        title: 'Multi-Cloud Infrastructure',
        description: 'Complete infrastructure setup for AWS, Azure, and GCP',
        technologies: ['Terraform', 'CloudFormation', 'Bicep'],
        color: const Color(0xFF9C27B0), // Purple from logo
        imagePath: AppAssets.slacCode,
        onTap: () {}, // TODO: Add navigation
      ),
      ProjectData(
        title: 'Kubernetes Deployment',
        description: 'Scalable containerized applications with auto-scaling',
        technologies: ['Terraform', 'Helm', 'Docker'],
        color: const Color(0xFFFF9800), // Orange from logo
        imagePath: AppAssets.hubFlow,
        onTap: () {}, // TODO: Add navigation
      ),
      ProjectData(
        title: 'Serverless Architecture',
        description: 'Event-driven serverless solutions with monitoring',
        technologies: ['Pulumi', 'AWS Lambda', 'Azure Functions'],
        color: const Color(0xFFE91E63), // Red/Pink from logo
        onTap: () {}, // TODO: Add navigation
      ),
      ProjectData(
        title: 'CI/CD Pipeline',
        description: 'Automated deployment pipelines with security scanning',
        technologies: ['GitHub Actions', 'Azure DevOps', 'Jenkins'],
        color: const Color(0xFFFFC107), // Yellow from logo
        onTap: () {}, // TODO: Add navigation
      ),
    ];
  }
}

/// Data class for project information
class ProjectData {
  final String title;
  final String description;
  final List<String> technologies;
  final Color color;
  final String? imagePath;
  final VoidCallback onTap;

  const ProjectData({
    required this.title,
    required this.description,
    required this.technologies,
    required this.color,
    required this.onTap,
    this.imagePath,
  });
}