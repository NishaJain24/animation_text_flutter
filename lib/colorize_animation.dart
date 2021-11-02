import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ColorizeAnimation extends StatefulWidget {
  const ColorizeAnimation({Key? key}) : super(key: key);

  @override
  _ColorizeAnimationState createState() => _ColorizeAnimationState();
}

class _ColorizeAnimationState extends State<ColorizeAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Colorize Animation'),
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
                  child: _colorize(),
                ),
              ),
            ],
          ),
        )
    );
  }
}

Widget _colorize(){
  List<MaterialColor> colorizeColors = [
    Colors.red,
    Colors.yellow,
    Colors.purple,
    Colors.blue,
  ];

  const colorizeTextStyle = TextStyle(
    fontSize: 40.0,
    fontFamily: 'SF',
  );

  return SizedBox(
    child: Center(
      child: AnimatedTextKit(
        animatedTexts: [
          ColorizeAnimatedText(
            'Mobile Developer',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Software Testing',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
          ColorizeAnimatedText(
            'Software Engineer',
            textStyle: colorizeTextStyle,
            colors: colorizeColors,
          ),
        ],
        isRepeatingAnimation: true,
        repeatForever: true,
      ),
    ),
  );
}
