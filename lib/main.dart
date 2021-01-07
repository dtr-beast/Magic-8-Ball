import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Magic 8 Ball',
              style: TextStyle(
                color: Color(0xff123456),
                fontFamily: 'Yeon Sung',
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0,
              ),
            ),
          ),
        ),
        backgroundColor: Colors.blue[700],
        body: MagicPage(),
      ),
    );
  }
}

class MagicPage extends StatefulWidget {
  @override
  _MagicPageState createState() => _MagicPageState();
}

class _MagicPageState extends State<MagicPage> {
  int ballNum = 1;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: FlatButton(
            onPressed: () {
              setState(() {
                ballNum = Random().nextInt(5) + 1;
              });
            },
            child: Image.asset('images/ball$ballNum.png'),
          ),
        ),
      ],
    );
  }
}
