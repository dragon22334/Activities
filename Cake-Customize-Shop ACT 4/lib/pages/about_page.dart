import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About Us'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            'Welcome to SweetCrave Custom Cakes! 🎂\n\n'
            'We specialize in crafting personalized cakes for all occasions — birthdays, weddings, and celebrations. '
            'Our goal is to bring sweetness and creativity to every design we make!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
