// ignore_for_file: file_names, unused_import

// ignore: unnecessary_import
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';

import 'package:flutter/material.dart';
import 'package:inventory_flutter/pages/KategoriScreen.dart';
import 'package:inventory_flutter/pages/splash_screen.dart';
import 'package:inventory_flutter/tema.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kPrimaryColor,
      child: SafeArea(
          child: Column(
        children: [
          DrawerHeader(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const CircleAvatar(
                  backgroundImage: AssetImage('assets/images/user.jpg'),
                  maxRadius: 35,
                ),
                const Text(
                  'Admin',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: kWhiteColor,
                      fontSize: 22.0),
                ),
                const SizedBox(
                  height: 1.0,
                ),
                const Text(
                  'admin@gmail.com',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 12.0),
                ),
              ],
            ),
          ),
          ListTile(
            leading: const Icon(
              Icons.home,
              color: kWhiteColor,
            ),
            title: const Text('Dashboard',
                style: TextStyle(fontSize: 16, color: kWhiteColor)),
            onTap: () {
              // Here you can give your route to navigate
            },
          ),
          const Divider(height: 0),
          ListTile(
            leading: const Icon(Icons.list_alt_outlined, color: kWhiteColor),
            title: const Text('Kategori',
                style: TextStyle(fontSize: 16, color: kWhiteColor)),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => KategoriScreen(DrawerController)));
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_business_rounded, color: kWhiteColor),
            title: const Text('Produk',
                style: TextStyle(fontSize: 16, color: kWhiteColor)),
            onTap: () {
              // to close drawer programatically..
            },
          ),
          ListTile(
            leading: const Icon(Icons.add_card_rounded, color: kWhiteColor),
            title: const Text('Member',
                style: TextStyle(fontSize: 16, color: kWhiteColor)),
            onTap: () {
              // to close drawer programatically..
            },
          ),
          ListTile(
            leading: const Icon(Icons.local_shipping_sharp, color: kWhiteColor),
            title: const Text('Supplier',
                style: TextStyle(fontSize: 16, color: kWhiteColor)),
            onTap: () {
              // to close drawer programatically..
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.monetization_on_rounded,
              color: kWhiteColor,
            ),
            title: const Text('Transaksi',
                style: TextStyle(fontSize: 16, color: kWhiteColor)),
            onTap: () {
              // Here you can give your route to navigate
            },
          ),

          ListTile(
            leading: const Icon(
              Icons.settings,
              color: kWhiteColor,
            ),
            title: const Text('Pengaturan',
                style: TextStyle(fontSize: 16, color: kWhiteColor)),
            onTap: () {
              // Here you can give your route to navigate
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.logout,
              color: kWhiteColor,
            ),
            title: const Text('Logout',
                style: TextStyle(fontSize: 16, color: kWhiteColor)),
            onTap: () => exit(0),
          ),
          // Padding(
          //   padding: EdgeInsets.all(8),
          //   child: InkWell(
          //     child: Row(
          //       const Icon(Icons.home),
          //       Sizebox(
          //         width: 20,
          //       ),
          //       Text(
          //         'Home',
          //         TextStyle(color: Colors.white, fontSize: 22),
          //       ),
          //     ),
          //   ),
          // )
        ],
      )),
    );
  }

  void doUserLogin() async {}

  void doUserLogout() async {}
}
