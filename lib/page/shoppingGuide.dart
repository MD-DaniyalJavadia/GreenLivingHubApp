import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(EcoFriendlyShoppingApp());
}

class EcoFriendlyShoppingApp extends StatelessWidget {
  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Eco Friendly Shopping Guide',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: EcoFriendlyShoppingScreen(),
    );
  }
}

class EcoFriendlyShoppingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Eco Friendly Shopping Guide'),
      ),
      body: ListView(
        children: <Widget>[
          CategoryTitle(categoryName: 'Recyclability'),
          ProductTitle(productName: 'Recycled Paper Towels'),
          ProductTitle(productName: 'Reusable Water Bottle'),
          ProductTitle(productName: 'Biodegeradable Trash Bags'),
          CategoryTitle(categoryName: 'Sustainability Certifications'),
          ProductTitle(productName: 'Fair Trade Coffee'),
          ProductTitle(productName: 'Organic Cotton T-Shirts'),
          ProductTitle(productName: 'RainForest Alliance Chocolate'),
          CategoryTitle(categoryName: 'Ethical Sourcing'),
          ProductTitle(productName: 'Cruelty-Free Cosmetics'),
          ProductTitle(productName: 'Conflict-Free Diamonds'),
          ProductTitle(productName: 'Ethically Sourced Jewelry'),
        ],
      ),
    );
  }
}

class CategoryTitle extends StatelessWidget {
  final String categoryName;

  const CategoryTitle({required this.categoryName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        categoryName,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18.0,
        ),
      ),
    );
  }
}

class ProductTitle extends StatelessWidget {
  final String productName;

  const ProductTitle({required this.productName});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(productName),
      onTap: () {
        // Add funtion to navigation on the product to navigate to other product on the screen
      },
    );
  }
}