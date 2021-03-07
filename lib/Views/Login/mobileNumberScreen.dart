import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:soukchic/Views/Login/verificationScreen.dart';
import 'package:soukchic/Views/widgets.dart';
class AddNumberPage extends StatefulWidget {
  @override
  _AddNumberPageState createState() => _AddNumberPageState();
}

class _AddNumberPageState extends State<AddNumberPage> {

List countryCodes = [{"code":"+91","image":"assets/images/india.png"},{"code":"+971","image":"assets/images/uae.png"}];
var codee;


  @override
  void initState(){
    super.initState();
    setState(() {
      codee = countryCodes[1]["code"];
    });
  }
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
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400]),
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Row(
                    children: [
                      Container(
                        width: 65,
                        alignment: Alignment.center,
                        child: Center(
                          child: Container(
                            height: 52,
                            child: DropdownButton(
                              isExpanded: true,
                              value: codee,
                              iconEnabledColor: Colors.black,
                              iconSize: 25,
                              elevation: 16,
                              style: TextStyle(color: Colors.black),
                              underline: Container(height: 0,),
                              onChanged: (newValue){
                                setState(() {
                                  codee = newValue;
                                });
                                print("country code "+codee);
                                },
                              items:countryCodes.map((item){
                                return DropdownMenuItem(
                                  value: item["code"],
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8,),
                                          child: Image.asset(item["image"],height:20,),
                                        )
                                      ],
                                    ));
                              }).toList()
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: 1,
                        color: Colors.grey[400],
                        height: 50,),
                         Padding(
                           padding: const EdgeInsets.only(left: 8,right: 12),
                           child: Text(codee,style: f16B,),
                         ),
                      Container(
                        width:MediaQuery.of(context).size.width-152,
                        child: TextField(
                          style: f15,
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Enter your number",
                            hintStyle:f14g
                          ),
                        ),
                      )
                    ],
                  ),
                ),
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
