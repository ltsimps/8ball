import 'package:flutter/material.dart';
import 'dart:math';

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

class BallPage extends StatefulWidget {
  @override
  _BallState createState() => _BallState();

}



class _BallState extends State<BallPage> {
  static final randomBallState  = new Random();
  int ballNumber = 1 ;

   _BallState(){
      randomizeBallState();
   }

   void randomizeBallState() {
     ballNumber = randomBallState.nextInt(5) + 1;
   }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: FlatButton(
          onPressed: () {
            print("Eight Ball was pressed");
            print(ballNumber);
            setState(() {
               randomizeBallState();
            });
            },
          child: Image.asset('images/ball$ballNumber.png'), ),


      ),
    );
  }
}
