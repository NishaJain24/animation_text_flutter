import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TypeWriterAnimation extends StatefulWidget {
  const TypeWriterAnimation({Key? key}) : super(key: key);

  @override
  _TypeWriterAnimationState createState() => _TypeWriterAnimationState();
}

class _TypeWriterAnimationState extends State<TypeWriterAnimation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('TypeWriter Animation'),
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
                  child: _typeWriter(),
                ),
              ),
            ],
          ),
        )
    );
  }
}
Widget _typeWriter(){
  return SizedBox(
    child: DefaultTextStyle(
      style: const TextStyle(
        fontSize: 30.0,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: AnimatedTextKit(
            repeatForever: true,
            animatedTexts: [
              TypewriterAnimatedText('FlutterDevs specializes in creating cost-effective',
                  curve: Curves.easeIn,speed: Duration(milliseconds: 80)),
              TypewriterAnimatedText('and efficient applications with our perfectly crafted,',
                  curve: Curves.easeIn,speed: Duration(milliseconds: 80)),
              TypewriterAnimatedText('creative and leading-edge flutter app development solutions',
                  curve: Curves.easeIn,speed: Duration(milliseconds: 80)),
              TypewriterAnimatedText('for customers all around the globe.',
                  curve: Curves.easeIn,speed: Duration(milliseconds: 80)),
            ],
          ),
        ),
      ),
    ),
  );

}

