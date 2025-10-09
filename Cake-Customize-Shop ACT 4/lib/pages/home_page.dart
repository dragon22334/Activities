import 'package:flutter/material.dart';
import 'order_page.dart';
import 'profile_page.dart';
import 'settings_page.dart';
import 'about_page.dart';
import 'contact_page.dart';
import 'cake_tab_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _navigateTo(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => page));
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      // Home Page with access to context now
      SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(20),
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.pink],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://cdn.pixabay.com/photo/2017/05/07/08/56/cake-2291908_1280.jpg',
                  height: 180,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 25),
              const Text(
                '🎂 Welcome to Custom Cake Haven 🎂',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                        offset: Offset(1, 1),
                        blurRadius: 4,
                        color: Colors.black26)
                  ],
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              const Text(
                'Create your perfect cake with our customization options.\nOrder easily, reserve for special occasions, and make every moment sweeter!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  height: 1.4,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 25),
              ElevatedButton.icon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const OrderPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.pinkAccent,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30)),
                ),
                icon: const Icon(Icons.shopping_bag),
                label: const Text(
                  'Reserve a Cake Now',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      const OrderPage(),
      const ProfilePage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cake Customizer'),
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.pinkAccent),
              child: Text(
                'Cake Shop Menu',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: const Icon(Icons.cake),
              title: const Text('Order Cake'),
              onTap: () {
                Navigator.pop(context);
                _navigateTo(context, const OrderPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                _navigateTo(context, const ProfilePage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                _navigateTo(context, const SettingsPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.tab),
              title: const Text('Cake Tabs'),
              onTap: () {
                Navigator.pop(context);
                _navigateTo(context, const CakeTabPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.info),
              title: const Text('About'),
              onTap: () {
                Navigator.pop(context);
                _navigateTo(context, const AboutPage());
              },
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail),
              title: const Text('Contact'),
              onTap: () {
                Navigator.pop(context);
                _navigateTo(context, const ContactPage());
              },
            ),
          ],
        ),
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.pinkAccent,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'Orders'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
