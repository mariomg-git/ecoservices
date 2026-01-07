import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../widgets/auth_form_login.dart';
import '../widgets/auth_form_register.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool _isLoginMode = true;

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;

    return Scaffold(
      body: SingleChildScrollView(
        child: isMobile ? _buildMobileView() : _buildDesktopView(),
      ),
    );
  }

  Widget _buildDesktopView() {
    return Row(
      children: [
        // Left side - Branding
        Expanded(
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  AppColors.primary,
                  AppColors.primaryDark,
                ],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Icon(
                      Icons.eco,
                      color: Colors.white,
                      size: 48,
                    ),
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    'Bienvenido a EcoServices',
                    style: TextStyle(
                      fontSize: 48,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      height: 1.2,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Soluciones ecológicas innovadoras para tu negocio. Accede a tu cuenta para gestionar tus servicios.',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white70,
                      height: 1.6,
                    ),
                  ),
                  const SizedBox(height: 60),
                  _buildFeatureList(),
                ],
              ),
            ),
          ),
        ),

        // Right side - Auth Form
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(60),
            child: _buildAuthForm(),
          ),
        ),
      ],
    );
  }

  Widget _buildMobileView() {
    return Column(
      children: [
        // Header
        Container(
          padding: const EdgeInsets.all(30),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                AppColors.primary,
                AppColors.primaryDark,
              ],
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const Icon(
                  Icons.eco,
                  color: Colors.white,
                  size: 40,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                'EcoServices',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),

        // Auth Form
        Padding(
          padding: const EdgeInsets.all(20),
          child: _buildAuthForm(),
        ),
      ],
    );
  }

  Widget _buildAuthForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Tab Buttons
        Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() => _isLoginMode = true);
                },
                child: Column(
                  children: [
                    Text(
                      'Iniciar Sesión',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: _isLoginMode ? AppColors.primary : AppColors.textGray,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 3,
                      color: _isLoginMode ? AppColors.primary : Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() => _isLoginMode = false);
                },
                child: Column(
                  children: [
                    Text(
                      'Registrarse',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: !_isLoginMode ? AppColors.primary : AppColors.textGray,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Container(
                      height: 3,
                      color: !_isLoginMode ? AppColors.primary : Colors.transparent,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),

        // Forms
        if (_isLoginMode) const AuthFormLogin() else const AuthFormRegister(),
      ],
    );
  }

  Widget _buildFeatureList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildFeatureItem(Icons.security, 'Seguridad garantizada'),
        const SizedBox(height: 20),
        _buildFeatureItem(Icons.sync, 'Sincronización en tiempo real'),
        const SizedBox(height: 20),
        _buildFeatureItem(Icons.support_agent, 'Soporte 24/7'),
      ],
    );
  }

  Widget _buildFeatureItem(IconData icon, String text) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.white, size: 24),
        ),
        const SizedBox(width: 16),
        Text(
          text,
          style: const TextStyle(
            fontSize: 16,
            color: Colors.white70,
          ),
        ),
      ],
    );
  }
}
