import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'send_leave_question.dart';

class CheckRecharge extends StatelessWidget {
  const CheckRecharge({Key? key}) : super(key: key);

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
                  Image.asset('assets/rtm.png', height: 10,width: 10,fit: BoxFit.cover),
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
                  value: 1, child: new Text('Video Call')),
              new PopupMenuItem<int>(
                  value: 2, child: new Text('End Chat')),
              new PopupMenuItem<int>(
                  value: 3, child: new Text('Rate Now')),
              new PopupMenuItem<int>(
                  value: 4, child: new Text('Report')),
              new PopupMenuItem<int>(
                  value: 5, child: new Text('Delete Chat'))
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
        child: ElevatedButton(
          child: const Text('Insufficient wallet banance !',
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
          onPressed: () {
            showModalBottomSheet<void>(
              context: context,
              builder: (BuildContext context) {
                return Container(
                  height: 500,
                  color: Colors.white,

                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30.0, 10, 20, 20),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                              child: Text(
                                "Insufficient wallet banance !",
                                style: TextStyle(
                                  fontSize: 15,
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
                        SizedBox( width: 20,),
                        Text('Available Balance'),
                       SizedBox(width: 100,),
                        Text('Rs. 0.00', style: TextStyle(color:Colors.red, fontWeight: FontWeight.bold)),
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

                          padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                          child:  Container(
                            padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 100),
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white70, width: 1),
                              borderRadius: BorderRadius.circular(05),
                              color: Colors.black12,
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
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // background
                            onPrimary: Colors.white, // foreground
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                          ),
                          child: const Text('Cancel',
                            style: TextStyle(
                              color:Colors.black,
                              fontSize:12,
                            ),),
                          onPressed: () => Navigator.pop(context),
                        ),
                        SizedBox(height:10,width:10,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal, // background
                            onPrimary: Colors.white, // foreground
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                          ),
                          onPressed: () {
                            // Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LeaveQuestion()),
                            );
                          },
                          child: const Text('RECHARGE & CONTINUE',
                            style: TextStyle(
                              color:Colors.white,
                             fontSize:12,
                            ),
                          ),

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
      ),
      bottomSheet: Container(
padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        height: 400.0,
        width:double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white70, width: 1),
          borderRadius: BorderRadius.circular(50),
          color:Color(0xffffffff),
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
                              fontSize: 15,
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
                        SizedBox( width: 20,),
                        Text('Available Balance'),
                        SizedBox(width: 100,),
                        Text('Rs. 0.00', style: TextStyle(color:Colors.red, fontWeight: FontWeight.bold)),
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

                      padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                      child:  Container(
                        width:300,
                        padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 100),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white70, width: 1),
                          borderRadius: BorderRadius.circular(05),
                          color: Colors.black12,
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
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.white, // background
                            onPrimary: Colors.white, // foreground
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                          ),
                          child: const Text('Cancel',
                            style: TextStyle(
                              color:Colors.black,
                              fontSize:12,
                            ),),
                          onPressed: () => Navigator.pop(context),
                        ),
                        SizedBox(height:10,width:10,),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.teal, // background
                            onPrimary: Colors.white, // foreground
                            padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                          ),
                          onPressed: () {
                            // Navigator.pop(context);
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => LeaveQuestion()),
                            );
                          },
                          child: const Text('RECHARGE & CONTINUE',
                            style: TextStyle(
                              color:Colors.white,
                              fontSize:12,
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

    );
  }
}
