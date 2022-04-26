import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

import 'chat_screen.dart';
class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      //title: _title,
      home:Scaffold(
        //backgroundColor:  Color(0x2EAEABAB),
        backgroundColor:  Colors.white,
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              // Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ChatScreen()),
              );
            },

            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
          backgroundColor: Colors.black,
          elevation: 0,
          title:  Stack(
            children: <Widget>[

              Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                  child: Text(
                    'YOUR REVIEW MATTERS THE MOST',
                    style: TextStyle(color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15.0),
                  )),
            ],
          ),

          //centerTitle: true,

        ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: RatingStatefulView(),
          ),
        ),

      ),
    );
  }
}
class RatingStatefulView extends StatefulWidget {
  const RatingStatefulView({Key? key}) : super(key: key);

  @override
  State<RatingStatefulView> createState() => _RatingStatefulViewState();
}

class _RatingStatefulViewState extends State<RatingStatefulView > {
  //final TextEditingController _nameController = TextEditingController();

//  Price

  String? dropdownValuePrice = 'RUPEES - (Rs.)';
  List<String> dropdownItemsPrice = <String>[
    'RUPEES - (Rs.)',
    '300',
    '400',
    '500',
    "600",
    "700"
  ];


  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: IntrinsicHeight(
          child:  Padding(
            padding: const EdgeInsets.fromLTRB(020, 0, 20, 20),
            //color: Colors.red,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[

            Padding(
            padding: const EdgeInsets.fromLTRB(0,40,0,10), // Border radius
            child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(5), // Border radius
                    child: ClipOval(child:   Image(
                      image: new AssetImage("assets/img_2.png"),
                      width: 300,
                      height: 300,
                      //color: null,
                      //fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                    )
                    ),
                  ),
                ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(10, 10, 00, 10),
                    child: Text(
                      "Rajiv Talreja", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.star,size: 40,color: Colors.yellow,),
                      onPressed: () {

                      },
                    ),

                    SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.star,size: 40,color: Colors.yellow,),
                      onPressed: () {

                      },
                    ),SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.star,size: 40,color: Colors.yellow,),
                      onPressed: () {

                      },
                    ),SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.star,size: 40,color: Colors.yellow,),
                      onPressed: () {

                      },
                    ),SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.star,size: 40,color: Colors.black12,),
                      onPressed: () {

                      },
                    ),

                  ],

                ),


                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(icon: Icon(Icons.sentiment_dissatisfied_outlined,size: 40,color: Colors.yellow,),
                      onPressed: () {

                      },
                    ),

                    SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.emoji_emotions,size: 40,color: Colors.yellow,),
                      onPressed: () {

                      },
                    ),SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.emoji_emotions_outlined,size: 40,color: Colors.yellow,),
                      onPressed: () {

                      },
                    ),SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.tag_faces_sharp,size: 40,color: Colors.yellow,),
                      onPressed: () {

                      },
                    ),SizedBox(width: 10),
                    IconButton(icon: Icon(Icons.tag_faces_sharp,size: 40,color: Colors.yellow,),
                      onPressed: () {

                      },
                    ),

                  ],

                ),



                SizedBox(height: 20),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(30, 0, 30, 10),
                    child: Card(
                      elevation: 10,
                        color: Colors.white,
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: TextField(
                            maxLines: 5,
                            decoration: InputDecoration.collapsed(hintText: "DESCRIBE YOUR EXPERIENCE",
                                hintStyle: TextStyle(fontSize: 13, color: Colors.black45)),
                          ),
                        )
                    ),
                  ),
                ),





                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[

                    new Flexible(child:  Align(
                      alignment: Alignment.bottomCenter,
                      child:  Container(
                        // decoration: const BoxDecoration(color: Colors.black),
                        margin: EdgeInsets.all(10.0),
                        // padding: EdgeInsets.all(12.0),
                        decoration:BoxDecoration(
                          borderRadius:BorderRadius.circular(8),
                          color:Colors.black,

                        ),
                        child: ElevatedButton(

                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // background
                            onPrimary: Colors.white, // foreground
                            padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                          ),
                          onPressed: () {

                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) =>  ChatScreen()),
                            );
                          },
                          child: const Text('Submit',
                            style: TextStyle(
                              color:Colors.white,
                              fontSize:15,

                              fontWeight: FontWeight.bold,
                            ),
                          ),

                        ),
                      ),

                    ),
                    ),
                  ], ),


                //SizedBox(height: 20.0,),






              ],
            ),
          ),
        ));
  }
}