import 'package:flutter/material.dart';

class DiscoverEventsPage extends StatelessWidget {
  const DiscoverEventsPage({super.key});

  final List<Map<String, String>> events = const [
    {
      'title': 'Earth Day Cleanup',
      'date': 'April 22, 2025',
      'location': 'Local Park',
      'image': 'assets/events/cleanup.jpg',
    },
    {
      'title': 'Eco-Friendly Workshop',
      'date': 'May 15, 2025',
      'location': 'Green Living Center',
      'image': 'assets/events/workshop.jpg',
    },
    {
      'title': 'Sustainability Hackathon',
      'date': 'June 10, 2025',
      'location': 'Online',
      'image': 'assets/events/hackathon.jpg',
    },
    {
      'title': 'Organic Market Fair',
      'date': 'July 5, 2025',
      'location': 'Main Street Market',
      'image': 'assets/events/market.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Discover Events'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: events.length,
        itemBuilder: (context, index) {
          final event = events[index];
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 4,
            margin: const EdgeInsets.only(bottom: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
                  child: Image.asset(
                    event['image']!,
                    width: double.infinity,
                    height: 160,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        event['title']!,
                        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text("📅 ${event['date']}"),
                      Text("📍 ${event['location']}"),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
