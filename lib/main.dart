import 'package:flutter/material.dart';
import 'package:next_stop/core/theme.dart';
import 'package:next_stop/screens/sign_up.dart';
import 'package:next_stop/screens/splash_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: const SplashScreen(),
        routes: {
          '/signUp': (context) => SignUpScreen(),
        },
        theme: AppTheme.darkThemeMode);
  }
}

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 50.0, // Width of the box
          height: 50.0, // Height of the box
          color: Color(0xFFe0ca72),
          child: const Text("home"),
        ),
      ),
    );
  }
}
