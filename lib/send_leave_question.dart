import 'package:flutter/material.dart';
import 'package:furniture_ui/success.dart';

import 'all_questions.dart';

class LeaveQuestion extends StatelessWidget {
  const LeaveQuestion({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //theme: new ThemeData(scaffoldBackgroundColor:  Color(0xFFEFEFEF)),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        title:  Row(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/arjun.png', height: 35,width: 35,
                fit: BoxFit.cover),
            SizedBox(width: 10,),
            Column(
              //padding: const EdgeInsets.all(8.0),
              children: [
                Text('Rajiv Talreja', style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/online.png', height: 10,width: 10,fit: BoxFit.cover),SizedBox(width: 5,),
                    Text('Online', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
            // Icon (Icon.),
          ],

        ),



        actions: [
          PopupMenuButton<int>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
              new PopupMenuItem<int>(
                  value: 1, child: new Text('Settings')),
              new PopupMenuItem<int>(
                  value: 2, child: new Text('View Contact')),
              // new PopupMenuItem<int>(
              //     value: 3, child: new Text('Item Three')),
              // new PopupMenuItem<int>(
              //     value: 4, child: new Text('I am Item Four'))
            ],
            // onSelected: (int value) {
            //   setState(() { _value = value; });
            // }
          )

        ],
        iconTheme: IconThemeData(color: Colors.black),
        //centerTitle: true,
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        //  color: Colors.black,
      ),
      body: SingleChildScrollView(

      child: Column(
        children: [
          Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  maxLines: 30,
                  decoration: InputDecoration.collapsed(hintText: "Type a message"),
                ),
              )
          ),

          SizedBox(height:10,width:10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[




              SizedBox(height:10,width:10,),

            ],
          ),


        ],
      ),
      ),
      bottomSheet: Container(
        color: Colors.grey,
        height: 150.0,
        child: Container(
          padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
          height: 60,
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [


          Row(
            children: <Widget>[
              GestureDetector(
                onTap: (){
                },
                child: Container(
                  height: 30,
                  width: 30,
                  //color: Colors.white,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(Icons.emoji_emotions_outlined, color: Colors.grey, size: 20, ),
                ),
              ),
              SizedBox(width: 15,),
              Expanded(
                child:TextField(
                  maxLines: 2,
                  decoration: InputDecoration.collapsed(hintText: ""),
                ),
              ),
              SizedBox(width: 15,),
              FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.attach_file_sharp,color: Colors.grey,size: 25,),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.camera_alt_sharp,color: Colors.black,size: 25,),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              FloatingActionButton(
                onPressed: (){},
                child: Icon(Icons.mic,color: Colors.black,size: 25,),
                backgroundColor: Colors.white,
                elevation: 0,
              ),
              // Icon(Icons.,size: 20,), SizedBox(width: 10,),
              // Icon(Icons.camera_alt_sharp,size: 20,), SizedBox(width: 10,),
              // Icon(Icons.send,size: 25,color: Colors.teal,),




            ],

          ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black, // background
                      onPrimary: Colors.white, // foreground
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                    ),
                    icon: Icon(Icons.star,color: Colors.white,),  //icon data for elevated button
                    label: Text("PREORITISE QUESTION",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      ),),
                    onPressed: () {
                      showModalBottomSheet<void>(
                        context: context,
                        builder: (BuildContext context) {
                          return Container(
                            height: 350,
                            color: Colors.white70,

                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.fromLTRB(30.0, 10, 20, 20),
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                      child: Text(
                                        "Be The First To Be Answered Fast",
                                        style: TextStyle(
                                          fontSize: 12,
                                          color: Colors.lightBlue,
                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Text('2nd Question',
                                  style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                SizedBox(height:10,),
                                Container(
                                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 00),
                                  child:    TextField(
                                    maxLength: 10,
                                    maxLines: 1,
                                    minLines: 1,

                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      //labelText: "Phone number",
                                      hintText: "₹ " + "Amount",
                                      contentPadding: EdgeInsets.all(15),
                                      counter: Offstage(),//  <- you can it to 0.0 for no space
                                      isDense: true,
                                      enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)),
                                      focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                        //border: InputBorder.none
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    SizedBox(
                                      width: 200.0,
                                      height: 45.0,
                                      child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                          primary: Colors.black, // background
                                          onPrimary: Colors.white, // foreground
                                          padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                          side: BorderSide(width: 1, color: Colors.black,),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: (){},
                                        child: const Text('Check Priority',
                                          style: TextStyle(
                                            color:Colors.white,
                                            fontSize:15,
                                          ),
                                        ),

                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height:10,),
                                SizedBox(height:10,),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,

                                  children: <Widget>[

                                    ElevatedButton.icon(
                                      style: ElevatedButton.styleFrom(
                                        primary: Colors.black, // background
                                        onPrimary: Colors.white, // foreground
                                        padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                                      ),
                                      onPressed: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => SuccessFull()),
                                        );
                                      },
                                      icon: Icon(Icons.send,color: Colors.white,),  //icon data for elevated button
                                      label: Text("SEND AS PREORITISED QUESTION",
                                        style: TextStyle(
                                          color:Colors.white,
                                          fontSize:12,
                                        ),), //label text
                                    ),

                                  ],
                                ),

                              ],
                            ),

                          );
                        },
                      );
                    },
                  ),


                  SizedBox(height:10,width:10,),
                  ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal, // background
                      onPrimary: Colors.white, // foreground
                      padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SuccessFull()),
                      );
                    },
                    icon: Icon(Icons.send,color: Colors.white,size: 20),
                    label: Text("Send",
                      style: TextStyle(
                        color:Colors.white,
                        fontSize:12,
                      ),),

                  ),
                ],
              ),
          ],

        ),



      ),
      ),



    );
  }
}
