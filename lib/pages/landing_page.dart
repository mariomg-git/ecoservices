import 'package:flutter/material.dart';
import '../widgets/navbar.dart';
import '../widgets/hero_section.dart';
import '../widgets/features_section.dart';
import '../widgets/services_section.dart';
import '../widgets/cta_section.dart';
import '../widgets/footer.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Navbar(),
            HeroSection(),
            FeaturesSection(),
            ServicesSection(),
            CtaSection(),
            Footer(),
          ],
        ),
      ),
    );
  }
}
