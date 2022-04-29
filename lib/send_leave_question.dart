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
        leading: InkWell(
          onTap: () {

              Navigator.pop(context);

          },

          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),
        flexibleSpace: SafeArea(
          child: Container(
            padding: EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.arrow_back_ios,color: Colors.white,),
                ),
                SizedBox(width: 2,),
                CircleAvatar(
                  child: Image(
                    image: new AssetImage("assets/img_2.png"),
                    width: 40,
                    height: 40,
                    color: null,
                    //fit: BoxFit.scaleDown,
                    alignment: Alignment.center,
                  ),
                  maxRadius: 20,
                ),
                SizedBox(width: 12,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Rajiv Talreja",style: TextStyle( fontSize: 16 ,fontWeight: FontWeight.w600),),
                      SizedBox(height: 6,),
                      Padding(
                        padding: EdgeInsets.only(left: 00, right: 0, top: 0, bottom:0),
                        child: Row(
                          children: [
                            Image(
                              image: new AssetImage("assets/online.png"),
                              width: 10,
                              height: 10,
                              color: null,
                              //fit: BoxFit.scaleDown,
                              alignment: Alignment.center,
                            ),
                            SizedBox(width:5),
                            Text('Online', style: TextStyle(
                                fontSize: 12),),
                          ],
                        ),

                      ),

                    ],
                  ),
                ),
                // Icon(Icons.settings,color: Colors.black54,),

              ],
            ),
          ),
        ),



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
                  decoration: InputDecoration.collapsed(hintText: "Type a message", hintStyle: TextStyle(color: Color(0xC4C4C4C4), fontSize: 20)),
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
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
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
                            color: Color(0xF5F5F5F5),

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
                                    fontSize: 29,
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
                                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                                        padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      onPressed: (){
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => SuccessFull()),
                                        );
                                      },
                                      icon:ImageIcon(
                                        AssetImage("assets/img_13.png"),
                                        size: 15,
                                        //  color: Color(0xFF3A5A98),
                                      ), //icon data for elevated button
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
                      shape: new RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SuccessFull()),
                      );
                    },
                    icon:ImageIcon(
                      AssetImage("assets/img_13.png"),
                    size: 15,
                    //  color: Color(0xFF3A5A98),
                    ),

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
