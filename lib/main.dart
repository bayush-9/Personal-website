// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:personal_website/widgets/connect_with_me.dart';
import 'package:personal_website/widgets/about.dart';
import 'package:personal_website/widgets/details.dart';
import 'package:personal_website/widgets/hello_text.dart';
import 'package:personal_website/widgets/name_text.dart';
import 'package:personal_website/widgets/os.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
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
      debugShowCheckedModeBanner: false,
      routes: {
        ConnectWithMe.routename: (context) => const ConnectWithMe(),
      },
      title: 'Flutter Demo',
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
  late FixedExtentScrollController controller;

  @override
  void initState() {
    super.initState();
    controller = FixedExtentScrollController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    List<Widget> list = [
      Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.black, Color.fromARGB(255, 255, 17, 0)],
              begin: FractionalOffset(0.0, 3.0),
              end: FractionalOffset(6, 3.0),
              stops: [0.0, 1.0],
              tileMode: TileMode.clamp),
        ),
        child: Expanded(
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
        ),
        height: screenHeight,
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
        child: const Details(),
      ),
    ];
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final nextIndex = controller.selectedItem + 1;
          controller.animateToItem(nextIndex,
              duration: const Duration(seconds: 1), curve: Curves.easeInOut);
        },
        child: const Icon(Icons.downhill_skiing),
      ),
      backgroundColor: Colors.black,
      // appBar: AppBar(
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.end,
      //     children: [
      //       InkWell(
      //           onTap: () => scrollToItem(),
      //           child: appbarButton("ABOUT", )),
      //       const SizedBox(
      //         width: 20,
      //       ),
      //       appbarButton("CONNECT WITH ME", connectWithMekey),
      //       const SizedBox(
      //         width: 20,
      //       ),
      //       FlatButton(
      //         color: Colors.black,
      //         onPressed: () => html.window.open(
      //             'https://drive.google.com/file/d/1hBP5PB8IZ3G4BVAZAT_RsZIic4iVOZkI/view?usp=sharing',
      //             "_blank"),
      //         child: const Text(
      //           "RESUME",
      //           style: TextStyle(color: Colors.white),
      //         ),
      //       ),
      //     ],
      //   ),
      //   backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      // ),
      body: AnimationLimiter(
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
