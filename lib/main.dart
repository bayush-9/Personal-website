import 'package:flutter/material.dart';
import 'package:personal_website/pages/about_page.dart';
import 'package:personal_website/pages/connect_with_me.dart';
import 'package:personal_website/widgets/about.dart';
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
  late FixedExtentScrollController controller;

  Widget appbarButton(String title, GlobalKey itemkey) {
    return FlatButton(
      color: Colors.black,
      onPressed: () => scrollToItem(itemkey),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white),
      ),
    );
  }

  final aboutkey = GlobalKey();
  final connectWithMekey = GlobalKey();

  Future scrollToItem(GlobalKey itemkey) async {
    final context = itemkey.currentContext!;
    await Scrollable.ensureVisible(context, alignment: 0.5);
  }

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
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final nextIndex = controller.selectedItem + 1;
          controller.animateToItem(nextIndex,
              duration: Duration(seconds: 1), curve: Curves.easeInOut);
        },
        child: Icon(Icons.downhill_skiing),
      ),
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            InkWell(
                onTap: () => scrollToItem(aboutkey),
                child: appbarButton("ABOUT", aboutkey)),
            const SizedBox(
              width: 20,
            ),
            appbarButton("CONNECT WITH ME", connectWithMekey),
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
      body: ListWheelScrollView(
        controller: controller,
        physics: FixedExtentScrollPhysics(),
        perspective: 0.001,
        diameterRatio: 3,
        itemExtent: 650,
        children: [
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
            height: 650,
          ),
          // const SizedBox(
          //   height: 100,
          // ),
          Container(key: aboutkey, child: const AboutTile()),
          // const SizedBox(
          //   height: 100,
          // ),
          Container(
            child: const ConnectWithMe(),
            key: connectWithMekey,
          ),
          const SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
