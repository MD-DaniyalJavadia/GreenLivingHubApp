import 'package:flutter/material.dart';
import 'package:greenlivinghub/page/JoinCommunities.dart';
import 'package:greenlivinghub/page/shoppingGuide.dart';
import 'package:greenlivinghub/page/about_page.dart';
import 'package:greenlivinghub/page/contact_page.dart';
import 'package:greenlivinghub/carbontracker/screens/calculator.dart';
import 'package:greenlivinghub/carbontracker/screens/home_navigator.dart';
import 'package:greenlivinghub/page/achievements_page.dart';
import 'package:greenlivinghub/page/tips_and_stories_page.dart';
import 'package:greenlivinghub/carbontracker/service/shared_preferences_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SharedPreferenceService.init(); // This must be here!
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
      initialRoute: "/",
      routes: {
        "/": (context) => HomePage(),
        "h": (context) => const HomeNavigator(),
      },
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: const Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                Navigator.pop(context); // Already on home
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const AboutPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.contact_mail),
              title: Text('Contact Us'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ContactPage()),
                );
              },
            ),
          ],
        ),
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => JoinCommunities()),
                );
              },
            ),
            FeatureCard(
              title: 'Share Tips and Success Stories',
              description: 'Share Valuable Tips, Tricks and Success Stories Related To Sustainable Living',
              icon: Icons.lightbulb_outline,
              image: 'assets/tips.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const TipsAndStoriesPage()),
                );
              },
            ),
            FeatureCard(
              title: 'Share Achievements',
              description:'Celebrate sustainability milestones by sharing achievements within the app.',
              icon: Icons.star,
              image: 'assets/achievements.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const AchievementsPage()),
                );
              },
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
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => SharedPreferenceService.firstTimeOpeningApp
                        ? const Calculator()
                        : const HomeNavigator(),
                  ),
                );
              },
            ),
            FeatureCard(
              title: 'Eco Friendly Shopping Guide',
              description: 'Explore and purchase eco-friendly products from verified vendors.',
              icon: Icons.shopping_cart,
              image: 'assets/shopping.jpg',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EcoFriendlyShoppingScreen()),
                );
              },
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
  final VoidCallback? onTap;

  const FeatureCard({
    Key? key,
    required this.title,
    required this.description,
    required this.icon,
    required this.image,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
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
      ),
    );
  }
}
