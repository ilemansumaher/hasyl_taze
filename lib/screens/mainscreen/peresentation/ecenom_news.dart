import 'package:flutter/material.dart';

class EcenomeNews extends StatefulWidget {
  const EcenomeNews({super.key});

  @override
  State<EcenomeNews> createState() => _EcenomeNewsState();
}

class _EcenomeNewsState extends State<EcenomeNews> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(12.0),
      onTap: () {},
      child: Container(
        height: 60,
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: Color.fromARGB(255, 182, 180, 180),
            ),
          ),
        ),
        margin: const EdgeInsets.all(5.0),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(
              width: 15.0,
            ),
             Column(
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
