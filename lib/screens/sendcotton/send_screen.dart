import 'package:flutter/material.dart';

class SendCotton extends StatelessWidget {
  const SendCotton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.9,
          child: const Text(
            "Siz bu bolimden agza bolanynyzdan son peydalanyp bilersiniz",
            softWrap: true,
          ),
        )
      ],
    );
  }
}
