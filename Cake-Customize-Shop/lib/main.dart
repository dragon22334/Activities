import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'pages/registration_page.dart';
import 'pages/customize_cake_page.dart';
import 'pages/reservation_page.dart';

void main() {
  runApp(const CakeShopApp());
}

class CakeShopApp extends StatelessWidget {
  const CakeShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SweetCraft Custom Cake Shop',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        scaffoldBackgroundColor: Colors.pink[50],
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegistrationPage(),
        '/customize': (context) => const CustomizeCakePage(),
        '/reservation': (context) => const ReservationPage(),
      },
    );
  }
}
