import 'package:flutter/material.dart';
import 'package:hasyl2/screens/mainscreen/peresentation/categorycards/banner_image.dart';
import 'package:hasyl2/screens/sendcotton/peresentation/bottom_scroll_product.dart';
import 'package:hasyl2/screens/sendcotton/peresentation/category_cards.dart';
import 'package:hasyl2/screens/utils/app_bar.dart';

class SendCotton extends StatelessWidget {
  const SendCotton({super.key});
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverAppB(),
        SliverList(
          delegate: SliverChildListDelegate(
            [
             const CategoryProcts(),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: BannerImage(),
              ),
               BottomScrollProduct(title: "Micro Nutrients",),
              const Padding(
                padding: EdgeInsets.all(12.0),
                child: BannerImage(),
              ),
               BottomScrollProduct(title: "Fertilizer",),

            ],
          ),
        ),
      ],
    );
  }
}
