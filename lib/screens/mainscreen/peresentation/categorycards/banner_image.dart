import 'package:flutter/material.dart';

class BannerImage extends StatelessWidget {
  const BannerImage({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ClipRRect(borderRadius: BorderRadius.circular(14.0),
      child: Image.asset("assets/images/image_pro.jpg",fit: BoxFit.cover,),
      
      ),
    );
  }
}