import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class WavyAnimationText extends StatefulWidget {
  const WavyAnimationText({Key? key}) : super(key: key);

  @override
  _WavyAnimationTextState createState() => _WavyAnimationTextState();
}

class _WavyAnimationTextState extends State<WavyAnimationText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Wavy Animation'),
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
                  child: _wavy(),
                ),
              ),
            ],
          ),
        )
    );
  }
}

Widget _wavy(){
  return DefaultTextStyle(
    style: const TextStyle(
      fontSize: 25.0,
    ),
    child: AnimatedTextKit(
      animatedTexts: [
        WavyAnimatedText("Flutter is Google's UI toolkit,",
            speed: Duration(milliseconds: 200)),
        WavyAnimatedText('for building beautiful Apps',
            speed: Duration(milliseconds: 200)),
      ],
      isRepeatingAnimation: true,
      repeatForever: true,
    ),
  );
}