import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class typerAnimation extends StatefulWidget {
  const typerAnimation({Key? key}) : super(key: key);

  @override
  _typerAnimationState createState() => _typerAnimationState();
}

class _typerAnimationState extends State<typerAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Typer Animation'),
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
                  child: _typer(),
                ),
              ),
            ],
          ),
        )
    );
  }
}

Widget _typer(){
  return SizedBox(
    width: 250.0,
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 30.0,
        fontFamily: 'popin',
      ),
      child: AnimatedTextKit(
          isRepeatingAnimation: true,
          animatedTexts: [
            TyperAnimatedText('When you talk, you are only repeating'
                ,speed: Duration(milliseconds: 100)),
            TyperAnimatedText('something you know.But if you listen,'
                ,speed: Duration(milliseconds: 100)),
            TyperAnimatedText(' you may learn something new.'
                ,speed: Duration(milliseconds: 100)),
            TyperAnimatedText('– Dalai Lama'
                ,speed: Duration(milliseconds: 100)),
          ]
      ),
    ),
  );
}