import 'package:flutter/material.dart';
import 'package:personal_website/pages/about_page.dart';
import 'package:personal_website/pages/connect_with_me.dart';
import 'package:personal_website/widgets/hello_text.dart';
import 'package:personal_website/widgets/name_text.dart';
import 'package:personal_website/widgets/os.dart';
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
      routes: {
        AboutPage.routename: (context) => const AboutPage(),
        ConnectWithMe.routename: (context) => const ConnectWithMe(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        backgroundColor: const Color.fromARGB(22, 0, 0, 0),
        appBarTheme: const AppBarTheme(color: Colors.black),
      ),
      home: MyHomePage(title: 'Welcome!'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget appbarButton(String title, routename) {
    return FlatButton(
      color: Colors.black,
      onPressed: () => Navigator.pushNamed(context, routename),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            appbarButton("ABOUT", AboutPage.routename),
            const SizedBox(
              width: 20,
            ),
            appbarButton("CONNECT WITH ME", ConnectWithMe.routename),
            const SizedBox(
              width: 20,
            ),
            FlatButton(
              color: Colors.black,
              onPressed: () => html.window.open(
                  'https://drive.google.com/file/d/1hBP5PB8IZ3G4BVAZAT_RsZIic4iVOZkI/view?usp=sharing',
                  "_blank"),
              child: const Text(
                "RESUME",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: ListView(
        children: [
          SizedBox(
            child: Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Expanded(child: Group2Widget()),
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
            height: 700,
          ),
        ],
      ),
    );
  }
}
