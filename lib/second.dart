import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'main.dart';
import 'third.dart';
import 'fourth.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('E - Book Reading App',
          ),
          backgroundColor: Colors.black,

        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            padding: EdgeInsets.fromLTRB(20.0, 30.0, 0.0, 0.0),
            child: Column(

              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(

                  text: TextSpan(
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    children: [TextSpan(text: "What are you\nReading"),
                      TextSpan(text: ' Today?',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height:15),

                SizedBox(height: 30,),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: <Widget>[
                      ReadingListCard(
                        key: null,
                        image: 'images/c.jpg',
                        title: "C PROGRAMMING LANGUAGE",
                        auth: " ",
                      ),

                      ReadingListCard(
                        key: null,
                        image: 'images/c++.jpg',
                        title: "C++ PROGRAMMING LANGUAGE",
                        auth: " ",
                      ),
                      ReadingListCard(
                        key: null,
                        image: 'images/java1.png',
                        title: "JAVA PROGRAMMING LANGUAGE",
                        auth: " ",
                      ),

                      ReadingListCard(
                        key: null,
                        image: 'images/flutter.jpg',
                        title: "APP DEVELOPMENT WITH FLUTTER",
                        auth: " ",
                      ),

                      ReadingListCard(
                        key: null,
                        image: 'images/javascript.jpg',
                        title: "JAVASCRIPT Framework",
                        auth: " ",
                      ),

                      ReadingListCard(
                        key: null,
                        image: 'images/django.png',
                        title: "DJANGO",
                        auth: " ",
                      ),
                      SizedBox(height: 80,)

                    ],
                  ),
                ),
                Container(
                  child:Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      children: [
                        RichText(
                            text: TextSpan(
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                                children: [
                                  TextSpan(
                                      text: "Best of the"),
                                  TextSpan(
                                    text: " day",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  )
                                ]
                            )
                        ),

                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: double.infinity,
                          height: 235,
                          child: Stack(children: [
                            Positioned(child: Container(
                              padding:EdgeInsets.only(left: 24, top: 24, right: 150) , height: 250,
                              width: MediaQuery.of(context).size.width, decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(29),),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [Text(" ", style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,),),
                                  SizedBox(height: 5),
                                  Text("NODE.JS\n",
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  Text("Author: John Bach & Alexander Aronowitz", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.red,)),
                                  SizedBox(height: 10),
                                  Row(children:[
                                    Icon(Icons.star, color: Colors.red, size: 15,),
                                    SizedBox(height: 5),
                                    Text("3.8", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold,),),
                                    SizedBox(width: 10),
                                    Expanded(child: Text("When the Earth was Flat and Everyone wanted to win the Game of the best and people..",
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 10,),))
                                  ],
                                  ),

                                  GestureDetector(
                                    onTap: (){
                                      Route route = MaterialPageRoute(builder: (context) => fourth());
                                      Navigator.push(context, route);
                                    },
                                    child:Container(
                                      width: 101,

                                      padding: EdgeInsets.symmetric(vertical: 10),
                                      margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                                      decoration: BoxDecoration(
                                          color: Colors.black,
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(29),
                                            bottomLeft: Radius.circular(29),
                                            topRight: Radius.circular(29),
                                            bottomRight: Radius.circular(29),
                                          )
                                      ),
                                      alignment: Alignment.center,
                                      child: Text("Read",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                            ),

                            Positioned(
                                right: 0,
                                top: 0,
                                child: Image.asset("images/nodejs.jpg",
                                  width: 170,
                                )
                            ),


                          ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 20),
                          width: double.infinity,
                          height: 235,
                          child: Stack(
                            children: [
                              Positioned(
                                  child: Container(
                                    padding:EdgeInsets.only(left: 24, top: 24, right: 150) ,
                                    height: 250,
                                    // height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    // width: double.infinity,
                                    decoration: BoxDecoration(
                                      // color: Color(0xFFEAEAED).withOpacity(.45),
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(29),
                                    ),
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(" ",
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                          ),
                                        ),
                                        SizedBox(height: 5),
                                        Text("MongoDB \n",
                                          style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Text("Author: Amit Phaltankar & Alexander Aronowitz",
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.red,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        Row(
                                          children:[
                                            Icon(
                                              Icons.star,
                                              color: Colors.red,
                                              size: 15,
                                            ),

                                            SizedBox(height: 5),
                                            Text("3.8",
                                              style: TextStyle(
                                                fontSize: 10,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Expanded(
                                              child: Text("When the Earth was Flat and Everyone wanted to win the Game of the best and people..",
                                                maxLines: 3,
                                                overflow: TextOverflow.ellipsis,
                                                style: TextStyle(
                                                  fontSize: 10,
                                                ),
                                              ),
                                            )
                                          ],
                                        ),

                                        GestureDetector(
                                          onTap: (){
                                            Route route = MaterialPageRoute(builder: (context) => fourth());
                                            Navigator.push(context, route);
                                          },
                                          child:  Container(
                                            width: 101,
                                            padding: EdgeInsets.symmetric(vertical: 10),
                                            margin: EdgeInsets.fromLTRB(0, 25, 0, 0),
                                            decoration: BoxDecoration(
                                                color: Colors.black,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(29),
                                                  bottomLeft: Radius.circular(29),
                                                  topRight: Radius.circular(29),
                                                  bottomRight: Radius.circular(29),
                                                )
                                            ),
                                            alignment: Alignment.center,
                                            child: Text("Read",
                                              style: TextStyle(
                                                color: Colors.white,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                              ),

                              Positioned(
                                  right: 0,
                                  top: 0,
                                  child: Image.asset("images/mongodb.jpg",

                                    width: 170,
                                  )
                              ),
                            ],
                          ),
                        ),


                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 0.0, 20.0, 0.0),
                          margin: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),

                          child: Column(

                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height:15),
                              RichText(

                                text: TextSpan(
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                  children: [TextSpan(text: "Continue"),
                                    TextSpan(text: ' Reading?',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),




                        SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(38.5),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(0,10),
                                  blurRadius: 33,
                                  color: Color(0xFFD3D3D3).withOpacity(.84),
                                )
                              ]

                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 30, right: 20),
                                      child: Row(
                                        children: [
                                          Expanded(

                                            child: Column(


                                              children: [

                                                Text("Ruby Programming For Beginners",
                                                  style: TextStyle(
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white,
                                                  ),
                                                ),
                                                Text(
                                                  "Gary Venchuk",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                                Align(
                                                  alignment: Alignment.bottomRight,
                                                  child: Text(
                                                    "Chapter 7 of 10",
                                                    style: TextStyle(
                                                      fontSize: 10,
                                                      fontWeight: FontWeight.bold,
                                                      color: Colors.black38,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ),
                                          Image.asset("images/ruby.jpg",
                                            width: 55,

                                          )
                                        ],
                                      )
                                  ),
                                ),
                                Container(
                                  height: 7,
                                  width: 10,
                                  decoration: BoxDecoration(
                                    color: Colors.blueGrey,
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      //  SingleChildScrollView(
      //    scrollDirection: Axis.vertical,
      // child: Container(
      //    height: MediaQuery.of(context).size.height,
      //    padding: EdgeInsets.symmetric(horizontal: 24),
      //    child: Column(
      //
      //      children: [
      //
      //        RichText(
      //            text: TextSpan(
      //                style: TextStyle(
      //                  fontSize: 25,
      //
      //                  // fontWeight: FontWeight.bold,
      //
      //                ),
      //                children: [
      //
      //                  TextSpan(text: "Continue"),
      //                  TextSpan(
      //                    text: "  Reading....",
      //                    style: TextStyle(
      //                      fontSize: 25,
      //                      fontWeight: FontWeight.bold,
      //
      //
      //                    ),
      //                  )
      //                ]
      //            )
      //        ),
      //      ],
      //    ),
      //
      //  ),
      //  ),

    );
  }
}

class ReadingListCard extends StatelessWidget {
  final String image;
  final String title;
  final String auth;

  const ReadingListCard(

      {
        required Key? key,
        required this.image,
        required this.title,
        required this.auth,
      }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 24, bottom: 40),
      height: 230,
      width: 202,
      child: Stack(
        children: [
          Positioned(
              bottom:0,
              left: 0,
              right: 0,
              // top: 0,

              child: Container(
                height: 230,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        // blurRadius: 10,

                      ),
                    ]
                ),
              )

          ),
          Image.asset(image,
            width: 150,
            height: 140,
          ),
          Positioned(
              top: 35,
              right: 10,
              child: Column(
                children: [
                  IconButton(

                      onPressed: (){},
                      icon: Icon(
                        Icons.favorite_border,
                      )

                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(3,7),
                            blurRadius: 20,
                            color: Color(0xFD3D3D3).withOpacity(.5),
                          )
                        ]
                    ),
                    child: Column(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 15,
                        ),
                        SizedBox(height: 5),
                        Text("4.9",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              )
          ),

          Positioned(
            top: 160,
            child: Container(
              height: 85,
              width: 202,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 24),
                      child:RichText(
                        text: TextSpan(
                            style: TextStyle(color: Colors.redAccent),
                            children: [
                              TextSpan(
                                  text: title,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,

                                  )
                              ),
                              TextSpan(
                                text: auth,
                                style: TextStyle(
                                    color: Colors.red
                                ),
                              )
                            ]
                        ),
                      )
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child:  Container(
                          width: 101,
                          margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          alignment: Alignment.center,
                          child: Text("Details"),
                        ),
                      ),

                      GestureDetector(
                        onTap: (){},
                        child:  Container(
                          width: 101,
                          margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(29),
                                bottomRight: Radius.circular(29),

                              )
                          ),
                          alignment: Alignment.center,
                          child: Text("Read",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ),

                    ],
                  )
                ],
              ),

            ),
          )
        ],

      ),

    );
  }
}

class Reading extends StatelessWidget {
  const Reading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
          children: [

          ],
        )
    );
  }
}



