import 'package:flutter/material.dart';

/// Cloud Providers page
class CloudProvidersPage extends StatelessWidget {
  const CloudProvidersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Cloud Providers')),
      body: const Center(child: Text('Cloud Providers Page')),
    );
  }
}