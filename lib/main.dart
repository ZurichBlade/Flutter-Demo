import 'dart:async';
import 'package:concept/screen_two.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(const MaterialApp(
    home: Screen1(),
  ));
}

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const Screen2())));

    var assetsImage = const AssetImage(
        'res/images/logo.png'); //<- Creates an object that fetches an image.
    var image = Image(fit: BoxFit.cover,
        image: assetsImage,
        height: 200); //<- Creates a widget that displays an image.
    var text = const Text('Expand The Horizon',style: TextStyle(
      fontSize: 20.0,fontWeight: FontWeight.bold,color: Colors.lightBlue,
      letterSpacing: 2.0,
    ),);

    return MaterialApp(
      home: Scaffold(
        body: Align(alignment: Alignment.center ,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              image,
              const SizedBox(height: 250.0,),
              text,
            ],
          ),
        )
        ),

    );
  }
}
