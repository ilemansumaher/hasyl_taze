import 'package:flutter/material.dart';

// ignore: must_be_immutable
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
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(8.0),
            ),
            child: SizedBox(
              width: 138,
              height: 103,
              child: Image.asset(
                "assets/images/image_pro.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          const Divider(
            height: 0,
            color: Colors.black54,
            thickness: 0.5,
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Sahib Akira Sahib Pesticides Pvt ...",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              textAlign: TextAlign.start,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "345 #",
              style: TextStyle(
                color: Colors.green,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
