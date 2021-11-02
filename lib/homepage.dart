import 'package:animation_text_flutter/ScaleAnimation.dart';
import 'package:animation_text_flutter/colorize_animation.dart';
import 'package:animation_text_flutter/fade_animation.dart';
import 'package:animation_text_flutter/flicker_animation.dart';
import 'package:animation_text_flutter/rotateAnimation.dart';
import 'package:animation_text_flutter/text_liquid_fill.dart';
import 'package:animation_text_flutter/typerAnimation.dart';
import 'package:animation_text_flutter/typewriter_animation.dart';
import 'package:animation_text_flutter/wavy_animation_text.dart';
import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Text Animations'),
        automaticallyImplyLeading: false,
        centerTitle: true,
      ),
      body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Rotate Animation Text',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => RotateAnimation()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),
                ),
                SizedBox(height: 8,),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Typer Animation Text',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => typerAnimation()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Fade Animation Text',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FadeAnimation()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Scale Animation Text',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ScaleAnimation()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('TextLiquidFill Animation',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TextLiquidFillAnimation()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Wavy Animation Text',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => WavyAnimationText()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Flicker Animation Text',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => FlickerAnimation()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),
                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Colorize Animation Text',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => ColorizeAnimation()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),
                SizedBox(height: 8,),

                // ignore: deprecated_member_use
                RaisedButton(
                  child: Text('Typewriter Animation Text',style: TextStyle(color: Colors.black),),
                  color: Colors.tealAccent,
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => TypeWriterAnimation()));
                  },
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20))),
                  padding: EdgeInsets.all(13),

                ),

              ],
            ),
          )
      ), //center
    );
  }
}