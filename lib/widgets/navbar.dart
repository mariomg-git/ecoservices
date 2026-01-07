import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../config/routes.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Logo
          _buildLogo(context),
          
          // Menu
          _buildMenu(context),
        ],
      ),
    );
  }

  Widget _buildLogo(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, AppRoutes.landing),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(8),
              ),
              child: const Icon(Icons.eco, color: Colors.white, size: 28),
            ),
            const SizedBox(width: 12),
            const Text(
              'EcoServices',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.textDark,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenu(BuildContext context) {
    return Row(
      children: [
        _navLink(context, 'Inicio', () {
          Navigator.pushNamed(context, AppRoutes.landing);
        }),
        _navLink(context, 'Servicios', () {}),
        _navLink(context, 'Características', () {}),
        _navLink(context, 'Contacto', () {}),
        const SizedBox(width: 20),
        ElevatedButton(
          onPressed: () => Navigator.pushNamed(context, AppRoutes.auth),
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.primary,
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Text(
            'Comenzar',
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }

  Widget _navLink(BuildContext context, String text, VoidCallback onTap) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: GestureDetector(
          onTap: onTap,
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              color: AppColors.textGray,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
