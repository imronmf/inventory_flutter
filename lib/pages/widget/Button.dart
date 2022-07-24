// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:inventory_flutter/tema.dart';

// ignore: duplicate_ignore
class Button extends StatefulWidget {
  final String buttonText;
  const Button({required this.buttonText});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      alignment: Alignment.center,
      height: MediaQuery.of(context).size.height * 0.08,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16), color: kPrimaryColor),
      child: Text(
        style: textButton.copyWith(color: kWhiteColor),
        widget.buttonText,
      ),
    ));
  }
}
