import 'dart:async';

import 'package:flutter/material.dart';
import 'package:inventory_flutter/pages/LoginPage.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 5),
        () => Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 146, 62, 255),
            Color.fromARGB(255, 116, 0, 81),
          ],
        )),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(children: [
              Image.asset(
                'assets/images/stock.png',
                height: 300.0,
                width: 300.0,
              ),
              const Text(
                'Selamat datang di aplikasi Sistem Inventory Flutter\n\n\n\n\n\n\n\n\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 15.0),
              ),
              const Text(
                'Loading.....',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white38, fontSize: 12.0),
              ),
            ]),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
