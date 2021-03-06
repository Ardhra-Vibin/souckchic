import 'package:flutter/material.dart';

import 'Views/Login/onboardingScreen.dart';
import 'Views/Login/signinScreen.dart';
import 'Views/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Soukchic',
      color: primary,
      theme: ThemeData(
        iconTheme: IconThemeData(color: primary),
        primarySwatch: Colors.teal,
        scaffoldBackgroundColor: bg,
        backgroundColor: bg,
        // primaryColor: primary,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoarding(),
    );
  }
}

