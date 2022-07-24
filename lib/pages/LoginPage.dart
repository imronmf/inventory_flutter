// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:inventory_flutter/pages/widget/Button.dart';
import 'package:inventory_flutter/pages/widget/LoginForm.dart';
import 'package:inventory_flutter/tema.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(children: [
          Lottie.asset(
            'assets/login_lottie.json',
            height: 270.0,
            width: 250.0,
          ),
          const SizedBox(
            height: 0.10,
          ),
          Text(
            'Selamat Datang',
            style: titleText,
          ),
          const SizedBox(
            height: 5,
          ),
          const SizedBox(
            height: 10,
          ),
          const LoginForm(),
          const SizedBox(
            height: 20,
          ),
          const Text(
            'Hubungi Admin untuk mendapatkan akun',
            style: TextStyle(
              color: kZambeziColor,
              fontSize: 11,
              decoration: TextDecoration.underline,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Button(
            buttonText: 'Log In',
          ),
        ]),
      ),
    );
  }
}
