import 'package:flutter/material.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'pages/order_page.dart';
import 'pages/profile_page.dart';
import 'pages/settings_page.dart';
import 'pages/about_page.dart';
import 'pages/contact_page.dart';
import 'pages/cake_tab_page.dart';
import 'pages/registration_page.dart';

void main() {
  runApp(const CakeShopApp());
}

class CakeShopApp extends StatelessWidget {
  const CakeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Custom Cake Shop',
      theme: ThemeData(primarySwatch: Colors.pink),
      initialRoute: '/',
      routes: {
        '/': (context) => const LoginPage(),
        '/home': (context) => const HomePage(),
        '/order': (context) => const OrderPage(),
        '/profile': (context) => const ProfilePage(),
        '/settings': (context) => const SettingsPage(),
        '/about': (context) => const AboutPage(),
        '/contact': (context) => const ContactPage(),
        '/tabs': (context) => const CakeTabPage(),
        '/register': (context) => const RegistrationPage(),
      },
    );
  }
}
