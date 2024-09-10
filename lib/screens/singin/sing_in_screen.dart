import 'package:flutter/material.dart';
import 'package:hasyl2/screens/mainscreen/main_screen.dart';

class SingInScreen extends StatelessWidget {
  const SingInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(

          padding: const EdgeInsets.all(5.0),
          child: Image.network("https://cdn-icons-png.flaticon.com/512/3174/3174960.png"),
        ),
        backgroundColor: renk,
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                MaterialPageRoute(
                  builder: (context) =>const MainScreen(),
                ),
                (route) => false,
              );
            },
            child:const Text(
              "Bash sahypa",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
