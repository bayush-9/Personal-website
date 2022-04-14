import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
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

    Widget descText(String desc) {
      return Text(
        desc,
        style: const TextStyle(color: Colors.white),
      );
    }

    return SizedBox(
      height: 200,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  width: _ishoverg ? 150 : 100,
                  height: _ishoverg ? 150 : 100,
                  child: InkWell(
                    onHover: (value) => changehoverg(),
                    onTap: () => html.window
                        .open('https://github.com/bayush-9', "_blank"),
                    child: const Image(
                      image:
                          AssetImage('assets/images/GitHub-Mark-modified.png'),
                    ),
                  ),
                ),
                descText("Github"),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  width: _ishoverl ? 150 : 100,
                  height: _ishoverl ? 150 : 100,
                  child: InkWell(
                    onHover: (value) => changehoverl(),
                    onTap: () => html.window.open(
                        'https://www.linkedin.com/in/ayush-bharsakle-4b4643200/',
                        "_blank"),
                    child: const Image(
                      image: AssetImage('assets/images/linkedin-modified.png'),
                    ),
                  ),
                ),
                descText("LinkedIn"),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  width: _ishoveri ? 150 : 100,
                  height: _ishoveri ? 150 : 100,
                  child: InkWell(
                    onHover: (value) => changehoveri(),
                    onTap: () => html.window.open(
                        'https://www.instagram.com/ayush.bharsakle/', "_blank"),
                    child: const Image(
                      image: AssetImage('assets/images/insta-modified.png'),
                    ),
                  ),
                ),
                descText("Instagram"),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white, width: 3),
                  ),
                  width: _ishovert ? 150 : 100,
                  height: _ishovert ? 150 : 100,
                  child: InkWell(
                    onHover: (value) => changehovert(),
                    onTap: () => html.window
                        .open('https://twitter.com/AyushBharsakle', "_blank"),
                    child: const Image(
                      image: AssetImage('assets/images/124021-modified.png'),
                    ),
                  ),
                ),
                descText("Twitter"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
