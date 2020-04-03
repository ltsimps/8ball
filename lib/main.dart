import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home:Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.black54,
          ),
          body: BallPage(

          ),
        ),
      ),
    );
class BallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Ball( );
  }
}

class Ball extends StatefulWidget {
  @override
  _BallState createState() => _BallState();
}

class _BallState extends State<Ball> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Image.asset('images/ball1.png')),
    );
  }
}
