// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:inventory_flutter/pages/KategoriScreen.dart';
import 'package:inventory_flutter/tema.dart';

import '../MenuScreen.dart';

class Kategori extends StatefulWidget {
  const Kategori({Key? key}) : super(key: key);

  @override
  State<Kategori> createState() => KategoriState();
}

class KategoriState extends State<Kategori> {
  @override
  Widget build(BuildContext context) {
    final DrawerController = ZoomDrawerController();

    return Scaffold(
      body: ZoomDrawer(
        controller: DrawerController,
        style: DrawerStyle.defaultStyle,
        menuScreen: const MenuScreen(),
        mainScreen: KategoriScreen(DrawerController),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        menuBackgroundColor: kPrimaryColor,
        slideWidth: MediaQuery.of(context).size.width * .70,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),
    );
  }
}
