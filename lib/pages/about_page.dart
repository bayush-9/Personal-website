import 'package:flutter/material.dart';
import 'package:personal_website/widgets/about.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);
  static const routename = '/about-page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: AboutTile(),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: Icon(
          Icons.home,
          color: Colors.black,
        ),
      ),
    );
  }
}
