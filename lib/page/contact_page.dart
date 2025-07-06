import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us')),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            'For support, email us at support@greenlivinghub.com or call +92-XXX-XXXXXXX',
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
