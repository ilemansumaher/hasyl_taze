import 'package:flutter/material.dart';
import 'package:hasyl2/screens/mainscreen/main_screen.dart';
import 'package:hasyl2/screens/utils/dialog_show.dart';

var forAndroid = false;
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        ListTile(
          title: const Text("Ekenomny režim"),
          leading: Switch(
            // thumb color (round icon)
            activeColor:const Color.fromARGB(255, 255, 255, 255),
            activeTrackColor: renk,
            inactiveThumbColor:const Color.fromARGB(255, 255, 255, 255),
            inactiveTrackColor: const Color.fromARGB(255, 133, 133, 133),
            splashRadius: 50.0,
            // boolean variable value
            value: forAndroid,
            // changes the state of the switch
            onChanged: (value) => setState(() => forAndroid = value),
          ),
          trailing: IconButton(onPressed: () {
            dialogBuilder(context, "Duydyrys", "Eger siz ekenomny režime geçseňiz onda kabiz suratlar görinmez!");
          }, icon:const Icon(Icons.more_vert_rounded)),
        ),
      ],
    );
  }
}
