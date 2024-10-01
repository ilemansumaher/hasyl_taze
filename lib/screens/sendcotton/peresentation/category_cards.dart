import 'package:flutter/material.dart';

class CategoryProcts extends StatelessWidget {
  const CategoryProcts({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration:const BoxDecoration(
              border: Border(
                top: BorderSide(color: Colors.black54),
                left: BorderSide(color: Colors.black54),
                right: BorderSide(color: Colors.black54),
              ),
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(12.0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardReady(true, false),
                CardReady(true, false),
                CardReady(true, false),
                CardReady(false, false),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black54,
              ),
              borderRadius: const BorderRadius.vertical(
                bottom: Radius.circular(12.0),
              ),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CardReady(true, false),
                CardReady(true, false),
                CardReady(true, false),
                CardReady(false, false),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class CardReady extends StatelessWidget {
  bool? rightBorder;
  bool? leftBorder;
  CardReady(this.rightBorder, this.leftBorder, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          right: rightBorder == true
              ? const BorderSide(color: Colors.black54)
              : BorderSide.none,
          left: leftBorder == true
              ? const BorderSide(color: Colors.black54)
              : BorderSide.none,
        ),
      ),
      height: 90,
      width: MediaQuery.of(context).size.width * 0.23,
      child:const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.construction_outlined,
            size: 35.0,
          ),
          Text(
            "Salam",
          ),
        ],
      ),
    );
  }
}
