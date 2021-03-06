import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:soukchic/Views/Login/signUpScreen.dart';
import 'package:soukchic/Views/Login/signinScreen.dart';
import 'package:soukchic/Views/widgets.dart';

class CreateAccount extends StatefulWidget {
  @override
  _CreateAccountState createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {

  CarouselController _carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 40, right: 8, left: 8),
            child: Column(
              children: [
                Image.asset(
                  "assets/images/souckchic.jpg",
                  height: 100,
                  width: 100,
                ),
                SizedBox(
                  height: 10,
                ),
                CarouselSlider(
                  carouselController: _carouselController,
                  items: [
                    //1st Image of Slider
                    Container(width: 300,
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/index2-1583967114.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //2nd Image of Slider
                    Container(
                      width: 300,
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://www.indoindians.com/wp-content/uploads/2020/01/2020-fashion-trends-feature-1280x720.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //3rd Image of Slider
                    Container(
                      width: 300,
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://assets.vogue.com/photos/5e98b79dc4fdf500088adc96/master/pass/00_promo.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //4th Image of Slider
                    Container(width: 300,
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://assets.vogue.com/photos/5e98b79dc4fdf500088adc96/master/pass/00_promo.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),

                    //5th Image of Slider
                    Container(width: 300,
                      margin: EdgeInsets.all(6.0),
                      decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                          image: NetworkImage(
                              "https://assets.vogue.com/photos/5e98b79dc4fdf500088adc96/master/pass/00_promo.jpg"),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],

                  //Slider Container properties
                  options: CarouselOptions(
                    viewportFraction: 0.6,
                    aspectRatio: 2.0,
                    height: 300.0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    initialPage: 3,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: true,
                    autoPlayAnimationDuration: Duration(milliseconds: 800),

                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  splashColor: primary,
                  height: 45,
                  minWidth: MediaQuery.of(context).size.width-30,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SignUp()));
                  },
                  color: buttonColor,
                  colorBrightness: Brightness.light,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text("Create an account",
                      style:f15wB
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: .6,
                      color: Colors.grey[400],
                    ),
                    Text(
                      "or",
                      style: f13g,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 3,
                      height: .6,
                      color: Colors.grey[400],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/apple.png",
                      height: 30,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      "assets/images/facebook.png",
                      height: 30,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Image.asset(
                      "assets/images/search.png",
                      height: 30,
                    ),
                  ],
                ),
                SizedBox(height: 25,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: f15
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
                        },
                        child: Text(
                          "Sign In",
                          style: f15T),
                        )
                  ],
                ),
                SizedBox(height: 25,),
              ],
            ),
          ),
        ),
      ),

    );
  }
}
