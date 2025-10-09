import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.pinkAccent),
            child: Text('Cake Shop Menu',
                style: TextStyle(color: Colors.white, fontSize: 20)),
          ),
          ListTile(
            leading: const Icon(Icons.cake),
            title: const Text('Reservation'),
            onTap: () => Navigator.pushNamed(context, '/reservation'),
          ),
          ListTile(
            leading: const Icon(Icons.info),
            title: const Text('About Us'),
            onTap: () => Navigator.pushNamed(context, '/about'),
          ),
          ListTile(
            leading: const Icon(Icons.contact_page),
            title: const Text('Contact'),
            onTap: () => Navigator.pushNamed(context, '/contact'),
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushReplacementNamed(context, '/');
            },
          ),
        ],
      ),
    );
  }
}
