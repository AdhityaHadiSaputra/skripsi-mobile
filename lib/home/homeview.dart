import 'dart:ffi';

import 'package:coba/home/view.dart';
import 'package:flutter/material.dart';

import '../kategori/detail/view.dart';
import '../kategori/view.dart';

class Homeviews extends StatelessWidget {
  const Homeviews({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Drawer Header'),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Home',
              style: TextStyle(color: Colors.black),
            ),
            Row(
              children: const [
                Icon(Icons.search),
                SizedBox(
                  width: 25,
                ),
                Icon(Icons.notification_add_outlined)
              ],
            )
          ],
        ),
        backgroundColor: Colors.white,
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
              delegate: SliverChildListDelegate([
            const SizedBox(
              height: 50,
            ),
            GridView.count(
              shrinkWrap: true,
              crossAxisCount: 4,
              crossAxisSpacing: 10.0,
              mainAxisSpacing: 10.0,
              children: <Widget>[
                InkWell(
                  onTap: () => Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => KategoriView())),
                  child: MenuIcon(
                    icon: Icons.agriculture,
                    iconColor: Colors.red,
                    label: 'Pemupukan',
                  ),
                ),
                InkWell(
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DetailKategoriView(
                            hallo: 'halo saa',
                          ))),
                  child: MenuIcon(
                    icon: Icons.water,
                    iconColor: Colors.blue,
                    label: 'Penyiraman',
                  ),
                ),
                MenuIcon(
                  icon: Icons.ac_unit,
                  iconColor: Colors.red,
                  label: 'Pendinginan',
                ),
                MenuIcon(
                  icon: Icons.pest_control,
                  iconColor: Colors.red,
                  label: 'Control Hama',
                ),
              ],
            )
          ]))
        ],
      ),
    );
  }
}
