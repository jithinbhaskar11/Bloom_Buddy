import 'package:bloom_buddy/view/5_home_screen/home_screen.dart';
import 'package:bloom_buddy/view/6_account_screen/account_screen.dart';
import 'package:bloom_buddy/view/7_plant_care_screen/plant_care_screen.dart';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BnBar extends StatefulWidget {
  const BnBar({super.key});

  @override
  State<BnBar> createState() => _BnBarState();
}

class _BnBarState extends State<BnBar> {
  var currentIndex = 0;
  var screens = [
    Home_Screen(),
    PlantCare_Screen(),
    Account_Screen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: SalomonBottomBar(
          currentIndex: currentIndex,
          onTap: (tapedindex) {
            setState(() {
              currentIndex = tapedindex;

              ///here, index value change according to each tap
            });
          },
          //onTap: (i) => setState(() => _currentIndex = i),
          items: [
            /// Home
            SalomonBottomBarItem(
              icon: Icon(FontAwesomeIcons.leaf,color: Colors.green,),
              title: Text("My Graden"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.book,color: Colors.green,),
              title: Text("Library"),
              selectedColor: Colors.purple,
            ),
            SalomonBottomBarItem(
              icon: Icon(Icons.account_circle_rounded,color: Colors.green,),
              title: Text("Account"),
              selectedColor: Colors.purple,
            ),
          ]),
      body: screens[currentIndex],
    );
  }
}
