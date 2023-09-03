import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ironyapp/view/meme_ui.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    gotoMemeScreen();
    super.initState();
  }

  gotoMemeScreen() {
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => Meme()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 53, 31, 33),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'images/pig.png',
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 15,
              ),
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(Colors.amber),
              )
            ],
          ),
        ),
      ),
    );
  }
}
