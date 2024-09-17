import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                padding:const EdgeInsets.symmetric(horizontal: 8.0),
                child: SizedBox(
                  height: 135,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Container(
                          margin: const EdgeInsets.all(5),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(6.0),
                            onTap: () {},
                            child: Column(
                              children: [
                                Image.network(
                                    fit: BoxFit.contain,
                                    height: 104,
                                    width: 104,
                                    "https://upload.wikimedia.org/wikipedia/commons/4/41/India_Farming.jpg"),
                                Text("Buy Product")
                              ],
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
