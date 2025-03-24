import 'package:flutter/material.dart';
import 'screens/splash_screen.dart'; // Import your splash screen
import 'screens/welcome_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JCraft Seller',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(), // Splash Screen
        '/home': (context) => WelcomeScreen(), // Placeholder for Home Screen
      },

    );
  }
}
