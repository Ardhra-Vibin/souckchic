import 'dart:async';

import 'package:flutter/material.dart';
import 'package:soukchic/Views/Home/homeScreen.dart';
import 'package:soukchic/Views/widgets.dart';
class LoadingPage extends StatefulWidget {
  @override
  _LoadingPageState createState() => _LoadingPageState();
}

class _LoadingPageState extends State<LoadingPage> {
  @override
  void initState(){
    super.initState();
    Timer(
        Duration(seconds: 3),
            () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()
            )
            )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/images/loading-icegif-1.gif',),
            ),
            SizedBox(height: 15,),
            Text("Loading...",style: f17wB,)

          ],
        ),
      ),
    );
  }
}
