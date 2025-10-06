import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('SweetCraft Custom Cake Shop')),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/512/3171/3171640.png',
                height: 120,
              ),
              const SizedBox(height: 20),
              const Text(
                'Welcome to SweetCraft 🍰',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                'Design, order, and reserve your dream cake with ease!',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/login'),
                child: const Text('Login'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/register'),
                child: const Text('Register'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/customize'),
                child: const Text('Customize Cake'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.pushNamed(context, '/reservation'),
                child: const Text('Make a Reservation'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
