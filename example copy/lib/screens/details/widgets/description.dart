import 'package:flutter/material.dart';
import 'package:example/constants.dart';

class Description extends StatefulWidget {
  final String description;
  final String specifications;
  final String reviews;
  const Description({
    super.key,
    required this.description,
    required this.specifications,
    required this.reviews,
  });

  @override
  State<Description> createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  int selectedTabIndex =
      0; // 0 for Description, 1 for Specifications, 2 for Reviews

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTabIndex = 0;
                });
              },
              child: Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  color: selectedTabIndex == 0 ? kprimaryColor : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Description",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedTabIndex == 0 ? Colors.white : Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTabIndex = 1;
                });
              },
              child: Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  color: selectedTabIndex == 1 ? kprimaryColor : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Specifications",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedTabIndex == 1 ? Colors.white : Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selectedTabIndex = 2;
                });
              },
              child: Container(
                width: 120,
                height: 40,
                decoration: BoxDecoration(
                  color: selectedTabIndex == 2 ? kprimaryColor : Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Reviews",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedTabIndex == 2 ? Colors.white : Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        // Display content based on selected tab
        selectedTabIndex == 0
            ? Text(
                widget.description,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              )
            : selectedTabIndex == 1
                ? Text(
                    widget.specifications,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  )
                : Text(
                    widget.reviews,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
      ],
    );
  }
}
