import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: const Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone, color: Colors.pink, size: 50),
              SizedBox(height: 10),
              Text('📞 0999-888-7777', style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              Icon(Icons.email, color: Colors.pink, size: 50),
              SizedBox(height: 10),
              Text('📧 sweetcravecakes@gmail.com',
                  style: TextStyle(fontSize: 18)),
              SizedBox(height: 20),
              Text(
                'Visit our shop in Talisay City, Negros Occidental.\nOpen: 9AM - 7PM daily!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
