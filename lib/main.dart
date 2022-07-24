import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inventory_flutter/pages/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'poppins',
        primarySwatch: Colors.purple,
      ),
      home: const SplashScreen(),
    );
  }
}
