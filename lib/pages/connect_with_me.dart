import 'package:flutter/material.dart';
import 'dart:html' as html;

class ConnectWithMe extends StatefulWidget {
  const ConnectWithMe({Key? key}) : super(key: key);
  static const routename = '/contact-screen';

  @override
  State<ConnectWithMe> createState() => _ConnectWithMeState();
}

class _ConnectWithMeState extends State<ConnectWithMe> {
  bool _ishoveri = false;
  bool _ishovert = false;
  bool _ishoverl = false;
  bool _ishoverg = false;
  @override
  Widget build(BuildContext context) {
    void changehoveri() {
      print("changing hower");
      setState(() {
        _ishoveri = !_ishoveri;
      });
    }

    void changehoverg() {
      setState(() {
        _ishoverg = !_ishoverg;
      });
    }

    void changehoverl() {
      setState(() {
        _ishoverl = !_ishoverl;
      });
    }

    void changehovert() {
      setState(() {
        _ishovert = !_ishovert;
      });
    }

    // Widget imageButton(String path, String redirect) {
    //   return
    // }

    return
        // Scaffold(
        //   backgroundColor: Colors.black,
        //   floatingActionButton: FloatingActionButton(
        //     onPressed: () => Navigator.pop(context),
        //     child: const Icon(
        //       Icons.home,
        //       color: Colors.black,
        //     ),
        //   ),
        // body:

        Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.white, width: 3),
            ),
            // color: Colors.green,
            width: _ishoveri ? 150 : 100,
            height: _ishoveri ? 150 : 100,
            child: InkWell(
              onHover: (value) => changehoveri(),
              // hoverColor: const Color.fromARGB(255, 184, 182, 177),
              onTap: () => html.window
                  .open('https://www.instagram.com/ayush.bharsakle/', "_blank"),
              child: const Image(
                image: AssetImage('assets/images/insta-modified.png'),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              // color: Colors.green,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.white, width: 3),
            ),
            // color: Colors.green,
            width: _ishovert ? 150 : 100,
            height: _ishovert ? 150 : 100,
            child: InkWell(
              onHover: (value) => changehovert(),
              // hoverColor: const Color.fromARGB(255, 184, 182, 177),
              onTap: () => html.window
                  .open('https://twitter.com/AyushBharsakle', "_blank"),
              child: const Image(
                image: AssetImage('assets/images/124021-modified.png'),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              // color: Colors.green,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.white, width: 3),
            ),
            // color: Colors.green,
            width: _ishoverl ? 150 : 100,
            height: _ishoverl ? 150 : 100,
            child: InkWell(
              onHover: (value) => changehoverl(),
              // hoverColor: const Color.fromARGB(255, 184, 182, 177),
              onTap: () => html.window.open(
                  'https://www.linkedin.com/in/ayush-bharsakle-4b4643200/',
                  "_blank"),
              child: const Image(
                image: AssetImage('assets/images/linkedin-modified.png'),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              // color: Colors.green,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(color: Colors.white, width: 3),
            ),
            // color: Colors.green,
            width: _ishoverg ? 150 : 100,
            height: _ishoverg ? 150 : 100,
            child: InkWell(
              onHover: (value) => changehoverg(),
              // hoverColor: const Color.fromARGB(255, 184, 182, 177),
              onTap: () =>
                  html.window.open('https://github.com/bayush-9', "_blank"),
              child: const Image(
                image: AssetImage('assets/images/GitHub-Mark-modified.png'),
              ),
            ),
          ),

          // imageButton('assets/images/insta-modified.png',
          //     'https://www.instagram.com/ayush.bharsakle/'),
          // imageButton('assets/images/124021-modified.png',
          //     'https://twitter.com/AyushBharsakle'),
          // imageButton('assets/images/linkedin-modified.png',
          //     'https://in.linkedin.com/in/ayush-bharsakle-4b4643200'),
          // imageButton('assets/images/GitHub-Mark-modified.png',
          //     'https://github.com/bayush-9'),
        ],
      ),
    );
    // ),
    // );
  }
}
