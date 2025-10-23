import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/router/app_router_simple.dart';

void main() {
  runApp(const JVSCloudApp());
}

/// ULTRA SIMPLE APP - NO DEPENDENCIES THAT CAN BREAK
class JVSCloudApp extends StatelessWidget {
  const JVSCloudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'JVS Cloud',
      debugShowCheckedModeBanner: false,
      
      // Router configuration
      routerConfig: AppRouter.router,
      
      // Theme
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF2196F3),
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Roboto',
      ),
      
      // Localization
      supportedLocales: const [
        Locale('en', 'US'),
        Locale('es', 'ES'),
      ],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}