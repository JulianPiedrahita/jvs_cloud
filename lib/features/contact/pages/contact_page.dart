import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../core/constants/app_constants.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();
  final _messageController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _nameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    _messageController.dispose();
    super.dispose();
  }

  Future<void> _submitForm() async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _isLoading = true;
      });

      // Simular envío del formulario
      await Future.delayed(const Duration(seconds: 2));

      if (mounted) {
        setState(() {
          _isLoading = false;
        });

        // Mostrar mensaje de confirmación
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('¡Mensaje enviado correctamente! Te contactaremos pronto.'),
            backgroundColor: Colors.green,
          ),
        );

        // Navegar al dashboard después de un pequeño delay
        Future.delayed(const Duration(seconds: 1), () {
          if (mounted) {
            context.go('/dashboard');
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Header Section - SAME AS DASHBOARD
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
                                        ? 'JVS Cloud - Contáctanos'
                                        : 'JVS Cloud - Contáctanos',
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
                        // Dashboard and Login buttons (same as dashboard but swapped contact for dashboard)
                        Row(
                          children: [
                            ElevatedButton.icon(
                              onPressed: () => context.go('/dashboard'),
                              icon: Icon(Icons.dashboard, size: isExtraSmall ? 14 : isMobile ? 16 : 18),
                              label: Text(
                                isExtraSmall ? '' : 'Dashboard', // Hide text on very small screens
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
          
          // Contact Form Content
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF2196F3), // Blue from logo
                    Color(0xFFFFC107), // Yellow from logo
                    Color(0xFFFF9800), // Orange from logo
                    Color(0xFF9C27B0), // Purple from logo
                    Color(0xFFE91E63), // Red/Pink from logo
                  ],
                ),
              ),
              child: SafeArea(
                top: false, // Don't add extra top padding since we have the header
                child: Center(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(24.0),
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 500),
                      child: Card(
                        elevation: 8,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Form(
                            key: _formKey,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                // Header
                                const Text(
                                  'Contáctanos',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2196F3), // Blue from logo to match dashboard
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 8),
                                const Text(
                                  'Déjanos tu mensaje y te contactaremos pronto',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.grey,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                const SizedBox(height: 32),

                                // Nombre
                                TextFormField(
                                  controller: _nameController,
                                  decoration: const InputDecoration(
                                    labelText: 'Nombre',
                                    prefixIcon: Icon(Icons.person),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor ingresa tu nombre';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),

                                // Apellido
                                TextFormField(
                                  controller: _lastNameController,
                                  decoration: const InputDecoration(
                                    labelText: 'Apellido',
                                    prefixIcon: Icon(Icons.person_outline),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor ingresa tu apellido';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),

                                // Correo
                                TextFormField(
                                  controller: _emailController,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: const InputDecoration(
                                    labelText: 'Correo electrónico',
                                    prefixIcon: Icon(Icons.email),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor ingresa tu correo';
                                    }
                                    if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)) {
                                      return 'Por favor ingresa un correo válido';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),

                                // Teléfono
                                TextFormField(
                                  controller: _phoneController,
                                  keyboardType: TextInputType.phone,
                                  decoration: const InputDecoration(
                                    labelText: 'Número telefónico',
                                    prefixIcon: Icon(Icons.phone),
                                    border: OutlineInputBorder(),
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor ingresa tu número telefónico';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 16),

                                // Mensaje
                                TextFormField(
                                  controller: _messageController,
                                  maxLines: 4,
                                  decoration: const InputDecoration(
                                    labelText: 'Mensaje',
                                    prefixIcon: Icon(Icons.message),
                                    border: OutlineInputBorder(),
                                    alignLabelWithHint: true,
                                  ),
                                  validator: (value) {
                                    if (value == null || value.isEmpty) {
                                      return 'Por favor escribe tu mensaje';
                                    }
                                    return null;
                                  },
                                ),
                                const SizedBox(height: 32),

                                // Botón enviar
                                ElevatedButton(
                                  onPressed: _isLoading ? null : _submitForm,
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF2196F3), // Blue from logo
                                    foregroundColor: Colors.white,
                                    padding: const EdgeInsets.symmetric(vertical: 16),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                  ),
                                  child: _isLoading
                                      ? const Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            SizedBox(
                                              width: 20,
                                              height: 20,
                                              child: CircularProgressIndicator(
                                                strokeWidth: 2,
                                                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                                              ),
                                            ),
                                            SizedBox(width: 12),
                                            Text('Enviando...'),
                                          ],
                                        )
                                      : const Text(
                                          'Enviar mensaje',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}