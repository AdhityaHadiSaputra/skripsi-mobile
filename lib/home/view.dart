import 'package:flutter/material.dart';
import '../account/accountpage.dart';
import '../kategori/detail/view.dart';
import '../kategori/view.dart';
import '../setting/settingpage.dart';
import './controller.dart';
import 'homeview.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends HomeControler {
  int currentindex = 0;
  final screen = [
    Homeviews(),
    SettingView(),
    Accountview(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: currentindex,
        children: screen,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          currentindex = value;
        }),
        currentIndex: currentindex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_accessibility), label: 'Setting'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_outlined), label: 'Account')
        ],
      ),
    );
  }
}

class MenuIcon extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String label;

  MenuIcon({required this.icon, required this.iconColor, required this.label});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              decoration: BoxDecoration(
                  color: iconColor.withOpacity(.2),
                  borderRadius: BorderRadius.circular(10.0)),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Icon(icon, color: iconColor),
              )),
          const SizedBox(height: 10.0),
          Text(label)
        ],
      ),
    );
  }
}
