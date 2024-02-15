import 'package:flutter/material.dart';
import 'package:ios_calculator/CircularButton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              color: Colors.yellow,
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.15,
              color: Colors.green,
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularButton(
                  color: Colors.grey,
                  textColor: Colors.black,
                  text: "AC",
                  onTap: () {},
                ),
                CircularButton(
                  color: Colors.grey,
                  textColor: Colors.black,
                  text: "+/-",
                  onTap: () {},
                ),
                CircularButton(
                  color: Colors.grey,
                  textColor: Colors.black,
                  text: "%",
                  onTap: () {},
                ),
                CircularButton(
                    text: "÷",
                    color: Color(0xFFFFA001),
                    textColor: Colors.white,
                    onTap: () {})
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: "7",
                  onTap: () {},
                ),
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: "8",
                  onTap: () {},
                ),
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: "9",
                  onTap: () {},
                ),
                CircularButton(
                    text: "×",
                    color: Color(0xFFFFA001),
                    textColor: Colors.white,
                    onTap: () {})
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: "4",
                  onTap: () {},
                ),
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: "5",
                  onTap: () {},
                ),
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: "6",
                  onTap: () {},
                ),
                CircularButton(
                    text: "-",
                    color: Color(0xFFFFA001),
                    textColor: Colors.white,
                    onTap: () {})
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: "1",
                  onTap: () {},
                ),
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: "2",
                  onTap: () {},
                ),
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: "3",
                  onTap: () {},
                ),
                CircularButton(
                    text: "+",
                    color: Color(0xFFFFA001),
                    textColor: Colors.white,
                    onTap: () {})
              ],
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: "0",
                  onTap: () {},
                ),
                CircularButton(
                  color: Color(0xFF403A41),
                  textColor: Colors.white,
                  text: ".",
                  onTap: () {},
                ),
                CircularButton(
                    text: "=",
                    color: Color(0xFFFFA001),
                    textColor: Colors.white,
                    onTap: () {})
              ],
            ),
          ],
        ),
      )), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
