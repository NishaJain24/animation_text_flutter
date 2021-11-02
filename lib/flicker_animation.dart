import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FlickerAnimation extends StatefulWidget {
  const FlickerAnimation({Key? key}) : super(key: key);

  @override
  _FlickerAnimationState createState() => _FlickerAnimationState();
}

class _FlickerAnimationState extends State<FlickerAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Flicker Animation'),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(color: Colors.red),
                height: 300.0,
                width: 350.0,
                child: Center(
                  child: _flicker(),
                ),
              ),
            ],
          ),
        )
    );
  }
}

Widget _flicker(){
  return SizedBox(
    width: 250.0,
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 30,
      ),
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          FlickerAnimatedText('FlutterDevs specializes in creating,',
              speed: Duration(milliseconds: 1000),entryEnd: 0.7),
          FlickerAnimatedText('cost-effective and',
              speed: Duration(milliseconds: 1000),entryEnd: 0.7),
          FlickerAnimatedText("efficient applications!",
              speed: Duration(milliseconds: 1000),entryEnd: 0.7),
        ],
      ),
    ),
  );

}