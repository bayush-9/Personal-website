import 'package:flutter/material.dart';
import 'package:personal_website/widgets/about.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  static const routename = '/about-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "ABOUT....",
          style: TextStyle(fontSize: 30),
        ),
      ),
      backgroundColor: Colors.black,
      body: const Center(child: AboutTile()),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.home,
          color: Colors.black,
        ),
      ),
    );
  }
}
