import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: Colors.pinkAccent,
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          const ListTile(
            leading: Icon(Icons.palette, color: Colors.pink),
            title: Text('Theme'),
            subtitle: Text('Light / Dark mode'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.notifications, color: Colors.pink),
            title: Text('Notifications'),
            subtitle: Text('Enable or disable notifications'),
          ),
          const Divider(),
          const ListTile(
            leading: Icon(Icons.lock, color: Colors.pink),
            title: Text('Privacy'),
            subtitle: Text('Manage password and account settings'),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.red),
            title: const Text('Logout'),
            onTap: () {
              Navigator.popUntil(context, (route) => route.isFirst);
            },
          ),
        ],
      ),
    );
  }
}
