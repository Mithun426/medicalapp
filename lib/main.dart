import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:medicalapp/login.dart';


void main() {
  runApp(MaterialApp(home: SplashScreenn(),
  debugShowCheckedModeBanner: false
  )

  );
  
}

class SplashScreenn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => SplashScreennState();
}

class SplashScreennState extends State<SplashScreenn> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => MyApp())));

          SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: Container(
        child: Container(
        height: double.infinity,
        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://marketplace.canva.com/EAE7r-x8B2Q/1/0/1600w/canva-green-blue-medical-care-logo-m78C6oIjoCU.jpg'),
              fit: BoxFit.cover),
        ),
        
    ),
    )
    );
  }
}