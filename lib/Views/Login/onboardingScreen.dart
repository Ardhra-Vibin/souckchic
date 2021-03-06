import 'dart:async';
import 'package:flutter/material.dart';
import 'package:soukchic/Views/Login/createAccount.dart';
import 'package:soukchic/Views/widgets.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {

  @override
  void initState(){
    super.initState();
    Timer(
        Duration(seconds:3 ),
            () => Navigator.pushReplacement(context,MaterialPageRoute(
            builder: (context) => CreateAccount()
        )
        )
    );
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Center(
        child: Image.asset("assets/images/souckchic.jpg",
        width:100,height: 100,
        ),
      ),
    );
  }
}
