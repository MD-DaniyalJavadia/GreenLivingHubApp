import 'package:flutter/material.dart';

class JoinCommunities extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Join Communities'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Join Communities',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _ShareCard(
              title: 'Tip Of The Day',
              content: 'Use reusable bags when grocery shopping!',
            ),
            _ShareCard(
              title: 'Success Story',
              content: 'Reduced household waste by 50% by composting and recycling!',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Popular Communities',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _CommunityCard(
              communityName: 'Eco Warriors',
              membersCount: 1200,
            ),
            _CommunityCard(
              communityName: 'Green Living Enthusiasts',
              membersCount: 800,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Achievements',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            _AchievementCard(
              achivement: 'Planted 100 Trees',
              image: 'assets/tree.jpg',
            ),
            _AchievementCard(
              achivement: 'Installed Solar Panels',
              image: 'assets/solar_panel.jpg',
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Share On Social Media',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                // Social sharing logic
              },
              child: Text('Share'),
            ),
          ],
        ),
      ),
    );
  }
}

class _AchievementCard extends StatelessWidget {
  final String achivement;
  final String image;

  const _AchievementCard({
    required this.achivement,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            image,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              achivement,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
class _ShareCard extends StatelessWidget {
  final String title;
  final String content;

  const _ShareCard({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(title),
        subtitle: Text(content),
      ),
    );
  }
}

class _CommunityCard extends StatelessWidget {
  final String communityName;
  final int membersCount;

  const _CommunityCard({
    required this.communityName,
    required this.membersCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
      child: ListTile(
        title: Text(communityName),
        subtitle: Text('$membersCount members'),
        trailing: Icon(Icons.arrow_forward),
        onTap: () {
          // Add navigation or detail logic here
        },
      ),
    );
  }
}

