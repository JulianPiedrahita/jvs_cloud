import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';

/// Dashboard page - FULLY RESPONSIVE for ALL screen sizes (Mobile, Tablet, Desktop, Web)
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Header Section - FULLY RESPONSIVE FOR ALL SCREENS
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) {
                // COMPREHENSIVE RESPONSIVE BREAKPOINTS for ALL SCREEN SIZES
                double screenWidth = constraints.maxWidth;
                bool isExtraSmall = screenWidth < 480;  // Small phones
                bool isMobile = screenWidth < 768;      // Mobile devices
                bool isTablet = screenWidth < 1024;     // Tablets
                bool isDesktop = screenWidth < 1440;    // Standard desktop
                bool isLargeDesktop = screenWidth >= 1440; // Large desktop
                
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
                      horizontal: isExtraSmall ? 12 : isMobile ? 16 : isTablet ? 24 : isDesktop ? 32 : 48,
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
                                    'assets/images/logo.png',
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
                // COMPREHENSIVE RESPONSIVE BREAKPOINTS for ALL SCREEN SIZES
                double screenWidth = constraints.maxWidth;
                bool isExtraSmall = screenWidth < 480;  // Small phones
                bool isMobile = screenWidth < 768;      // Mobile devices
                bool isTablet = screenWidth < 1024;     // Tablets
                bool isDesktop = screenWidth < 1440;    // Standard desktop
                bool isLargeDesktop = screenWidth >= 1440; // Large desktop
                
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: isExtraSmall ? 30 : isMobile ? 40 : isTablet ? 60 : isDesktop ? 80 : 100,
                    horizontal: isExtraSmall ? 16 : isMobile ? 20 : isTablet ? 40 : isDesktop ? 60 : 80,
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
                            fontSize: isExtraSmall ? 20 : isMobile ? 24 : isTablet ? 36 : isDesktop ? 48 : 56,
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
                            fontSize: isExtraSmall ? 12 : isMobile ? 14 : isTablet ? 16 : isDesktop ? 18 : 20,
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
                bool isMobile = constraints.maxWidth < 768;
                bool isTablet = constraints.maxWidth < 1024;
                
                int crossAxisCount;
                if (isMobile) {
                  crossAxisCount = 1;
                } else if (isTablet) {
                  crossAxisCount = 2;
                } else {
                  crossAxisCount = 4;
                }
                
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: GridView.count(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    crossAxisCount: crossAxisCount,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    childAspectRatio: isMobile ? 3 : 1.2,
                    children: [
                      _buildFeatureCard(
                        icon: Icons.code,
                        title: 'Terraform',
                        description: 'Infrastructure provisioning',
                        color: const Color(0xFF9C27B0), // Purple from logo
                        onTap: () => context.go('/iac-resources/terraform'),
                        isMobile: isMobile,
                      ),
                      _buildFeatureCard(
                        icon: Icons.cloud_queue,
                        title: 'CloudFormation',
                        description: 'AWS native IaC',
                        color: const Color(0xFFFF9800), // Orange from logo
                        onTap: () => context.go('/iac-resources/cloudformation'),
                        isMobile: isMobile,
                      ),
                      _buildFeatureCard(
                        icon: Icons.architecture,
                        title: 'Azure Bicep',
                        description: 'Azure ARM templates',
                        color: const Color(0xFF2196F3), // Blue from logo
                        onTap: () => context.go('/iac-resources/bicep'),
                        isMobile: isMobile,
                      ),
                      _buildFeatureCard(
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
                bool isMobile = constraints.maxWidth < 768;
                
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: isMobile ? 40 : 80,
                    horizontal: isMobile ? 20 : 40,
                  ),
                  color: Colors.grey[50],
                  child: Column(
                    children: [
                      Text(
                        'Cloud Providers',
                        style: TextStyle(
                          fontSize: isMobile ? 24 : 36,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF2196F3),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: isMobile ? 16 : 24),
                      Text(
                        'Connect and manage resources across major cloud platforms',
                        style: TextStyle(
                          fontSize: isMobile ? 14 : 18,
                          color: Colors.grey[600],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: isMobile ? 24 : 40),
                      isMobile
                          ? Column(
                              children: [
                                _buildCloudProviderCard(
                                  title: 'Amazon Web Services',
                                  subtitle: 'Complete AWS services integration',
                                  color: const Color(0xFFFF9800), // Orange from logo
                                  onTap: () => context.go('/cloud-providers/aws'),
                                ),
                                const SizedBox(height: 16),
                                _buildCloudProviderCard(
                                  title: 'Google Cloud Platform',
                                  subtitle: 'GCP services and APIs',
                                  color: const Color(0xFF2196F3), // Blue from logo
                                  onTap: () => context.go('/cloud-providers/gcp'),
                                ),
                                const SizedBox(height: 16),
                                _buildCloudProviderCard(
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
                                _buildCloudProviderCard(
                                  title: 'Amazon Web Services',
                                  subtitle: 'Complete AWS services integration',
                                  color: const Color(0xFFFF9800), // Orange from logo
                                  onTap: () => context.go('/cloud-providers/aws'),
                                ),
                                _buildCloudProviderCard(
                                  title: 'Google Cloud Platform',
                                  subtitle: 'GCP services and APIs',
                                  color: const Color(0xFF2196F3), // Blue from logo
                                  onTap: () => context.go('/cloud-providers/gcp'),
                                ),
                                _buildCloudProviderCard(
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
          
          // Footer - RESPONSIVE WITH PROMINENT LOGIN
          SliverToBoxAdapter(
            child: LayoutBuilder(
              builder: (context, constraints) {
                bool isMobile = constraints.maxWidth < 768;
                
                return Container(
                  padding: EdgeInsets.symmetric(
                    vertical: isMobile ? 30 : 40,
                    horizontal: isMobile ? 20 : 40,
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
}