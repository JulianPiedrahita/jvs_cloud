import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/constants/app_constants.dart';

/// Dashboard page - SIMPLE VERSION THAT WORKS
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('JVS Cloud Dashboard'),
        backgroundColor: const Color(0xFF2196F3),
        foregroundColor: Colors.white,
        actions: [
          ElevatedButton(
            onPressed: () => context.go(AppRoutes.login),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: const Color(0xFF2196F3),
            ),
            child: const Text('Login'),
          ),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Hero Section
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color(0xFF2196F3),
                    Color(0xFFFFC107),
                    Color(0xFFFF9800),
                    Color(0xFF9C27B0),
                    Color(0xFFE91E63),
                  ],
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                children: [
                  const Text(
                    'Infrastructure as Code Management Platform',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'Manage your cloud infrastructure with Terraform, CloudFormation, Bicep, and Pulumi',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white70,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton.icon(
                    onPressed: () => context.go(AppRoutes.login),
                    icon: const Icon(Icons.login),
                    label: const Text('GO TO LOGIN'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: const Color(0xFF2196F3),
                      padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
                      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Features Section
            const Text(
              'Infrastructure as Code Tools',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2196F3),
              ),
            ),
            const SizedBox(height: 16),
            
            // Simple Grid
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                _buildSimpleCard(
                  'Terraform',
                  'Infrastructure provisioning',
                  Icons.code,
                  const Color(0xFF9C27B0),
                  () => context.go('/iac-resources/terraform'),
                ),
                _buildSimpleCard(
                  'CloudFormation',
                  'AWS native IaC',
                  Icons.cloud_queue,
                  const Color(0xFFFF9800),
                  () => context.go('/iac-resources/cloudformation'),
                ),
                _buildSimpleCard(
                  'Azure Bicep',
                  'Azure ARM templates',
                  Icons.architecture,
                  const Color(0xFF2196F3),
                  () => context.go('/iac-resources/bicep'),
                ),
                _buildSimpleCard(
                  'Pulumi',
                  'Modern IaC platform',
                  Icons.layers,
                  const Color(0xFFFFC107),
                  () => context.go('/iac-resources/pulumi'),
                ),
              ],
            ),
            
            const SizedBox(height: 32),
            
            // Cloud Providers Section
            const Text(
              'Cloud Providers',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF2196F3),
              ),
            ),
            const SizedBox(height: 16),
            
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                _buildSimpleCard(
                  'Amazon Web Services',
                  'Complete AWS services',
                  Icons.cloud,
                  const Color(0xFFFF9800),
                  () => context.go('/cloud-providers/aws'),
                ),
                _buildSimpleCard(
                  'Google Cloud Platform',
                  'GCP services and APIs',
                  Icons.cloud,
                  const Color(0xFF2196F3),
                  () => context.go('/cloud-providers/gcp'),
                ),
                _buildSimpleCard(
                  'Microsoft Azure',
                  'Azure cloud services',
                  Icons.cloud,
                  const Color(0xFFE91E63),
                  () => context.go('/cloud-providers/azure'),
                ),
              ],
            ),
            
            const SizedBox(height: 48),
            
            // Final Login Button
            Center(
              child: SizedBox(
                width: 300,
                child: ElevatedButton.icon(
                  onPressed: () => context.go(AppRoutes.login),
                  icon: const Icon(Icons.login),
                  label: const Text('ACCESS LOGIN PORTAL'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFFFC107),
                    foregroundColor: const Color(0xFF2196F3),
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            
            const SizedBox(height: 32),
            
            // Footer
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: const Color(0xFF2196F3),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Column(
                children: [
                  Text(
                    'JVS Cloud Platform',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    '© 2025 JVS Cloud. All rights reserved.',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSimpleCard(
    String title,
    String description,
    IconData icon,
    Color color,
    VoidCallback onTap,
  ) {
    return SizedBox(
      width: 280,
      child: Card(
        elevation: 4,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(8),
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
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
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
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
      ),
    );
  }
}