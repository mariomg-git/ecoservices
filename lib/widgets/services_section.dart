import 'package:flutter/material.dart';
import '../constants/colors.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 768;
    final services = [
      {'title': 'Consultoría Ambiental', 'icon': Icons.nature},
      {'title': 'Mantenimiento de Áreas Verdes', 'icon': Icons.park},
      {'title': 'Energías Renovables', 'icon': Icons.sunny},
      {'title': 'Gestión de Residuos', 'icon': Icons.recycling},
      {'title': 'Capacitación Ecológica', 'icon': Icons.school},
      {'title': 'Proyectos Sostenibles', 'icon': Icons.construction},
    ];

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 20 : 60,
        vertical: isMobile ? 60 : 100,
      ),
      child: Column(
        children: [
          const Text(
            'Nuestros Servicios',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: AppColors.textDark,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          const Text(
            'Amplia gama de soluciones ecológicas para tu negocio',
            style: TextStyle(
              fontSize: 18,
              color: AppColors.textGray,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 60),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isMobile ? 2 : 3,
              mainAxisSpacing: 24,
              crossAxisSpacing: 24,
            ),
            itemCount: services.length,
            itemBuilder: (context, index) {
              final service = services[index];
              return _buildServiceCard(
                icon: service['icon'] as IconData,
                title: service['title'] as String,
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildServiceCard({required IconData icon, required String title}) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: AppColors.border, width: 1),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 48, color: AppColors.primary),
          const SizedBox(height: 16),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: AppColors.textDark,
            ),
          ),
        ],
      ),
    );
  }
}
