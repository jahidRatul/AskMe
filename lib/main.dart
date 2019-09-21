import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: AnsPage(),
        debugShowCheckedModeBanner: false,
      ),
    );

class AnsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text('Ask Me Question'),
        centerTitle: true,
      ),
      body: AnsBall(),
    );
  }
}

class AnsBall extends StatefulWidget {
  @override
  _AnsBallState createState() => _AnsBallState();
}

class _AnsBallState extends State<AnsBall> {
  int ballNo = 1;
  void changeBall() {
    setState(() {
      ballNo = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FlatButton(
        onPressed: () {
          changeBall();
        },
        child: Image.asset('images/ball$ballNo.png'),
      ),
    );
  }
}
