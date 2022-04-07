import 'package:flutter/material.dart';
import 'dart:html' as html;

class ConnectWithMe extends StatelessWidget {
  Widget imageButton(String path, String redirect) {
    return Expanded(
      child: RaisedButton(
        onPressed: () => html.window.open(redirect, "_blank"),
        child: Image(
          image: AssetImage(path),
        ),
      ),
    );
  }

  const ConnectWithMe({Key? key}) : super(key: key);
  static const routename = '/contact-screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pop(context),
        child: const Icon(
          Icons.home,
          color: Colors.black,
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const IconButton(
              onPressed: null,
              icon: Icon(Icons.facebook),
            ),
            imageButton('assets/images/insta-modified.png', ''),
            imageButton('assets/images/124021-modified.png',
                'https://twitter.com/AyushBharsakle'),
            imageButton('assets/images/linkedin-modified.png',
                'https://in.linkedin.com/in/ayush-bharsakle-4b4643200'),
            imageButton('assets/images/GitHub-Mark-modified.png',
                'https://github.com/bayush-9'),
          ],
        ),
      ),
    );
  }
}
