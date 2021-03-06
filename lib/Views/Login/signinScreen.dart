import 'package:flutter/material.dart';
import 'package:soukchic/Views/widgets.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setState(() {
      showPassword = true;
    });
  }
    bool showPassword;

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
      backgroundColor: Colors.white,
      body:SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12,top: 8,bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 30,),
                Text("Sign in to your account",style: f17,),
                SizedBox(height: 30,),
                Container(
                  height: 50,
                 width: width,
                 child: TextField(
                   style: f15,
                   decoration: InputDecoration(
                     contentPadding: EdgeInsets.symmetric(horizontal: 8,vertical: 10),
                     labelText: "Email",
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
                    obscureText: showPassword,
                    style: f15,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: (){
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                          icon:Icon(showPassword ?Icons.visibility_off : Icons.visibility,color: Colors.grey,)),
                      labelText: "Password",
                      labelStyle: f11g,
                      enabledBorder:gBorder,
                      focusedBorder: TBorder,
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("Forgot your password?",style: f14g,),
                  ],
                ),
                SizedBox(height: 25,),
                MaterialButton(
                  onPressed: (){},
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width-30,
                  splashColor: buttonColor,
                  color: primary,
                  colorBrightness: Brightness.light,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)
                  ),
                  child: Text("Sign in",style: f15wB,),
                ),
                SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: .6,
                      width: MediaQuery.of(context).size.width/3,
                      color: Colors.grey[400],
                    ),
                    Text("or",style: f13g,),
                    Container(
                      height: .6,
                      width: MediaQuery.of(context).size.width/3,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Container(
                  height: 55,
                  width: width,
                  decoration: dec1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25,left: 25),
                    child: Row(
                      children: [
                        Image.asset("assets/images/search.png",height: 28,),
                        SizedBox(width: 20,),
                        Text("Sign in with Google",style: f16B,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 55,
                  width: width,
                  decoration: dec1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25,left: 25),
                    child: Row(
                      children: [
                        Image.asset("assets/images/facebook.png",height: 28,),
                        SizedBox(width: 20,),
                        Text("Sign in with Facebook",style: f16B,),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 55,
                  width: width,
                  decoration: dec1,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 25,left: 25),
                    child: Row(
                      children: [
                        Image.asset("assets/images/apple.png",height: 28,),
                        SizedBox(width: 20,),
                        Text("Sign in with Apple",style: f16B,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ) ,
    );
  }
}
