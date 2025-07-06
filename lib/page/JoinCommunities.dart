import 'package:flutter/material.dart';

class JoinCommunities extends StatelessWidget {
  const JoinCommunities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Join Communities'),
        backgroundColor: Theme.of(context).primaryColor,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildSectionHeader(context, 'Community Updates'),
            const _ShareCard(
              title: 'Tip Of The Day',
              content: 'Use reusable bags when grocery shopping!',
              icon: Icons.lightbulb_outline,
            ),
            const _ShareCard(
              title: 'Success Story',
              content: 'Reduced household waste by 50% by composting and recycling!',
              icon: Icons.celebration,
            ),
            _buildSectionHeader(context, 'Popular Communities'),
            const _CommunityCard(
              communityName: 'Eco Warriors',
              membersCount: 1200,
              communityImage: 'assets/eco_warriors.jpg',
            ),
            const _CommunityCard(
              communityName: 'Green Living Enthusiasts',
              membersCount: 800,
              communityImage: 'assets/green_living.jpg',
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Implement social sharing logic here
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Sharing to social media...')),
          );
        },
        child: const Icon(Icons.share),
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
          fontWeight: FontWeight.bold,
          color: Theme.of(context).primaryColor,
        ),
      ),
    );
  }
}

class _ShareCard extends StatelessWidget {
  final String title;
  final String content;
  final IconData icon;

  const _ShareCard({
    required this.title,
    required this.content,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.1),
          child: Icon(icon, color: Theme.of(context).primaryColor),
        ),
        title: Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text(content),
      ),
    );
  }
}

class _CommunityCard extends StatelessWidget {
  final String communityName;
  final int membersCount;
  final String communityImage;

  const _CommunityCard({
    required this.communityName,
    required this.membersCount,
    required this.communityImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      elevation: 4.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(communityImage),
        ),
        title: Text(
          communityName,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('$membersCount members'),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16.0),
        onTap: () {
          // Implement navigation to community details
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Navigating to $communityName')),
          );
        },
      ),
    );
  }
}