import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TextLiquidFillAnimation extends StatefulWidget {
  const TextLiquidFillAnimation({Key? key}) : super(key: key);

  @override
  _TextLiquidFillAnimationState createState() => _TextLiquidFillAnimationState();
}

class _TextLiquidFillAnimationState extends State<TextLiquidFillAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Text Liquid Animation'),
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
                  child: _textLiquidFillAnimation(),
                ),
              ),
            ],
          ),
        )
    );
  }
}

Widget _textLiquidFillAnimation(){
  return SizedBox(
    child: Center(
      child: TextLiquidFill(
        text: 'Flutter Devs',
        waveDuration: Duration(seconds: 5),
        waveColor: Colors.blue,
        boxBackgroundColor: Colors.green,
        textStyle: TextStyle(
          fontSize: 50.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}