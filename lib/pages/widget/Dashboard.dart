// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:inventory_flutter/pages/HomeScreen.dart';
import 'package:inventory_flutter/pages/MenuScreen.dart';
import 'package:inventory_flutter/tema.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final DrawerController = ZoomDrawerController();

    return Container(
      child: Scaffold(
          body: ZoomDrawer(
        controller: DrawerController,
        style: DrawerStyle.defaultStyle,
        menuScreen: const MenuScreen(),
        mainScreen: HomeScreen(DrawerController),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        menuBackgroundColor: kPrimaryColor,
        slideWidth: MediaQuery.of(context).size.width * .70,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      )),
    );
  }
}
