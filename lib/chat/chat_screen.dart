import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:furniture_ui/chat/rating.dart';

import 'chat_rules.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  void choiceAction(int choice) {
if(choice==2) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Rating()),
  );
}
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //theme: new ThemeData(scaffoldBackgroundColor:  Color(0xFFEFEFEF)),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  ChatRules()),
            );
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


        actions: [
          Card(
            color: Color(0xE5E5E5E5),

            child: Padding(
              padding: const EdgeInsets.fromLTRB(05.0, 10, 5, 10),
              child:  Text('00 : 00 : 08', style: TextStyle(fontWeight: FontWeight.bold),),
            ),
          ),
          PopupMenuButton(
            elevation: 50,
            color:Colors.white,

            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: SizedBox(
              width: 40,
              height: 49,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Container(
                  // color: Theme.of(context).colorScheme.button,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.more_vert,
                          color: Colors.black,
                          size: 20,
                        ),
                        Spacer(),

                      ],
                    ),
                  ),
                ),
              ),
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                  value: 1,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.voice_chat_rounded,
                          color: Color(0x7D000000),
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text(' End Chat',  style: TextStyle( color: Color(0x7D000000), fontSize: 15, fontWeight: FontWeight.w600), ),
                        ),
                      ],
                    ),
                  )),
              PopupMenuItem(
                  value: 2,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0x7D000000),
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Text(' Rate Now',  style: TextStyle( color: Color(0x7D000000), fontSize: 15, fontWeight: FontWeight.w600), ),
                        ),
                      ],
                    ),
                  )),
              PopupMenuItem(
                  value: 3,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.person_add_alt_1_outlined,
                          color: Color(0x7D000000),
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(' Report',  style: TextStyle( color: Color(0x7D000000), fontSize: 15, fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  )),
              PopupMenuItem(
                  value: 4,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.block,
                          color: Color(0x7D000000),
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(' Block ',  style: TextStyle( color: Color(0x7D000000), fontSize: 15, fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  )),
              PopupMenuItem(
                  value: 5,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.delete_forever_rounded,
                          color: Color(0x7D000000),
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(' Delete Chat ',  style: TextStyle( color: Color(0x7D000000), fontSize: 15, fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  ))
            ],
            onSelected: choiceAction,
          ),

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
        //padding: EdgeInsets.only(left: 10,bottom: 10,top: 10),
        height: 50.0,
        child:  Align(
          alignment: Alignment.center,
          child: Container(
            padding: EdgeInsets.only(left: 10,bottom: 20,top: 10),
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
                  child:TextField(
                    maxLines: 2,
                    decoration: InputDecoration.collapsed(hintText: "Type a message"),
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
                  child: Icon(Icons.camera_alt_sharp,color: Colors.black,size: 20,),
                  backgroundColor: Colors.white,
                  elevation: 0,
                ),
                FloatingActionButton(
                  onPressed: (){},
                  child: Icon(Icons.mic,color: Colors.white,size: 20,),
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
