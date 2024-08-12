import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hotel_booking_app_ui/pages/secondSplashScreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  void myTimer() {
    Timer(Duration(seconds: 4), () {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return Secondsplashscreen();
      }));
    });
  }

  @override
  void initState() {
    super.initState();
    myTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 103, 33, 33),
      body: Center(
        child: Text(
          'OYO',
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 100),
        ),
      ),
    );
  }
}
