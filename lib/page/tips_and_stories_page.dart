import 'package:flutter/material.dart';

class TipsAndStoriesPage extends StatefulWidget {
  const TipsAndStoriesPage({Key? key}) : super(key: key);

  @override
  State<TipsAndStoriesPage> createState() => _TipsAndStoriesPageState();
}

class _TipsAndStoriesPageState extends State<TipsAndStoriesPage> {
  final List<Map<String, String>> _stories = [
    {
      'title': 'Saved Water by Installing Low-Flow Showerheads',
      'content': 'We saved nearly 30% water usage in a month!',
    },
    {
      'title': 'Community Clean-Up',
      'content': 'Organized a weekend clean-up drive. Collected 200+ kg of waste!',
    },
  ];

  void _showAddDialog() {
    String title = '';
    String content = '';

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Share a Tip or Success Story'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: const InputDecoration(labelText: 'Title'),
                onChanged: (value) => title = value,
              ),
              TextField(
                decoration: const InputDecoration(labelText: 'Content'),
                onChanged: (value) => content = value,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                if (title.isNotEmpty && content.isNotEmpty) {
                  setState(() {
                    _stories.insert(0, {'title': title, 'content': content});
                  });
                  Navigator.of(context).pop();
                }
              },
              child: const Text('Share'),
            ),
          ],
        );
      },
    );
  }

  Widget _buildStoryCard(Map<String, String> story) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 4.0,
      child: ListTile(
        title: Text(
          story['title'] ?? '',
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(story['content'] ?? ''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tips & Success Stories'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: ListView(
        children: _stories.map(_buildStoryCard).toList(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddDialog,
        child: const Icon(Icons.add),
        backgroundColor: Theme.of(context).primaryColor,
        tooltip: 'Share a new tip or story',
      ),
    );
  }
}
