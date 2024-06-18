import 'package:example/screens/details/slide1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageSlider extends StatelessWidget {
  final Function(int) onChange;
  final int currentSlide;
  const ImageSlider({
    super.key,
    required this.currentSlide,
    required this.onChange,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: 220,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: PageView(
              scrollDirection: Axis.horizontal,
              allowImplicitScrolling: true,
              onPageChanged: onChange,
              physics: const ClampingScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Laptop(
                          title: 'New in Laptops',
                          label1: "Laptop ABC",
                          label2: "Laptop PQR",
                          label3: "Laptop XYZ",
                          imageUrl1: 'images/electronics/laptop3.jpg',
                          imageUrl2: 'images/electronics/laptop2.jpg',
                          imageUrl3: 'images/electronics/laptop1.jpg'),
                    ),
                  ),
                  child: Image.asset(
                    "images/slide1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Laptop(
                        title: "New in Fashion",
                        label1: "White Pants",
                        label2: "Green Kurta",
                        label3: "Black Dress",
                        imageUrl1: 'images/women fashion/pants.png',
                        imageUrl2: 'images/women fashion/kurta.png',
                        imageUrl3: 'images/women fashion/lehengab.png',
                      ),
                    ),
                  ),
                  child: Image.asset(
                    "images/slide1.jfif",
                    fit: BoxFit.cover,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const Laptop(
                        title: "New in Shoes",
                        label1: "Purple Air Jordans",
                        label2: "Yellow Sneakers",
                        label3: "Pink Boots",
                        imageUrl1: 'images/shoes/Air Jordan pr.png',
                        imageUrl2: 'images/shoes/sports shoes y.png',
                        imageUrl3: 'images/shoes/womens-boots pk.jpg',
                      ),
                    ),
                  ),
                  child: Image.asset(
                    "images/slider3.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned.fill(
          bottom: 10,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                3,
                (index) => AnimatedContainer(
                  duration: const Duration(microseconds: 300),
                  width: currentSlide == index ? 15 : 8,
                  height: 8,
                  margin: const EdgeInsets.only(right: 3),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: currentSlide == index
                          ? Colors.black
                          : Colors.transparent,
                      border: Border.all(
                        color: Colors.black,
                      )),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
