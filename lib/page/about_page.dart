import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('About')),
      body: const SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Sustainable Living Guide',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              'The Greeen Living HUb Guide App is your personal companion to help you live a more eco-friendly, conscious, and sustainable life. '
                  'We believe that small actions, when taken collectively, can lead to big changes for our planet.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 16),
            Text(
              'Key Features:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              '• Daily Green Tips – Simple, actionable advice to reduce waste and save energy.\n'
                  '• Eco-friendly Product Recommendations – Discover sustainable alternatives.\n'
                  '• Carbon Footprint Tracker – Measure and reduce your impact on the environment.\n'
                  '• Community Challenges – Join others in global and local green initiatives.\n'
                  '• Educational Resources – Learn about sustainability through articles and videos.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Our Mission:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'To make sustainable living accessible and achievable for everyone. '
                  'We aim to inspire positive change by providing tools and knowledge that help individuals make smarter, greener choices every day.',
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 24),
            Center(
              child: Text(
                'Together, we can create a cleaner, healthier planet.',
                style: TextStyle(fontSize: 16, fontStyle: FontStyle.italic),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
