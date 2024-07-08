import 'package:flutter/material.dart';
// import 'package:next_stop/main.dart';
import 'package:next_stop/screens/sign_up.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

// overriding because we are providing specific instructions on how to create sothe state for your stateful widget
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  //  The initState method is optional and is used for initializing state or performing actions when the widget is first inserted into the widget tree.
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      //*  context is a handle to the location of the widget in the widget tree
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const SignUpScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Loading..."),
      ),
    );
  }
}
