// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:personal_website/widgets/connect_with_me.dart';
import 'package:personal_website/widgets/about.dart';
import 'package:personal_website/widgets/details.dart';
import 'package:personal_website/widgets/hello_text.dart';
import 'package:personal_website/widgets/name_text.dart';
import 'package:personal_website/widgets/os.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter/foundation.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      color: Colors.black,
      debugShowCheckedModeBanner: false,
      routes: {
        ConnectWithMe.routename: (context) => const ConnectWithMe(),
      },
      title: 'Ayush Bharsakle',
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(22, 0, 0, 0),
        appBarTheme: const AppBarTheme(color: Colors.black),
      ),
      home: const MyHomePage(title: 'Welcome!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final isWebMobile = kIsWeb &&
        (defaultTargetPlatform == TargetPlatform.iOS ||
            defaultTargetPlatform == TargetPlatform.android);
    double screenHeight = MediaQuery.of(context).size.height;
    List<Widget> list = [
      if (!isWebMobile)
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Color.fromARGB(255, 255, 17, 0)],
                begin: FractionalOffset(0.0, 3.0),
                end: FractionalOffset(6, 3.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              const Expanded(child: Group2Widget()),
              Expanded(
                child: ListView(
                  children: const [
                    HelloText(),
                    NameText(),
                  ],
                ),
              ),
            ],
          ),
          height: screenHeight,
        ),
      if (isWebMobile) const HelloText(),
      if (isWebMobile) const NameText(),
      if (isWebMobile) const Group2Widget(),
      if (isWebMobile) const AboutTile(),
      if (!isWebMobile)
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.black, Color.fromARGB(255, 255, 17, 0)],
                begin: FractionalOffset(0.0, 3.0),
                end: FractionalOffset(6, 3.0),
                stops: [0.0, 1.0],
                tileMode: TileMode.clamp),
          ),
          height: screenHeight,
          child: const AboutTile(),
        ),
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Color.fromARGB(255, 255, 17, 0)],
              begin: FractionalOffset(0.0, 3.0),
              end: FractionalOffset(6, 3.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: const ConnectWithMe(),
      ),
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Color.fromARGB(255, 255, 17, 0)],
              begin: FractionalOffset(0.0, 3.0),
              end: FractionalOffset(6, 3.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Details(),
      ),
    ];
    return Scaffold(
      backgroundColor: Colors.black,
      body:
          // isWebMobile
          // ?
          // ListView(children: const [
          //     Group2Widget(),
          //     Text(
          //       "The mobile version in currently under development. Please open it on the desktop.",
          //       style: TextStyle(color: Colors.white),
          //     )
          //   ])
          // :
          AnimationLimiter(
        child: ListView.builder(
          itemCount: list.length,
          itemBuilder: (BuildContext context, int index) {
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: const Duration(milliseconds: 1000),
              child: SlideAnimation(
                verticalOffset: 50.0,
                child: FadeInAnimation(
                  child: list[index],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
