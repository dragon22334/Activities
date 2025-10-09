import 'package:flutter/material.dart';

class CakeTabPage extends StatelessWidget {
  const CakeTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Cake Shop Tabs'),
          backgroundColor: Colors.pinkAccent,
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.cake), text: 'Cakes'),
              Tab(icon: Icon(Icons.favorite), text: 'Favorites'),
              Tab(icon: Icon(Icons.shopping_cart), text: 'Orders'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            _buildTabContent('Our Special Cakes 🎂'),
            _buildTabContent('Your Favorite Designs 💖'),
            _buildTabContent('Your Orders 🛒'),
          ],
        ),
      ),
    );
  }

  Widget _buildTabContent(String text) {
    return Center(
      child: Text(
        text,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}
