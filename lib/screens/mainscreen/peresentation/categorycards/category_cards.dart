import 'package:flutter/material.dart';

class CategoryCards extends StatefulWidget {
  String title;
  CategoryCards({super.key, required this.title});

  @override
  State<CategoryCards> createState() => _CategoryCardsState();
}

class _CategoryCardsState extends State<CategoryCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14.0),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 104,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.asset(
                "assets/images/image_pro.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          Text(widget.title)
        ],
      ),
    );
  }
}
