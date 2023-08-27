import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'second.dart';
class third extends StatelessWidget {
  const third({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [Stack(alignment: Alignment.topCenter,
            children: [Container(height: 5, width: double.infinity,
              decoration: BoxDecoration(image: DecorationImage(image: AssetImage("images/book-1.png"), fit: BoxFit.fitWidth,
              ), borderRadius: BorderRadius.only(bottomLeft: Radius.circular(50), bottomRight: Radius.circular(50),) ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [SizedBox(height: 5,),
                    Row(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [Expanded(child: Column(
                        children: [Text("Crushing & ", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                        ),),
                          Text(""
                              "Influence", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,
                          ),
                          ),
                          SizedBox(height: 5),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [Expanded(child: Column(
                              children: [
                                Text("When the Earth was Flat and Everyone wanted to win the Game of the best and people..,,When the Earth was Flat and Everyone wanted to win the Game of the best and people..,,When the Earth was Flat and Everyone wanted to win the Game of the best and people..,,When the Earth was Flat and Everyone wanted to win the Game of the best and people..,,When the Earth was Flat and Everyone wanted to win the Game of the best and people..,,When the Earth was Flat and Everyone wanted to win the Game of the best and people..,,When the Earth was Flat and Everyone wanted to win the Game of the best and people..,,When the Earth was Flat and Everyone wanted to win the Game of the best and people..",
                                  maxLines: 5,
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                // FlatButton(
                                //   child: Text('Read '),
                                //   textColor: Colors.black,
                                //   onPressed: (){},
                                // ),
                              ],)),
                              Column(
                                children: [IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border),)
                                ],
                              )
                            ],
                          )
                        ],
                      )
                      ),
                        Image.asset("images/book-1.png", height: 200,)],
                    )
                  ],
                ),
              ),
            ),
            ],
          )
          ],
        ),
      ),
    );
  }
}




