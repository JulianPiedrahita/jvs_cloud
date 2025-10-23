import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/constants/app_constants.dart';

/// Splash screen page with navigation logic
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeApp() async {
    // Wait for minimum splash duration
    await Future.delayed(const Duration(seconds: 3));
    
    if (mounted) {
      // Navigate to login for now
      context.go(AppRoutes.login);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF2196F3), // Blue from logo
                Color(0xFFFFC107), // Yellow from logo - NOW FULLY VISIBLE
                Color(0xFFFF9800), // Orange from logo - ADDED FOR COMPLETENESS
                Color(0xFF9C27B0), // Purple from logo
                Color(0xFFE91E63), // Pink/Red from logo
              ],
            ),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Logo Section
                Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        blurRadius: 20,
                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset(
                      'assets/images/logo.png',
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(
                          Icons.cloud,
                          size: 60,
                          color: Color(0xFF2196F3),
                        );
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                
                // App Title with ALL logo colors - YELLOW NOW PROMINENT
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFFFC107).withOpacity(0.4), // Yellow from logo - HIGHLIGHTED
                        Color(0xFFFF9800).withOpacity(0.3), // Orange from logo
                        Color(0xFFE91E63).withOpacity(0.3), // Red/Pink from logo
                      ],
                    ),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      color: Color(0xFFFFC107), // Yellow border - VERY VISIBLE
                      width: 3,
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xFFFFC107).withOpacity(0.5), // Yellow glow
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: Text(
                    'JVS Cloud',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      shadows: [
                        Shadow(
                          color: Color(0xFFFFC107), // Yellow shadow - PROMINENT
                          blurRadius: 8,
                        ),
                        Shadow(
                          color: Color(0xFFFF9800), // Orange shadow
                          blurRadius: 12,
                        ),
                        Shadow(
                          color: Color(0xFFE91E63), // Red/Pink shadow
                          blurRadius: 16,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text('Infrastructure as Code & Cloud Management', style: TextStyle(fontSize: 16, color: Colors.white70)),
                const SizedBox(height: 32),
                const CircularProgressIndicator(color: Colors.white),
              ],
            ),
          ),
        ),
      );
  }
}