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
        actions: [
          Row(
            children: [
              IconButton(icon: Icon(Icons.search),
              onPressed: (){},
              ),
              IconButton(icon:Icon(Icons.card_travel),
                  onPressed:(){})
            ],
          )
        ],
      ),
      drawer: Drawer(
        elevation: 10,
        child: Column(
          children: [
            SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                  Container(
                      decoration:decM,
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

                    ),
                    Container(
                      decoration:decM,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/dress.png",height: 25,),
                              Text("Footwear"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          )
                        ],
                      ),

                    ),
                    Container(
                      decoration:decM,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/dress.png",height: 25,),
                              Text("Bags"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          )
                        ],
                      ),

                    ),
                    Container(
                      decoration:decM,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/dress.png",height: 25,),
                              Text("Skin Care"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          )
                        ],
                      ),

                    ),
                    Container(
                      decoration:decM,
                      height: 40,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/dress.png",height: 25,),
                              Text("Makeup"),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.arrow_forward_ios_rounded)
                            ],
                          )
                        ],
                      ),

                    ),

                  ],
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 12,right: 12),
            child: Column(
              children: [
                Container(
                  height:MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/1,
                  child: Card(elevation: 2,
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    child: Image.asset("assets/images/home1.jpg",fit: BoxFit.fill),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("SHOP BY CATEGORIES",style: f16B,),
                  Text("View All",style:f14g ,)
                  ],
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width/2,
                      child: Card(
                        elevation: 2,
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                        child: Image.asset("assets/images/home1.jpg",fit: BoxFit.fill,),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height/6,
                      width: MediaQuery.of(context).size.width/2,
                      child: Card(
                        child: Image.asset("assets/images/home1.jpg",fit: BoxFit.fill,),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  height: MediaQuery.of(context).size.height/4,
                  width: MediaQuery.of(context).size.width/1,
                  child: Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    child: Image.asset("assets/images/home1.jpg",fit: BoxFit.fill,),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                  ),
                ),
                SizedBox(height: 15,),
                Container(
                  height: 300,
                  width: MediaQuery.of(context).size.width/1,
                  color: Colors.grey[200],
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("LATEST PRODUCTS",style:f16B),
                            Text("view All",style:f14g,)
                          ],
                        ),
                        Row(
                          children: [
                            Row(
                              children: [

                              ],
                            )
                          ],
                        )

                      ],
                    ),
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
