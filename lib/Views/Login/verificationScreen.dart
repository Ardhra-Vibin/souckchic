import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:soukchic/Views/Login/loadingScreen.dart';

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
      body: Padding(
        padding: const EdgeInsets.only(top: 100,right: 12,left: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.close,color: Colors.black,size: 30,),
            SizedBox(height: 30,),
            Text("Enter verification code",style:f17 ,),
            SizedBox(height: 30,),
            Text("We sent you a verification code via SMS.",style:f13g ,),
            SizedBox(height: 70,),
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
                  length: 4,
                  obscureText: false,
                  obscuringCharacter: "*",
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                    selectedColor: Color(0xFF48c0d8),
                    selectedFillColor: Colors.transparent,
                    inactiveColor: Colors.black,disabledColor: Colors.black,
                    activeColor: Colors.grey,
                    inactiveFillColor: Colors.transparent,
                    shape: PinCodeFieldShape.underline,
                    // borderRadius: BorderRadius.circular(5),
                    fieldHeight: 35,borderWidth: 2,
                    fieldWidth: 50,
                    activeFillColor: Colors.transparent,
                  ),
                  animationDuration: Duration(milliseconds: 300),
                  textStyle: TextStyle(fontSize: 25),
                  backgroundColor: Colors.transparent,
                  enableActiveFill: true,
                  keyboardType: TextInputType.number,
                  onChanged: (value) {
                    setState(() {
                      currentText = value;
                    });
                    currentText.length == 4?Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => LoadingPage())):" ";
                  },
                ),
              ),
            ),
            SizedBox(height: 70,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't receive it?",style: f15,),
                SizedBox(width: 5,),
                Text("Click here",style: f15T,)
              ],
            )

          ],
        ),
      ),
    );
  }
}
