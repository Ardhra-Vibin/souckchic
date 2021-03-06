import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../widgets.dart';

class Verification extends StatefulWidget {
  @override
  _VerificationState createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {
  var currentText;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: Container(
              width: 260,
              child: PinCodeTextField(autoFocus: true,
                // controller: pinController,
                appContext: context,
                pastedTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
                length: 5,
                obscureText: false,
                obscuringCharacter: "*",
                animationType: AnimationType.fade,
                pinTheme: PinTheme(
                  selectedColor: primary,
                  selectedFillColor: Colors.transparent,
                  inactiveColor: Colors.black,disabledColor: Colors.black,
                  activeColor: Colors.black,
                  inactiveFillColor: Colors.transparent,
                  shape: PinCodeFieldShape.circle,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 35,borderWidth: 1,
                  fieldWidth: 35,
                  activeFillColor: Colors.transparent,
                ),
                animationDuration: Duration(milliseconds: 300),
                textStyle: f15,
                backgroundColor: Colors.transparent,
                enableActiveFill: true,
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    currentText = value;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
