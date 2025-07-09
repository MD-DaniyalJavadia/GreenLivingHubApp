import 'package:flutter/material.dart';

class VisualAchievementsPage extends StatelessWidget {
  const VisualAchievementsPage({super.key});

  final List<Map<String, String>> achievements = const [
    {
      'title': 'Planted 10 Trees',
      'description': 'Contributed to reforestation.',
      'image': 'assets/achievements/trees.png',
    },
    {
      'title': '30 Days Without Plastic',
      'description': 'Avoided single-use plastic for a full month.',
      'image': 'assets/achievements/plastic_free.png',
    },
    {
      'title': 'Used Public Transport',
      'description': 'Reduced emissions by commuting sustainably.',
      'image': 'assets/achievements/bus.png',
    },
    {
      'title': 'Energy Efficient Home',
      'description': 'Reduced electricity usage by 20%.',
      'image': 'assets/achievements/energy.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Achievements'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: achievements.length,
        itemBuilder: (context, index) {
          final achievement = achievements[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 5,
            margin: const EdgeInsets.only(bottom: 16),
            child: ListTile(
              leading: Image.asset(
                achievement['image']!,
                height: 50,
                width: 50,
              ),
              title: Text(
                achievement['title']!,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text(achievement['description']!),
            ),
          );
        },
      ),
    );
  }
}
