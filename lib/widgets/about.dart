import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AboutTile extends StatelessWidget {
  const AboutTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isWebMobile = kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android);
    return !isWebMobile
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: isWebMobile ? 500 : 1300,
                child: Card(
                  shadowColor: Colors.blue,
                  color: Colors.grey[900],
                  elevation: 50,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        SizedBox(
                          width: 50,
                        ),
                        SizedBox(
                          height: 300,
                          width: 300,
                          child: Image(
                            image: AssetImage(
                                'assets/images/IMG_6013-modified.png'),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Expanded(
                          child: Text(
                            "Hi! and welcome to my e-Portfolio. My name is Ayush Anil Bharsakle. I am a Flutter developer, having built a lot of real world mobile apps. Currently I am exploring the web version of flutter. I found flutter SDK different from others as you can build an android app, an iOS app and a website through the same codebase ! I love solving puzzles and competitive programming keeps me busy :). ",
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          )
        : Container(
            height: 1000,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                SizedBox(
                  height: 300,
                  child: Image(
                    image: AssetImage('assets/images/IMG_6013-modified.png'),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Expanded(
                  child: Card(
                    color: Colors.black,
                    elevation: 100,
                    child: Text(
                      "Hi! and welcome to my e-Portfolio. My name is Ayush Anil Bharsakle. I am a Flutter developer, having built a lot of real world mobile apps. Currently I am exploring the web version of flutter. I found flutter SDK different from others as you can build an android app, an iOS app and a website through the same codebase ! I love solving puzzles and competitive programming keeps me busy :). ",
                      style: TextStyle(color: Colors.white, fontSize: 30),
                    ),
                  ),
                ),
              ],
            ),
          );
  }
}
