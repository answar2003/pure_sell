import 'package:flutter/material.dart';
import 'dart:async';
import '../get_started/get_started.dart';
class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) =>  const GetStarted()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo1.png', height: 200, width: 200,
            ),
            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}