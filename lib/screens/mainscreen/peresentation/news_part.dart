import 'package:flutter/material.dart';

class NewsPart extends StatefulWidget {
  const NewsPart({super.key});

  @override
  State<NewsPart> createState() => _NewsPartState();
}

class _NewsPartState extends State<NewsPart> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.0),
      onTap: () {},
      child: Container(
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(255, 182, 180, 180),
            ),
          ),
        ),
        margin: const EdgeInsets.all(5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox.fromSize(
                size: const Size.fromRadius(48),
                child: Image.network(
                  filterQuality: FilterQuality.medium,
                  "https://www.shutterstock.com/image-photo/durum-shelled-wheat-bugdaykarakilcik-special-260nw-692886595.jpg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 15.0,
            ),
            const Column(
              children: [
                Text(
                  'this shome text',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text("about more text"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
