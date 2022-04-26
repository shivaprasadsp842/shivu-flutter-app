import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_ui/chat/rating.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void choiceAction(int choice) {

        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Rating()),
        );

  }
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
            // IconButton(
            //   icon: Icon(Icons.arrow_back, color:Colors.black, size:20),
            //   onPressed: () {
            //     Navigator.pop(context);
            //   },
            // ),
            SizedBox(width: 10,),
            Image.asset('assets/arjun.png', height: 35,width: 35,
                fit: BoxFit.cover),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              //padding: const EdgeInsets.all(8.0),
              children: [
                Text('Rajiv Talreja', style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),),
                Row(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('assets/online.png', height: 10,width: 10,fit: BoxFit.cover),
                    SizedBox(width:5,),
                    Text('Online', style: TextStyle(fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),),
                  ],
                ),
              ],
            ),
            // Icon (Icon.),
          ],

        ),



        actions: [
          Card(
            color: Color(0xF5F5F5),

            child: Padding(
              padding: const EdgeInsets.fromLTRB(05.0, 10, 5, 10),
              child:  Text('00 : 00 : 00', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          PopupMenuButton<int>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
              new PopupMenuItem<int>(
                  value: 1, child: new Text('Video Call')),
              new PopupMenuItem<int>(
                  value: 2, child: new Text('End Chat')),
              new PopupMenuItem<int>(
                  value: 3, child: new Text('Rate Now')
              ),
              new PopupMenuItem<int>(
                  value: 4, child: new Text('Report')
              ),
              new PopupMenuItem<int>(
                  value: 5, child: new Text('Delete Chat'))
            ],
            onSelected: choiceAction,
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
          Container (
              color: Color(0x2EAEABAB),
              height: 650,
              width: double.infinity,
              child:  Padding(
                padding: EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[
                    Card(child:Container(child:  Padding(padding: EdgeInsets.all(10.0),
                      child: Text('Hi'),),),),
                    Card(child:Container(child:  Padding(padding: EdgeInsets.all(10.0),
                      child: Text('Tell me about you..How is your week going?'),),),),


                ],
                ),
              ),
          ),
          SizedBox(height: 60,),




        ],
      ),
      ),
      bottomSheet: Container(
        //color: Color(0x2EAEABAB),
        //color: Colors.white,
        height: 50.0,
        child:  Align(
          alignment: Alignment.bottomLeft,
          child: Container(
            padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
            height: 50,
            width: double.infinity,
            //color: Colors.green,
            child: Row(
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                  },
                  child: Container(

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
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Type a message",
                        hintStyle: TextStyle(color: Color(0xffA5A4A4)),
                        border: InputBorder.none
                    ),
                  ),
                ),
                SizedBox(width: 15,),
                FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.attach_file_sharp,color: Colors.grey,size: 18,),
                  backgroundColor: Colors.white,
                  elevation: 0,
                ),
                FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.camera_alt_sharp,color: Colors.grey,size: 18,),
                  backgroundColor: Colors.white,
                  elevation: 0,
                ),
                FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.send,color: Colors.white,size: 20,),
                  backgroundColor: Colors.teal,
                  elevation: 0,
                ),
                // Icon(Icons.,size: 20,), SizedBox(width: 10,),
                // Icon(Icons.camera_alt_sharp,size: 20,), SizedBox(width: 10,),
                // Icon(Icons.send,size: 25,color: Colors.teal,),

              ],

            ),
          ),
        ),
      ),
    );
  }
}
