import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BottomScrollProduct extends StatelessWidget {
  String title;
  BottomScrollProduct({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Spacer(),
              TextButton(
                onPressed: () {},
                child: const Text(
                  "View All",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 190,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                ScrolImage(),
                SizedBox(
                  width: 10.0,
                ),
                ScrolImage(),
                SizedBox(
                  width: 10.0,
                ),
                ScrolImage(),
                SizedBox(
                  width: 10.0,
                ),
                ScrolImage(),
                SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScrolImage extends StatelessWidget {
  const ScrolImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 138,
      padding: const EdgeInsets.all(14.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8.0),
            ),
            child: SizedBox(
              width: 138,
              child: Image.asset("assets/images/image_pro.jpg"),
            ),
          ),
          const Spacer(),
          const Text(
            "Sahib Akira Sahib Pesticides Pvt ...",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            maxLines: 2,
          ),
          const Text(
            "345 #",
            style: TextStyle(
              color: Colors.green,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
