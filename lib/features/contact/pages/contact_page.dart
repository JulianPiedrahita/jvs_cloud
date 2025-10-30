import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF2C3E50),
              Color(0xFF3498DB),
            ],
          ),
        ),
        child: SafeArea(
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
                          Row(
                            children: [
                              IconButton(
                                onPressed: () => context.go('/'),
                                icon: const Icon(Icons.arrow_back),
                              ),
                              const Expanded(
                                child: Text(
                                  'Contáctanos',
                                  style: TextStyle(
                                    fontSize: 28,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xFF2C3E50),
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              const SizedBox(width: 48),
                            ],
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
                              backgroundColor: const Color(0xFF3498DB),
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
    );
  }
}