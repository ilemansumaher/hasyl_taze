import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hasyl2/screens/mainscreen/peresentation/home_screen.dart';
import 'package:hasyl2/screens/sendcotton/send_screen.dart';
import 'package:hasyl2/screens/settings/setting_screen.dart';
import 'package:hasyl2/screens/singin/sing_in_screen.dart';

var renk = Color.fromRGBO(64, 191, 255, 1);
var screens=[HomeScreen(),SendCotton(),SettingScreen()];
class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
   int currentPageIndex = 0;

  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.alwaysShow;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: renk,
        actions: [TextButton(onPressed: () {
          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => SingInScreen(),), (route) => false,);
        }, child: Text("Sing in",style: TextStyle(color: Colors.white),))],
        leading: Icon(Icons.construction_outlined),
      ),
      body: screens[currentPageIndex],
      bottomNavigationBar: NavigationBar(
        backgroundColor: renk,
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Explore',
          ),
          
          NavigationDestination(
            // selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark),
            label: 'Saved',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
