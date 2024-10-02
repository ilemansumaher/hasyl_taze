import 'package:flutter/material.dart';

class Morecategory extends StatelessWidget {
  const Morecategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[200],
        title: Text("Category"),
        centerTitle: true,
      ),
      body: GridView.builder(
        itemCount: 12,
        padding: EdgeInsets.all(12.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4, mainAxisSpacing: 5, crossAxisSpacing: 5),
        itemBuilder: (context, index) {
          return MoreCategoryCard();
        },
      ),
    );
  }
}

class MoreCategoryCard extends StatelessWidget {
  const MoreCategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black54,
        ),
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.abc,
            size: 35,
          ),
          Text(
            "Seeds",
            style: TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}
