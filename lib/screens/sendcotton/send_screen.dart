import 'package:flutter/material.dart';
import 'package:hasyl2/screens/mainscreen/peresentation/categorycards/category_cards.dart';
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
              CategoryProcts(),
            ],
          ),
        ),
      ],
    );
  }
}
