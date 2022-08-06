// ignore_for_file: non_constant_identifier_names, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:inventory_flutter/tema.dart';

class HomeScreen extends StatelessWidget {
  final ZoomDrawerController;
  const HomeScreen(this.ZoomDrawerController);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: kPrimaryColor,
        leading: InkWell(
          onTap: () => ZoomDrawer.of(context)?.toggle(),
          child: Icon(Icons.menu),
        ),
      ),
      body: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          const Center(
            child: Card(
              shadowColor: Colors.amber,
              color: Colors.green,
              child: SizedBox(
                width: 300,
                height: 100,
                child: Center(
                  child: Text(
                    'kategori',
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
