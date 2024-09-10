import 'package:flutter/material.dart';
import 'package:hasyl2/screens/mainscreen/peresentation/ecenom_news.dart';
import 'package:hasyl2/screens/mainscreen/peresentation/news_part.dart';
import 'package:hasyl2/screens/settings/setting_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SizedBox(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.all(3),
              children: [
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Umumy"),
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Pagta"),
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Bugday"),
                ),
                const SizedBox(
                  width: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text("Gayry ekinler"),
                ),
              ],
            ),
          ),
          for (int i = 0; i < 20; i++)
            SizedBox(
              child: forAndroid ?const NewsPart() : const EcenomeNews(),
            ),
        ],
      ),
    );
  }
}
