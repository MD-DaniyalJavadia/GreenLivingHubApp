import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GreenLivingHub',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GreenLivingHub'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            FeatureCard(
              title: 'Join Communities',
              description: 'Explore and join communities passionate about sustainable living.',
              icon: Icons.group,
              image: 'assets/community.jpg',
            ),
            FeatureCard(
              title: 'Share Tips and Success Stories',
              description: 'Share Valuable Tips, Tricks and Success Stories Related To Sustainable Living',
              icon: Icons.lightbulb_outline,
              image: 'assets/tips.jpg',
            ),
            FeatureCard(
              title: 'Share Achievements',
              description:'Celebrate sustainability milestones by sharing achievements within the app.',
              icon: Icons.star,
              image: 'assets/achievements.jpg',
            ),
            FeatureCard(
              title: 'Customizable Sharing',
              description:'Customize sharing options to post achievements on social media platforms.',
              icon: Icons.share,
              image: 'assets/sharing.jpg',
            ),
            FeatureCard(
              title: 'Engaging User Interface',
              description:'User-friendly interface designed to encourage active participation.',
              icon: Icons.mobile_friendly,
              image: 'assets/interface.jpg',
            ),
            FeatureCard(
              title: 'Visual Representation of Achievements',
              description:'Visually represent achievements with custom images.',
              icon: Icons.image,
              image: 'assets/representation.jpg',
            ),
            FeatureCard(
              title: 'Discover Events',
              description:'Find and participate in local and global events promoting sustainability.',
              icon: Icons.event,
              image: 'assets/events.jpg',
            ),
            FeatureCard(
              title: 'Track Carbon Footprint',
              description:'Monitor and reduce your carbon footprint with personalized tracking tools.',
              icon: Icons.timeline,
              image: 'assets/carbon_footprint.jpg',
            ),
            FeatureCard(
              title: 'Shop Sustainable Products',
              description:'Explore and purchase eco-friendly products from verified vendors.',
              icon: Icons.shopping_cart,
              image: 'assets/shopping.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class FeatureCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final String image;

  const FeatureCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.image,
  }):super(key:key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(
            image,
            fit: BoxFit.cover,
            height: 200,
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  icon,
                  size: 40,
                  color: Theme.of(context).primaryColor,
                ),
                SizedBox(height: 10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(description),
              ],
            ),
          ),
        ],
      ),
    );
  }
}