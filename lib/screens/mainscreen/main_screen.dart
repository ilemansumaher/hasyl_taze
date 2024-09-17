import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hasyl2/screens/mainscreen/peresentation/home_screen.dart';
import 'package:hasyl2/screens/mytask/peresentation/task_screen.dart';
import 'package:hasyl2/screens/sendcotton/send_screen.dart';
import 'package:hasyl2/screens/settings/setting_screen.dart';
import 'package:hasyl2/screens/settings/singin/sing_in_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  final PageController _pageController = PageController();

  // NavigationDestinationLabelBehavior labelBehavior =
  //     NavigationDestinationLabelBehavior.onlyShowSelected;
  void _onTappedBar(int value) {
    setState(() {
      currentPageIndex = value;
    });
    _pageController.jumpToPage(value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.lerp(
            Colors.green, const Color.fromARGB(255, 179, 236, 181), 100),
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
      body: PageView(
        controller: _pageController,
        onPageChanged: (value) {
          setState(() {
            currentPageIndex = value;
          });
        },
        children: const [
          HomeScreen(),
          SendCotton(),
          SettingScreen(),
          TaskScreen()
        ],
      ),
      bottomNavigationBar: NavigationBar(
        // backgroundColor: renk,
        // labelBehavior: labelBehavior,
        selectedIndex: currentPageIndex,
        indicatorColor: Colors.transparent,
        onDestinationSelected: _onTappedBar,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(
              Icons.home,
              color: Color.fromRGBO(43, 152, 70, 1),
            ),
            icon: Icon(CupertinoIcons.home),
            label: 'Explore',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.shopping_bag,
              color: Color.fromRGBO(43, 152, 70, 1),
            ),
            icon: Icon(Icons.shopping_bag_outlined),
            label: 'Saved',
          ),
          NavigationDestination(
            selectedIcon: Icon(
              Icons.settings,
              color: Color.fromRGBO(43, 152, 70, 1),
            ),
            icon: Icon(
              Icons.settings_outlined,
            ),
            label: 'Setting',
          ),
          NavigationDestination(
              selectedIcon: Icon(
                Icons.task,
                color: Color.fromRGBO(43, 152, 70, 1),
              ),
              icon: Icon(Icons.task_outlined),
              label: "My Task"),
        ],
      ),
    );
  }
}
