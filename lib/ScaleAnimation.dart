import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';


class ScaleAnimation extends StatefulWidget {
  const ScaleAnimation({Key? key}) : super(key: key);

  @override
  _ScaleAnimationState createState() => _ScaleAnimationState();
}

class _ScaleAnimationState extends State<ScaleAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Scale Animation'),
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
                  child: _scale(),
                ),
              ),
            ],
          ),
        )
    );
  }
}

Widget _scale(){
  return SizedBox(
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 50.0,
        fontFamily: 'SF',
      ),
      child: Center(
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            ScaleAnimatedText('Eat',scalingFactor: 0.2),
            ScaleAnimatedText('Code',scalingFactor: 0.2),
            ScaleAnimatedText('Sleep',scalingFactor: 0.2),
            ScaleAnimatedText('Repeat',scalingFactor: 0.2),

          ],
        ),
      ),
    ),
  );
}