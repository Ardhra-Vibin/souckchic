import 'package:flutter/material.dart';
import 'package:soukchic/Views/widgets.dart';
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:buttonColor ,
        title: Image.asset("assets/images/souckchic.jpg",height: 20,),
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 10,
        child: Column(
          children: [
            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset("assets/images/dress.png",height: 25,),
                      Text("Clothing"),

                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.arrow_forward_ios_rounded)
                    ],
                  )
                ],
              ),

            )
          ],
        ),
      ),

    );
  }
}
