import 'package:flutter/material.dart';
import 'package:soukchic/Views/Login/mobileNumberScreen.dart';
import 'package:soukchic/Views/widgets.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  @override
  void initState(){
    super.initState();
    setState(() {
      showPasswordStrong = true;
      showPasswordRepeat = true;
    });
  }
  bool showPasswordStrong;
  bool showPasswordRepeat;

  @override
  Widget build(BuildContext context) {

    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: bg,
        iconTheme: IconThemeData(color: primary),
      ),
      backgroundColor: bg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,bottom: 8,top: 8,right: 12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30),
                Text("Create an account",style: f17,),
                SizedBox(height: 30),
                Container(
                  height: 50,
                  width: width,
                  child: TextField(

                    style: f15,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                      labelText: "Your Email",
                      labelStyle: f11g,
                      enabledBorder: gBorder,
                      focusedBorder: TBorder,
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: width,
                  child: TextField(
                    obscureText: showPasswordStrong,
                    style: f15,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: (){
                            setState(() {
                              showPasswordStrong = !showPasswordStrong;
                            });
                          },
                          icon:Icon(showPasswordStrong ?Icons.visibility_off : Icons.visibility,color: Colors.grey,)),
                      labelText: "Password",
                      labelStyle: f11g,
                      enabledBorder:gBorder,
                      focusedBorder: TBorder,
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 50,
                  width: width,
                  child: TextField(
                  obscureText:showPasswordRepeat ,
                    style: f15,
                    decoration: InputDecoration(
                      labelText: "Repeat password",
                      labelStyle: f11g,
                      enabledBorder: gBorder,
                      focusedBorder: TBorder,
                      suffixIcon: IconButton(
                        onPressed:(){
                          setState(() {
                            showPasswordRepeat = !showPasswordRepeat;
                          });
                        } ,
                          icon: Icon(showPasswordRepeat? Icons.visibility_off:Icons.visibility,color: Colors.grey,))
                    ),
                  ),
                ),
                SizedBox(height: 25,),
                MaterialButton(
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context) => AddNumberPage()));
                    },
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width-30,
                  color: primary,
                  colorBrightness: Brightness.light,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text("Create an account",style: f15wB,),
                    ),
                SizedBox(height: 25,),
                Row(
                  children: [
                    Text("By signing up you agree to our",style: f13g,),
                    Text(" privacy policy and Terms",style:f13gT ,),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
