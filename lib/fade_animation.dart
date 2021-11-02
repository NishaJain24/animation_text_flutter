import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FadeAnimation extends StatefulWidget {
  const FadeAnimation({Key? key}) : super(key: key);

  @override
  _FadeAnimationState createState() => _FadeAnimationState();
}

class _FadeAnimationState extends State<FadeAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Fade Animation'),
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
                  child: _fade(),
                ),
              ),
            ],
          ),
        )
    );
  }
}

Widget _fade(){
  return SizedBox(
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
      ),
      child: Center(
        child: AnimatedTextKit(
          repeatForever: true,
          animatedTexts: [
            FadeAnimatedText('THE HARDER!!',
                duration: Duration(seconds: 3),fadeOutBegin: 0.9,fadeInEnd: 0.7),
            FadeAnimatedText('YOU WORK!!',
                duration: Duration(seconds: 3),fadeOutBegin: 0.9,fadeInEnd: 0.7),
            FadeAnimatedText('THE LUCKIER!!!',
                duration: Duration(seconds: 3),fadeOutBegin: 0.9,fadeInEnd: 0.7),
            FadeAnimatedText('YOU GET!!!!',
                duration: Duration(seconds: 3),fadeOutBegin: 0.9,fadeInEnd: 0.7),


          ],
        ),
      ),
    ),
  );

}