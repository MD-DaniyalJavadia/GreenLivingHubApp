import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'GreenLivingHub is a sustainability-focused app that helps users track their carbon footprint, shop eco-friendly, and connect with communities.',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
