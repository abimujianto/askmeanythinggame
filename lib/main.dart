import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
      home: BallPage(),
    ));

class BallPage extends StatefulWidget {
  @override
  _BallPageState createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;
  void ballN() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ask Me Anything'),
      ),
      body: Container(
        color: Colors.blue,
        child: Center(
          child: FlatButton(
              onPressed: () {
                ballN();
                print('berhasil dipress');
              },
              child: Image.asset('images/ball$ballNumber.png')),
        ),
      ),
    );
  }
}
