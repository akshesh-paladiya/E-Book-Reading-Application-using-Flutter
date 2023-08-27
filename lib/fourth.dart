// import 'package:book1/fifth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'fifth.dart';
class fourth extends StatelessWidget {
  const fourth({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(' ',
        ),
        backgroundColor: Colors.black,

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 250,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("images/bg.png"),
                        fit: BoxFit.fitWidth,
                      ),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50),
                      )
                  ),

                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 5,
                        ),

                        BookInfo(),

                      ],
                    ),
                  ),

                ),

              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child:  Column(
                children: [
                  ChapterCard(
                    key: null,
                    name:"Getting started with Java",
                    chapterNumber:1,
                    tag: "Java Program",
                    press: (){Route route = MaterialPageRoute(builder: (context) => fifth());
                    Navigator.push(context, route);
                    },
                  ),
                  ChapterCard(
                    key: null,
                    name:"Type Conversion",
                    chapterNumber:2,
                    tag: "Basic Conversion",
                    press: (){Route route = MaterialPageRoute(builder: (context) => fifth());
                    Navigator.push(context, route);
                    },
                  ),
                  ChapterCard(
                    key: null,
                    name:"Primitive Data Types",
                    chapterNumber:3,
                    tag: "Data Types",
                    press: (){Route route = MaterialPageRoute(builder: (context) => fifth());
                    Navigator.push(context, route);
                    },
                  ),
                  ChapterCard(
                    key: null,
                    name:"Classes and Objects",
                    chapterNumber:4,
                    tag: "All Methods",
                    press: (){

                      Route route = MaterialPageRoute(builder: (context) => fifth());
                      Navigator.push(context, route);
                    },

                  ),
                  ChapterCard(
                    key: null,
                    name:"Arrays",
                    chapterNumber:5,
                    tag: "All type of array",
                    press: (){
                      Route route = MaterialPageRoute(builder: (context) => fifth());
                      Navigator.push(context, route);
                    },

                  ),
                  ChapterCard(
                    key: null,
                    name:"Inheritance",
                    chapterNumber:6,
                    tag: "Classes & Inheritance",
                    press: (){

                      Route route = MaterialPageRoute(builder: (context) => fifth());
                      Navigator.push(context, route);
                    },

                  ),
                  ChapterCard(
                    key: null,
                    name:"Basic Control Structures",
                    chapterNumber:7,
                    tag: "Types of Structures",
                    press: (){
                      Route route = MaterialPageRoute(builder: (context) => fifth());
                      Navigator.push(context, route);
                    },

                  ),

                ],
              ),
            ),

          ],
        ),

      ),

    );
  }
}

class BookInfo extends StatelessWidget {
  const BookInfo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [Expanded(
          child: Column(
            children: [Text("Java\n\n", style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,),),
              Text("Programming\n\n",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,),),
              Text("Language\n\n",
                style: TextStyle(fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),),
              SizedBox(height: 5),
              Row(crossAxisAlignment: CrossAxisAlignment.start,
                children: [Expanded(
                    child: Column(children: [],)),
                ],
              )
            ],
          )
      ),
        Image.asset("images/java1.png", height: 200,)
      ],
    );
  }
}


class ChapterCard extends StatelessWidget {
  final String name;
  final String tag;
  final int chapterNumber;
  final VoidCallback press;
  const ChapterCard({
    required Key? key,
    required this.name,
    required this.tag,
    required this.chapterNumber,
    required this.press,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(38.5),
          boxShadow: [
            BoxShadow(offset: Offset(0,10), blurRadius: 33,
              color: Color(0xFFD3D3D3).withOpacity(.84),
            )
          ]
      ),
      child: Row(children: [RichText(text: TextSpan(
          children: [TextSpan(text: "Chapter $chapterNumber: $name \n ", style: TextStyle(fontSize: 14,),),
            TextSpan(
              text: tag,
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,),
            )
          ]
      )
      ),
        IconButton(icon: Icon(Icons.arrow_forward_ios, size: 18,),
          onPressed: press,
        )
      ],
      ),
    );
  }
}

