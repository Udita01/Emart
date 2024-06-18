import 'package:example/constants.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kcontentColor,
        title: const Text(
          'Contact Us',
          style: TextStyle(
            color: Color.fromRGBO(48, 48, 48, 1),
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 100),
            const Text(
              'Contact Information:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Email: shopease@gds.ey.com',
              style: TextStyle(fontSize: 22),
            ),
            const Text(
              'Phone: +91 1234567890',
              style: TextStyle(fontSize: 22),
            ),
            const SizedBox(height: 100),
            const Text(
              'Follow Us:',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                IconButton(
                  icon: Image.asset(
                    'images/facebook.jfif',
                    width: MediaQuery.of(context).size.width * 0.17,
                  ),
                  onPressed: () {
                    // Open Facebook page
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'images/twitter.jfif',
                    width: MediaQuery.of(context).size.width * 0.17,
                  ),
                  onPressed: () {
                    // Open Facebook page
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'images/instagram.jfif',
                    width: MediaQuery.of(context).size.width * 0.22,
                  ),
                  onPressed: () {
                    // Open Facebook page
                  },
                ),
                IconButton(
                  icon: Image.asset(
                    'images/google.jfif',
                    width: MediaQuery.of(context).size.width * 0.17,
                  ),
                  onPressed: () {
                    // Open Google page
                  },
                ),
                // Add more IconButton widgets for other social media platforms
              ],
            ),
          ],
        ),
      ),
    );
  }
}
