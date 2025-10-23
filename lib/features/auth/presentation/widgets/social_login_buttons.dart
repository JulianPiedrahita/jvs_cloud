import 'package:flutter/material.dart';

import '../../../../core/theme/app_theme.dart';

/// Social login buttons for third-party authentication
class SocialLoginButtons extends StatelessWidget {
  const SocialLoginButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Divider(
                color: AppColors.white.withOpacity(0.3),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Or continue with',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: AppColors.white.withOpacity(0.6),
                    ),
              ),
            ),
            Expanded(
              child: Divider(
                color: AppColors.white.withOpacity(0.3),
              ),
            ),
          ],
        ),
        
        SizedBox(height: 24.0),
        
        Row(
          children: [
            Expanded(
              child: _SocialButton(
                icon: Icons.g_mobiledata, // Google icon placeholder
                label: 'Google',
                onPressed: () {
                  // TODO: Implement Google sign in
                },
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: _SocialButton(
                icon: Icons.apple, // Apple icon
                label: 'Apple',
                onPressed: () {
                  // TODO: Implement Apple sign in
                },
              ),
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: _SocialButton(
                icon: Icons.window, // Microsoft icon placeholder
                label: 'Microsoft',
                onPressed: () {
                  // TODO: Implement Microsoft sign in
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _SocialButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onPressed;

  const _SocialButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: AppColors.white.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                color: AppColors.white,
                size: 24.0,
              ),
              SizedBox(height: 4.0),
              Text(
                label,
                style: TextStyle(
                  color: AppColors.white,
                  fontSize: 12.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Enterprise SSO login options
class EnterpriseLoginOptions extends StatelessWidget {
  const EnterpriseLoginOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Enterprise Login',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                color: AppColors.white,
                fontWeight: FontWeight.bold,
              ),
          textAlign: TextAlign.center,
        ),
        
        SizedBox(height: 16.0),
        
        _EnterpriseButton(
          icon: Icons.business,
          label: 'Single Sign-On (SSO)',
          subtitle: 'Login with your organization credentials',
          onPressed: () {
            // TODO: Implement SSO login
          },
        ),
        
        SizedBox(height: 12.0),
        
        _EnterpriseButton(
          icon: Icons.vpn_key,
          label: 'LDAP / Active Directory',
          subtitle: 'Connect with your corporate directory',
          onPressed: () {
            // TODO: Implement LDAP login
          },
        ),
        
        SizedBox(height: 12.0),
        
        _EnterpriseButton(
          icon: Icons.security,
          label: 'SAML Authentication',
          subtitle: 'Secure federated authentication',
          onPressed: () {
            // TODO: Implement SAML login
          },
        ),
      ],
    );
  }
}

class _EnterpriseButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final String subtitle;
  final VoidCallback onPressed;

  const _EnterpriseButton({
    required this.icon,
    required this.label,
    required this.subtitle,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: AppColors.white.withOpacity(0.2),
          width: 1,
        ),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(12.0),
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              children: [
                Container(
                  width: 48.0,
                  height: 48.0,
                  decoration: BoxDecoration(
                    color: AppColors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  child: Icon(
                    icon,
                    color: AppColors.white,
                    size: 24.0,
                  ),
                ),
                SizedBox(width: 16.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        label,
                        style: TextStyle(
                          color: AppColors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        subtitle,
                        style: TextStyle(
                          color: AppColors.white.withOpacity(0.7),
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.white.withOpacity(0.5),
                  size: 16.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}