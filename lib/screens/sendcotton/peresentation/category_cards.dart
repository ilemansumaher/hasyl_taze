import 'package:flutter/material.dart';

class CategoryProcts extends StatelessWidget {
  const CategoryProcts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.black54,
              ),
              left: BorderSide(
                color: Colors.black54,
              ),
              right: BorderSide(
                color: Colors.black54,
              ),
            ),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12.0),
              topRight: Radius.circular(12.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
                width: 85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/image_pro.jpg"),
                    ),
                    const Text("Seeds"),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                width: 85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/image_pro.jpg"),
                    ),
                    const Text("Seeds"),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                width: 85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/image_pro.jpg"),
                    ),
                    const Text("Seeds"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black54,
              ),
              left: BorderSide(
                color: Colors.black54,
              ),
              right: BorderSide(
                color: Colors.black54,
              ),
            ),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12.0),
              bottomRight: Radius.circular(12.0),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 90,
                width: 85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/image_pro.jpg"),
                    ),
                    const Text("Seeds"),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                width: 85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/image_pro.jpg"),
                    ),
                    const Text("Seeds"),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                width: 85,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 40,
                      child: Image.asset("assets/images/image_pro.jpg"),
                    ),
                    const Text("Seeds"),
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
