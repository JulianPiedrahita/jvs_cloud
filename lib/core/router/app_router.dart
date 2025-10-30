import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../constants/app_constants.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import '../../features/auth/presentation/pages/register_page.dart';
import '../../features/auth/presentation/pages/forgot_password_page.dart';
import '../../features/contact/pages/contact_page.dart';
import '../../features/dashboard/presentation/pages/dashboard_page.dart';
import '../../features/profile/presentation/pages/profile_page.dart';
import '../../features/iac_resources/presentation/pages/iac_resources_page.dart';
import '../../features/cloud_providers/presentation/pages/cloud_providers_page.dart';
import '../../features/splash/presentation/pages/splash_page.dart';

/// Application router configuration using GoRouter
class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutes.dashboard, // Web goes directly to dashboard
    debugLogDiagnostics: true,
    routes: [
        // Splash Route
        GoRoute(
          path: AppRoutes.splash,
          name: 'splash',
          builder: (context, state) => const SplashPage(),
        ),

        // Authentication Routes
        GoRoute(
          path: AppRoutes.login,
          name: 'login',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: AppRoutes.register,
          name: 'register',
          builder: (context, state) => const RegisterPage(),
        ),
        GoRoute(
          path: AppRoutes.forgotPassword,
          name: 'forgot-password',
          builder: (context, state) => const ForgotPasswordPage(),
        ),

        // Contact Route
        GoRoute(
          path: '/contact',
          name: 'contact',
          builder: (context, state) => const ContactPage(),
        ),

        // Main Application Routes
        GoRoute(
          path: AppRoutes.dashboard,
          name: 'dashboard',
          builder: (context, state) => const DashboardPage(),
        ),
        GoRoute(
          path: AppRoutes.profile,
          name: 'profile',
          builder: (context, state) => const ProfilePage(),
        ),

        // IaC Resources Routes
        GoRoute(
          path: AppRoutes.iacResources,
          name: 'iac-resources',
          builder: (context, state) => const IaCResourcesPage(),
          routes: [
            GoRoute(
              path: 'terraform',
              name: 'terraform',
              builder: (context, state) => const TerraformPage(),
            ),
            GoRoute(
              path: 'cloudformation',
              name: 'cloudformation',
              builder: (context, state) => const CloudFormationPage(),
            ),
            GoRoute(
              path: 'bicep',
              name: 'bicep',
              builder: (context, state) => const BicepPage(),
            ),
            GoRoute(
              path: 'pulumi',
              name: 'pulumi',
              builder: (context, state) => const PulumiPage(),
            ),
          ],
        ),

        // Cloud Providers Routes
        GoRoute(
          path: AppRoutes.cloudProviders,
          name: 'cloud-providers',
          builder: (context, state) => const CloudProvidersPage(),
          routes: [
            GoRoute(
              path: 'aws',
              name: 'aws',
              builder: (context, state) => const AWSPage(),
            ),
            GoRoute(
              path: 'gcp',
              name: 'gcp',
              builder: (context, state) => const GCPPage(),
            ),
            GoRoute(
              path: 'azure',
              name: 'azure',
              builder: (context, state) => const AzurePage(),
            ),
          ],
        ),

        // Error Route
        GoRoute(
          path: '/error',
          name: 'error',
          builder: (context, state) => ErrorPage(
            error: state.extra as String? ?? 'Unknown error occurred',
          ),
        ),
      ],
      errorBuilder: (context, state) => ErrorPage(
        error: state.error?.toString() ?? 'Page not found',
      ),
      redirect: (context, state) {
        // TODO: Implement authentication state checking
        // This would check if user is authenticated and redirect accordingly
        return null;
      },
    );
}

/// Error page for handling routing errors
class ErrorPage extends StatelessWidget {
  final String error;

  const ErrorPage({
    super.key,
    required this.error,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Error'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 64,
                color: Theme.of(context).colorScheme.error,
              ),
              const SizedBox(height: 16),
              Text(
                'Oops! Something went wrong',
                style: Theme.of(context).textTheme.headlineSmall,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                error,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              ElevatedButton.icon(
                onPressed: () => context.go(AppRoutes.dashboard),
                icon: const Icon(Icons.home),
                label: const Text('Go to Dashboard'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Placeholder pages for routes that will be implemented
class TerraformPage extends StatelessWidget {
  const TerraformPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Terraform')),
      body: const Center(child: Text('Terraform Resources')),
    );
  }
}

class CloudFormationPage extends StatelessWidget {
  const CloudFormationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('CloudFormation')),
      body: const Center(child: Text('CloudFormation Resources')),
    );
  }
}

class BicepPage extends StatelessWidget {
  const BicepPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Azure Bicep')),
      body: const Center(child: Text('Azure Bicep Resources')),
    );
  }
}

class PulumiPage extends StatelessWidget {
  const PulumiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pulumi')),
      body: const Center(child: Text('Pulumi Resources')),
    );
  }
}

class AWSPage extends StatelessWidget {
  const AWSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Amazon Web Services')),
      body: const Center(child: Text('AWS Resources')),
    );
  }
}

class GCPPage extends StatelessWidget {
  const GCPPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Google Cloud Platform')),
      body: const Center(child: Text('GCP Resources')),
    );
  }
}

class AzurePage extends StatelessWidget {
  const AzurePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Microsoft Azure')),
      body: const Center(child: Text('Azure Resources')),
    );
  }
}