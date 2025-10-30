import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';
import '../../../../core/constants/app_breakpoints.dart';
import '../../../../core/constants/app_assets.dart';
import '../widgets/feature_card.dart';
import '../widgets/cloud_provider_card.dart';
import '../widgets/responsive_project_grid.dart';

/// Dashboard page - FULLY RESPONSIVE for ALL screen sizes (Mobile, Tablet, Desktop, Web)
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: kIsWeb ? BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppAssets.backgroundImage),
            fit: BoxFit.cover,
            opacity: 0.3, // Hacer la imagen más transparente para que el contenido sea legible
          ),
        ) : null,
        child: CustomScrollView(
          slivers: [
          // Header Section - FULLY RESPONSIVE FOR ALL SCREENS
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // RESPONSIVE BREAKPOINTS USING AppBreakpoints
                double screenWidth = constraints.maxWidth;
                bool isExtraSmall = AppBreakpoints.isExtraSmall(screenWidth);
                bool isMobile = AppBreakpoints.isMobile(screenWidth);
                bool isTablet = AppBreakpoints.isTablet(screenWidth);
                bool isDesktop = AppBreakpoints.isDesktop(screenWidth);
                
                return Container(
                  height: isExtraSmall ? 60 : isMobile ? 70 : isTablet ? 80 : 90,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF2196F3), // Blue from logo
                        Color(0xFFFFC107), // Yellow from logo - VISIBLE
                        Color(0xFFFF9800), // Orange from logo
                        Color(0xFF9C27B0), // Purple from logo
                        Color(0xFFE91E63), // Pink/Red from logo
                      ],
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: AppBreakpoints.getHorizontalPadding(screenWidth),
                    ),
                    child: Row(
                      children: [
                        // Logo and title
                        Expanded(
                          child: Row(
                            children: [
                              Container(
                                width: isExtraSmall ? 30 : isMobile ? 35 : isTablet ? 45 : 50,
                                height: isExtraSmall ? 30 : isMobile ? 35 : isTablet ? 45 : 50,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6),
                                  child: Image.asset(
                                    AppAssets.logo,
                                    fit: BoxFit.contain,
                                    errorBuilder: (context, error, stackTrace) => const Icon(
                                      Icons.cloud,
                                      color: Color(0xFF2196F3),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(width: 12),
                              Flexible(
                                child: Text(
                                  isExtraSmall 
                                    ? 'JVS'
                                    : isMobile 
                                      ? 'JVS Cloud'
                                      : isTablet
                                        ? 'JVS Cloud - IaC Platform'
                                        : 'JVS Cloud - Infrastructure as Code Platform',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: isExtraSmall ? 14 : isMobile ? 16 : isTablet ? 18 : 20,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                        ),
                        // Login and Contact buttons
                        Row(
                          children: [
                            ElevatedButton.icon(
                              onPressed: () => context.go('/contact'),
                              icon: Icon(Icons.contact_mail, size: isExtraSmall ? 14 : isMobile ? 16 : 18),
                              label: Text(
                                isExtraSmall ? '' : 'Contáctanos', // Hide text on very small screens
                                style: TextStyle(fontSize: isMobile ? 12 : 14),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white.withOpacity(0.9),
                                foregroundColor: const Color(0xFF2196F3),
                                padding: EdgeInsets.symmetric(
                                  horizontal: isExtraSmall ? 8 : isMobile ? 12 : 16,
                                  vertical: isExtraSmall ? 4 : isMobile ? 6 : 8,
                                ),
                              ),
                            ),
                            const SizedBox(width: 8),
                            ElevatedButton.icon(
                              onPressed: () => context.go(AppRoutes.login),
                              icon: Icon(Icons.login, size: isExtraSmall ? 14 : isMobile ? 16 : 18),
                              label: Text(
                                isExtraSmall ? '' : 'Login', // Hide text on very small screens
                                style: TextStyle(fontSize: isMobile ? 12 : 14),
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: const Color(0xFF2196F3),
                                padding: EdgeInsets.symmetric(
                                  horizontal: isExtraSmall ? 8 : isMobile ? 12 : 16,
                                  vertical: isExtraSmall ? 4 : isMobile ? 6 : 8,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          
          // Hero Section - FULLY RESPONSIVE FOR ALL SCREENS
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // RESPONSIVE BREAKPOINTS USING AppBreakpoints
                double screenWidth = constraints.maxWidth;
                bool isExtraSmall = AppBreakpoints.isExtraSmall(screenWidth);
                bool isMobile = AppBreakpoints.isMobile(screenWidth);
                bool isTablet = AppBreakpoints.isTablet(screenWidth);
                bool isDesktop = AppBreakpoints.isDesktop(screenWidth);
                
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: AppBreakpoints.getVerticalPadding(screenWidth),
                    horizontal: AppBreakpoints.getHorizontalPadding(screenWidth),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          isExtraSmall 
                            ? 'IaC Platform'
                            : isMobile 
                              ? 'IaC Management Platform'
                              : isTablet
                                ? 'Infrastructure as Code Platform'
                                : 'Infrastructure as Code Management Platform',
                          style: TextStyle(
                            fontSize: AppBreakpoints.getTitleFontSize(screenWidth),
                            fontWeight: FontWeight.bold,
                            color: const Color(0xFF2196F3),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: isExtraSmall ? 12 : isMobile ? 16 : isTablet ? 20 : 24),
                        Text(
                          isExtraSmall
                            ? 'Manage cloud infrastructure with IaC tools'
                            : isMobile
                              ? 'Manage cloud infrastructure with Terraform, CloudFormation, Bicep, and Pulumi'
                              : 'Manage your cloud infrastructure with Terraform, CloudFormation, Bicep, and Pulumi',
                          style: TextStyle(
                            fontSize: AppBreakpoints.getSubtitleFontSize(screenWidth),
                            color: Colors.grey[600],
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: isExtraSmall ? 20 : isMobile ? 24 : isTablet ? 32 : 40),
                        // Buttons
                        isMobile
                            ? Column(
                                children: [
                                  // IaC Tools button
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton(
                                      onPressed: () => context.go(AppRoutes.iacResources),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFF2196F3),
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        textStyle: const TextStyle(fontSize: 16),
                                      ),
                                      child: const Text('Explore IaC Tools', style: TextStyle(color: Colors.white)),
                                    ),
                                  ),
                                  const SizedBox(height: 12),
                                  // Cloud Providers button
                                  SizedBox(
                                    width: double.infinity,
                                    child: OutlinedButton(
                                      onPressed: () => context.go(AppRoutes.cloudProviders),
                                      style: OutlinedButton.styleFrom(
                                        side: const BorderSide(color: Color(0xFF2196F3)),
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        textStyle: const TextStyle(fontSize: 16),
                                      ),
                                      child: const Text('Cloud Providers', style: TextStyle(color: Color(0xFF2196F3))),
                                    ),
                                  ),
                                  const SizedBox(height: 16),
                                  // LOGIN BUTTON - PROMINENT
                                  SizedBox(
                                    width: double.infinity,
                                    child: ElevatedButton.icon(
                                      onPressed: () => context.go(AppRoutes.login),
                                      icon: const Icon(Icons.login),
                                      label: const Text('Go to Login'),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color(0xFFFFC107), // Yellow from logo
                                        foregroundColor: const Color(0xFF2196F3),
                                        padding: const EdgeInsets.symmetric(vertical: 16),
                                        textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            : Wrap(
                                alignment: WrapAlignment.center,
                                spacing: 20,
                                runSpacing: 16,
                                children: [
                                  ElevatedButton(
                                    onPressed: () => context.go(AppRoutes.iacResources),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFF2196F3),
                                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                      textStyle: const TextStyle(fontSize: 18),
                                    ),
                                    child: const Text('Explore IaC Tools', style: TextStyle(color: Colors.white)),
                                  ),
                                  OutlinedButton(
                                    onPressed: () => context.go(AppRoutes.cloudProviders),
                                    style: OutlinedButton.styleFrom(
                                      side: const BorderSide(color: Color(0xFF2196F3)),
                                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                      textStyle: const TextStyle(fontSize: 18),
                                    ),
                                    child: const Text('Cloud Providers', style: TextStyle(color: Color(0xFF2196F3))),
                                  ),
                                  ElevatedButton.icon(
                                    onPressed: () => context.go(AppRoutes.login),
                                    icon: const Icon(Icons.login),
                                    label: const Text('Go to Login'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFFFC107), // Yellow from logo
                                      foregroundColor: const Color(0xFF2196F3),
                                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          
          // Features Grid - RESPONSIVE
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) {
                double screenWidth = constraints.maxWidth;
                bool isMobile = AppBreakpoints.isMobile(screenWidth);
                
                int crossAxisCount = AppBreakpoints.getGridColumnCount(screenWidth);
                
                return Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: AppBreakpoints.getHorizontalPadding(screenWidth),
                    vertical: AppBreakpoints.getVerticalPadding(screenWidth),
                  ),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: isMobile ? 3 : 1.2,
                    children: [
                      FeatureCard(
                        icon: Icons.code,
                        title: 'Terraform',
                        description: 'Infrastructure provisioning',
                        color: const Color(0xFF9C27B0), // Purple from logo
                        onTap: () => context.go('/iac-resources/terraform'),
                        isMobile: isMobile,
                      ),
                      FeatureCard(
                        icon: Icons.cloud_queue,
                        title: 'CloudFormation',
                        description: 'AWS native IaC',
                        color: const Color(0xFFFF9800), // Orange from logo
                        onTap: () => context.go('/iac-resources/cloudformation'),
                        isMobile: isMobile,
                      ),
                      FeatureCard(
                        icon: Icons.architecture,
                        title: 'Azure Bicep',
                        description: 'Azure ARM templates',
                        color: const Color(0xFF2196F3), // Blue from logo
                        onTap: () => context.go('/iac-resources/bicep'),
                        isMobile: isMobile,
                      ),
                      FeatureCard(
                        icon: Icons.layers,
                        title: 'Pulumi',
                        description: 'Modern IaC platform',
                        color: const Color(0xFFFFC107), // Yellow from logo
                        onTap: () => context.go('/iac-resources/pulumi'),
                        isMobile: isMobile,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          
          // Cloud Providers Section - RESPONSIVE
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) {
                double screenWidth = constraints.maxWidth;
                bool isMobile = AppBreakpoints.isMobile(screenWidth);
                
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: AppBreakpoints.getVerticalPadding(screenWidth),
                    horizontal: AppBreakpoints.getHorizontalPadding(screenWidth),
                  ),
                  color: kIsWeb ? Colors.transparent : Colors.grey[50], // Transparente en web, gris en otras plataformas
                  child: Column(
                    children: [
                      Text(
                        'Cloud Providers',
                        style: TextStyle(
                          fontSize: AppBreakpoints.getTitleFontSize(screenWidth),
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2196F3),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: isMobile ? 16 : 24),
                      Text(
                        'Connect and manage resources across major cloud platforms',
                        style: TextStyle(
                          fontSize: AppBreakpoints.getSubtitleFontSize(screenWidth),
                          color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: isMobile ? 24 : 40),
                      isMobile
                          ? Column(
                              children: [
                                CloudProviderCard(
                                  title: 'Amazon Web Services',
                                  subtitle: 'Complete AWS services integration',
                                  color: const Color(0xFFFF9800), // Orange from logo
                                  onTap: () => context.go('/cloud-providers/aws'),
                                ),
                                const SizedBox(height: 16),
                                CloudProviderCard(
                                  title: 'Google Cloud Platform',
                                  subtitle: 'GCP services and APIs',
                                  color: const Color(0xFF2196F3), // Blue from logo
                                  onTap: () => context.go('/cloud-providers/gcp'),
                                ),
                                const SizedBox(height: 16),
                                CloudProviderCard(
                                  title: 'Microsoft Azure',
                                  subtitle: 'Azure cloud services',
                                  color: const Color(0xFFE91E63), // Red/Pink from logo
                                  onTap: () => context.go('/cloud-providers/azure'),
                                ),
                                const SizedBox(height: 24),
                                // Mobile Login Button
                                SizedBox(
                                  width: double.infinity,
                                  child: ElevatedButton.icon(
                                    onPressed: () => context.go(AppRoutes.login),
                                    icon: const Icon(Icons.login),
                                    label: const Text('Access Login Portal'),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: const Color(0xFFFFC107), // Yellow from logo
                                      foregroundColor: const Color(0xFF2196F3),
                                      padding: const EdgeInsets.symmetric(vertical: 16),
                                      textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ],
                            )
                          : Wrap(
                              alignment: WrapAlignment.spaceEvenly,
                              spacing: 20,
                              runSpacing: 20,
                              children: [
                                CloudProviderCard(
                                  title: 'Amazon Web Services',
                                  subtitle: 'Complete AWS services integration',
                                  color: const Color(0xFFFF9800), // Orange from logo
                                  onTap: () => context.go('/cloud-providers/aws'),
                                ),
                                CloudProviderCard(
                                  title: 'Google Cloud Platform',
                                  subtitle: 'GCP services and APIs',
                                  color: const Color(0xFF2196F3), // Blue from logo
                                  onTap: () => context.go('/cloud-providers/gcp'),
                                ),
                                CloudProviderCard(
                                  title: 'Microsoft Azure',
                                  subtitle: 'Azure cloud services',
                                  color: const Color(0xFFE91E63), // Red/Pink from logo
                                  onTap: () => context.go('/cloud-providers/azure'),
                                ),
                              ],
                            ),
                    ],
                  ),
                );
              },
            ),
          ),
          
          // Projects Section - RESPONSIVE (WEB ONLY)
          const SliverToBoxAdapter(
            child: ResponsiveProjectGrid(),
          ),
          
          // Footer - RESPONSIVE WITH PROMINENT LOGIN
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) {
                double screenWidth = constraints.maxWidth;
                bool isMobile = AppBreakpoints.isMobile(screenWidth);
                
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: AppBreakpoints.getVerticalPadding(screenWidth),
                    horizontal: AppBreakpoints.getHorizontalPadding(screenWidth),
                  ),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Color(0xFF2196F3), // Blue from logo
                        Color(0xFFFFC107), // Yellow from logo - VISIBLE
                        Color(0xFFFF9800), // Orange from logo
                        Color(0xFF9C27B0), // Purple from logo
                        Color(0xFFE91E63), // Red/Pink from logo
                      ],
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'JVS Cloud Platform',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: isMobile ? 20 : 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: isMobile ? 12 : 16),
                      Text(
                        isMobile 
                          ? 'Infrastructure as Code for all cloud providers'
                          : 'Empowering Infrastructure as Code across all major cloud providers',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: isMobile ? 12 : 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: isMobile ? 20 : 24),
                      // PROMINENT LOGIN BUTTON IN FOOTER
                      SizedBox(
                        width: isMobile ? double.infinity : 300,
                        child: ElevatedButton.icon(
                          onPressed: () => context.go(AppRoutes.login),
                          icon: const Icon(Icons.login, color: Color(0xFF2196F3)),
                          label: const Text(
                            'Login to Platform',
                            style: TextStyle(color: Color(0xFF2196F3), fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                            textStyle: const TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(height: isMobile ? 16 : 20),
                      Text(
                        '© 2025 JVS Cloud. All rights reserved.',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: isMobile ? 12 : 14,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          ],
        ),
      ),
    );
  }

  Widget _buildFeatureCard({
    required IconData icon,
    required String title,
    required String description,
    required Color color,
    required VoidCallback onTap,
    required bool isMobile,
  }) {
    return Card(
      elevation: 8,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: isMobile 
            ? Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Icon(
                      icon,
                      size: 20,
                      color: color,
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[800],
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          description,
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      icon,
                      size: 30,
                      color: color,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[800],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[600],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
        ),
      ),
    );
  }

  Widget _buildCloudProviderCard({
    required String title,
    required String subtitle,
    required Color color,
    required VoidCallback onTap,
  }) {
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
              Container(
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
                  child: Image.asset(
                    'assets/images/logo.png',
                    fit: BoxFit.contain,
                    color: color,
                    errorBuilder: (context, error, stackTrace) => Icon(
                      Icons.cloud,
                      color: color,
                      size: 40,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              Text(
                title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProjectCard({
    required String title,
    required String description,
    required List<String> technologies,
    required Color color,
    required VoidCallback onTap,
    required bool isMobile,
    String? imagePath,
  }) {
    return Card(
      elevation: 8,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header with icon/image
              Row(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: imagePath != null ? Colors.white : color.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: imagePath != null ? [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ] : null,
                    ),
                    child: imagePath != null
                        ? ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Image.asset(
                              imagePath,
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) => Icon(
                                Icons.folder_open,
                                size: 24,
                                color: color,
                              ),
                            ),
                          )
                        : Icon(
                            Icons.folder_open,
                            size: 24,
                            color: color,
                          ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: isMobile ? 16 : 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[800],
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              // Description
              Text(
                description,
                style: TextStyle(
                  fontSize: isMobile ? 12 : 14,
                  color: Colors.grey[600],
                  height: 1.4,
                ),
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 16),
              // Technologies
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
                spacing: 4,
                runSpacing: 4,
                children: technologies.map((tech) => Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: color.withOpacity(0.1),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: color.withOpacity(0.3)),
                  ),
                  child: Text(
                    tech,
                    style: TextStyle(
                      fontSize: isMobile ? 10 : 12,
                      color: color,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )).toList(),
              ),
              const Spacer(),
              // Action button
              Align(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}