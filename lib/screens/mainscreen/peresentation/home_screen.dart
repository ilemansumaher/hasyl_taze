import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:hasyl2/screens/mainscreen/peresentation/categorycards/banner_image.dart';
import 'package:hasyl2/screens/mainscreen/peresentation/categorycards/category_cards.dart';
import 'package:hasyl2/screens/utils/app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppB(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 300,
                  child: GridView.builder(
                    itemCount: 6,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      childAspectRatio: 0.85,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                    ),
                    itemBuilder: (
                      BuildContext context,
                      int index,
                    ) {
                      return CategoryCards(
                        title: "Crop Doctor",
                      );
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    BannerImage(),
                    SizedBox(
                      height: 20.0,
                    ),
                    BannerImage(),
                    SizedBox(
                      height: 20.0,
                    ),
                    BannerImage(),
                    SizedBox(
                      height: 20.0,
                    ),
                    BannerImage(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
