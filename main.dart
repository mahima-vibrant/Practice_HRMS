import 'package:flutter/material.dart';
import 'Getstarted.dart';
import 'myhome_screen.dart';
import 'signin.dart';
import 'dashboard_screen.dart'; // ✅ MUST be present

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/getstarted',

      routes: {
        '/getstarted': (context) => const OnboardingScreen(),
        '/home': (context) => const MyHomePage(),
        '/signin': (context) => const SignInScreen(),
        '/dashboard': (context) => const DashboardScreen(), // ✅ correct
      },
    );
  }
}
