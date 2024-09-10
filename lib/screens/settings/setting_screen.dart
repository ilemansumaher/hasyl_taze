import 'package:flutter/material.dart';
import 'package:hasyl2/screens/mainscreen/main_screen.dart';

class SettingScreen extends StatefulWidget {
  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  var forAndroid = true;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          title: Text("Ekenomny režim"),
          leading: Switch(
            // thumb color (round icon)
            activeColor: Color.fromARGB(255, 255, 255, 255),
            activeTrackColor: renk,
            inactiveThumbColor: Color.fromARGB(255, 255, 255, 255),
            inactiveTrackColor: const Color.fromARGB(255, 133, 133, 133),
            splashRadius: 50.0,
            // boolean variable value
            value: forAndroid,
            // changes the state of the switch
            onChanged: (value) => setState(() => forAndroid = value),
          ),
        ),
      ],
    );
  }
}
