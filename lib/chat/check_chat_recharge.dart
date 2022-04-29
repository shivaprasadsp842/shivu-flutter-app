import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_consultation_ratings.dart';
import 'chat_rules.dart';

class CheckChatRecharge extends StatefulWidget {
  const CheckChatRecharge({Key? key}) : super(key: key);

  @override
  _CheckChatRechargeState createState() => _CheckChatRechargeState();
}

class _CheckChatRechargeState extends State<CheckChatRecharge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Color(0xFFEFEFEF),
     // theme: new ThemeData(scaffoldBackgroundColor:  ),
      appBar: AppBar(

     leading: InkWell(
     onTap: () {
     Navigator.push(
     context,
     MaterialPageRoute(builder: (context) =>  ChatConsultationRating()),
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

          PopupMenuButton<int>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
              // new PopupMenuItem<int>(
              //     value: 1, child: new Text('Settings')),
              // new PopupMenuItem<int>(
                  //value: 2, child: new Text('View Contact')),
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
      body: Center(

      ),

      bottomSheet: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 400.0,
        width:double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(20),
          color:Color(0xffffffff),
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 5.0,
            ),]
          //shape: BoxShape.circle,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(30.0, 10, 20, 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        child: Text(
                          "Insufficient wallet banance !",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height:10,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: <Widget>[
                      SizedBox( width: 25,),
                      Text('Available Balance',    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),),
                      SizedBox(width: 100,),
                      Text('Rs. 0.00', style: TextStyle(color:Colors.red, fontSize: 15, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  SizedBox(height:10,),
                  Divider(
                    height: 10,
                    thickness: 2,
                    indent: 20,
                    endIndent: 0,
                    color: Colors.black26,
                  ),
                  Padding(

                    padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 15),
                    child:  Container(
                      width:300,
                      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 100),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.white70, width: 1),
                        borderRadius: BorderRadius.circular(05),
                        color: Color(0xF6F6F6F6),
                        //shape: BoxShape.circle,
                      ),
                      child:Text(
                        'That’s not a issue. Now you can recharge your wallet with combo offers & can continue your conversation. ',style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ), //Textstyle
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(height:10,width:15,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white, // background
                          onPrimary: Colors.white, // foreground
                          padding: const EdgeInsets.fromLTRB(30, 15, 30, 15),
                          side: BorderSide(
                            width: 1.0,
                            color: Colors.black,
                          ),
                        ),
                        child: const Text('Cancel',
                          style: TextStyle(
                            color:Colors.black,
                            fontSize:13,
                          ),),
                        onPressed: () => Navigator.pop(context),
                      ),
                      SizedBox(height:10,width:10,),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // background
                          onPrimary: Colors.white, // foreground
                          padding: const EdgeInsets.fromLTRB(30, 16, 30, 16),
                        ),
                        onPressed: () {
                          // Navigator.pop(context);
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => ChatRules()),
                          );
                        },
                        child: const Text('RECHARGE & CONTINUE',
                          style: TextStyle(
                            color:Colors.white,
                            fontSize:13,
                          ),
                        ),

                      ),
                    ],
                  ),

                ],
              ),
            )
          ],
        ),
       ),
      // bottomSheet: Container(
      //   padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      //   height: 400.0,
      //   width:double.infinity,
      //   decoration: BoxDecoration(
      //     border: Border.all(color: Colors.white70, width: 1),
      //     borderRadius: BorderRadius.circular(50),
      //     color:Color(0xffffffff),
      //     //shape: BoxShape.circle,
      //   ),
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children: <Widget>[
      //       Padding(
      //         padding: EdgeInsets.only(left: 0.0),
      //         child: Column(
      //           mainAxisAlignment: MainAxisAlignment.start,
      //           crossAxisAlignment: CrossAxisAlignment.start,
      //           mainAxisSize: MainAxisSize.min,
      //           children: <Widget>[
      //             Padding(
      //               padding: const EdgeInsets.fromLTRB(30.0, 10, 20, 20),
      //               child: Align(
      //                 alignment: Alignment.centerLeft,
      //                 child: Container(
      //                   child: Text(
      //                     "Insufficient wallet banance !",
      //                     style: TextStyle(
      //                       fontSize: 15,
      //                       color: Colors.black,
      //                       fontWeight: FontWeight.bold,
      //                     ),
      //                   ),
      //                 ),
      //               ),
      //             ),
      //
      //             SizedBox(height:10,),
      //
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //
      //               children: <Widget>[
      //                 SizedBox( width: 20,),
      //                 Text('Available Balance'),
      //                 SizedBox(width: 100,),
      //                 Text('Rs. 0.00', style: TextStyle(color:Colors.red, fontWeight: FontWeight.bold)),
      //               ],
      //             ),
      //             SizedBox(height:10,),
      //             Divider(
      //               height: 10,
      //               thickness: 2,
      //               indent: 20,
      //               endIndent: 0,
      //               color: Colors.black26,
      //             ),
      //             Padding(
      //
      //               padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
      //               child:  Container(
      //                 width:300,
      //                 padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 100),
      //                 decoration: BoxDecoration(
      //                   border: Border.all(color: Colors.white70, width: 1),
      //                   borderRadius: BorderRadius.circular(05),
      //                   color: Colors.black12,
      //                   //shape: BoxShape.circle,
      //                 ),
      //                 child:Text(
      //                   'That’s not a issue. Now you can recharge your wallet with combo offers & can continue your conversation. ',style: TextStyle(
      //                   fontSize: 15,
      //                   color: Colors.black,
      //                 ), //Textstyle
      //                 ),
      //               ),
      //             ),
      //             Row(
      //               mainAxisAlignment: MainAxisAlignment.center,
      //               children: <Widget>[
      //                 ElevatedButton(
      //                   style: ElevatedButton.styleFrom(
      //                     primary: Colors.white, // background
      //                     onPrimary: Colors.white, // foreground
      //                     padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      //                   ),
      //                   child: const Text('Cancel',
      //                     style: TextStyle(
      //                       color:Colors.black,
      //                       fontSize:12,
      //                     ),),
      //                   onPressed: () => Navigator.pop(context),
      //                 ),
      //                 SizedBox(height:10,width:10,),
      //                 ElevatedButton(
      //                   style: ElevatedButton.styleFrom(
      //                     primary: Colors.teal, // background
      //                     onPrimary: Colors.white, // foreground
      //                     padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
      //                   ),
      //                   onPressed: () {
      //                     // Navigator.pop(context);
      //                     Navigator.push(
      //                       context,
      //                       MaterialPageRoute(builder: (context) => ChatRules()),
      //                     );
      //                   },
      //                   child: const Text('RECHARGE & CONTINUE',
      //                     style: TextStyle(
      //                       color:Colors.white,
      //                       fontSize:12,
      //                     ),
      //                   ),
      //
      //                 ),
      //               ],
      //             ),
      //
      //           ],
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
