import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:soukchic/Views/Login/verification.dart';
import 'package:soukchic/Views/widgets.dart';
class AddNumber extends StatefulWidget {
  @override
  _AddNumberState createState() => _AddNumberState();
}

class _AddNumberState extends State<AddNumber> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg,
        iconTheme: IconThemeData(color: primary),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,bottom: 8,top: 8,right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Text("Enter your mobile Number",style: f17,),
                SizedBox(height: 20,),
                Text("we send a text to verify your number.No fees will\napply.",style:f13g ,),
                SizedBox(height: 50,),


                SizedBox(height: 30,),

                MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Verification()));
                      },
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width-30,
                  color: primary,
                  colorBrightness: Brightness.light,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Text("continue",style: f15wB,),
                  ),
                    )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
