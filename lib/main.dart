import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Ask Me Anything'),
            backgroundColor: Colors.deepPurple,
          ),
        backgroundColor: Colors.blue,
        body: const Ball(),
      ),

    )
  );
}

class Ball extends StatefulWidget {
  const Ball({Key? key}) : super(key: key);


  @override
  State<Ball> createState() => _BallState();
}

class _BallState extends State<Ball> {

  int ballNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            ballNumber = Random().nextInt(5)+1;
          });
        },
        child: Image(
          height: 200.0,
          image: AssetImage('./images/ball$ballNumber.png'),
        ),
      ),
    );
  }
}
