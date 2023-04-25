import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

class ProductImagesSlider extends StatefulWidget {
  const ProductImagesSlider({super.key});

  @override
  State<ProductImagesSlider> createState() => _ProductImagesSliderState();
}

class _ProductImagesSliderState extends State<ProductImagesSlider> {
  @override
  Widget build(BuildContext context) {
    return ImageSlideshow(
      autoPlayInterval: 3000,
      height: 300,
      indicatorBackgroundColor: Colors.white,
      indicatorColor: Colors.blueAccent,
      indicatorRadius: 4,
      isLoop: true,
      children: [
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/images/p1.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/images/p2.png"),
        ),
        Padding(
          padding: EdgeInsets.all(8),
          child: Image.asset("assets/images/p1.png"),
        ),
      ],
    );
  }
}
