import 'package:flutter/material.dart';
import 'package:hasyl2/screens/mainscreen/main_screen.dart';
import 'package:hasyl2/screens/settings/singin/sing_in_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());

}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: MainScreen(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      routes: {
        '/':(context)=>const MainScreen(),
        '/singin':(context)=>const SingInScreen(),
      },
    );
  }
}