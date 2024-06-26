import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyImageSlider extends StatefulWidget {
  final Function(int) onChange;
  final String image;
  const MyImageSlider({
    super.key,
    required this.image,
    required this.onChange,
  });

  @override
  State<MyImageSlider> createState() => _MyImageSliderState();
}

class _MyImageSliderState extends State<MyImageSlider> {
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: PageView.builder(
        controller: _pageController,
        onPageChanged: widget.onChange,
        itemCount: 5,
        itemBuilder: (context, index) {
          // final adjustedIndex = index % 5;
          return Hero(
            tag: widget.image,
            child: Image.asset(widget.image),
          );
        },
      ),
    );
  }
}
