import 'package:flutter/material.dart';

class EngagingUIPage extends StatelessWidget {
  const EngagingUIPage({super.key});

  final List<Map<String, String>> features = const [
    {
      'title': 'Interactive Design',
      'description': 'Tap, swipe, and interact with eco-friendly tools designed to educate and engage.',
      'icon': '🧩',
    },
    {
      'title': 'Smooth Navigation',
      'description': 'Easily explore content with a user-friendly layout and seamless transitions.',
      'icon': '🧭',
    },
    {
      'title': 'Gamified Experience',
      'description': 'Earn badges and achievements for your sustainable actions.',
      'icon': '🎮',
    },
    {
      'title': 'Personalized Dashboard',
      'description': 'Track your progress, tips, and goals in a beautiful dashboard.',
      'icon': '📊',
    },
    {
      'title': 'Dark & Light Mode',
      'description': 'Choose a theme that fits your mood or environment.',
      'icon': '🌓',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Engaging User Interface'),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: features.length,
        separatorBuilder: (context, index) => const SizedBox(height: 16),
        itemBuilder: (context, index) {
          final feature = features[index];
          return Card(
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: ListTile(
              leading: Text(
                feature['icon']!,
                style: const TextStyle(fontSize: 30),
              ),
              title: Text(
                feature['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(feature['description']!),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text('${feature['title']} tapped!'),
                  duration: const Duration(seconds: 1),
                ));
              },
            ),
          );
        },
      ),
    );
  }
}
