import 'package:flutter/material.dart';
import 'package:hasyl2/screens/mainscreen/peresentation/home_screen.dart';
import 'package:hasyl2/screens/sendcotton/send_screen.dart';
import 'package:hasyl2/screens/settings/setting_screen.dart';
import 'package:hasyl2/screens/singin/sing_in_screen.dart';

const  renk = Color.fromRGBO(64, 191, 255, 1);
var screens = [const HomeScreen(),const SendCotton(),const SettingScreen()];

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;

  NavigationDestinationLabelBehavior labelBehavior =
      NavigationDestinationLabelBehavior.onlyShowSelected;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: renk,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SingInScreen(),
                  ),
                  (route) => false,
                );
              },
              child: const Text(
                "Sing in",
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ))
        ],
        leading: Padding(
          padding: const EdgeInsets.all(5),
          child: Image.network(
            "https://cdn-icons-png.flaticon.com/512/3174/3174960.png",
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: screens[currentPageIndex],
          )
        ],
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: renk,
        labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        indicatorColor:const Color.fromARGB(255, 174, 195, 228),
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
            icon: Icon(
              Icons.settings,
            ),
            label: 'Setting',
          ),
        ],
      ),
    );
  }
}
