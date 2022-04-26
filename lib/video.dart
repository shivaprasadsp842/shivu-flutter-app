import 'dart:async';

import 'package:flutter/material.dart';
import 'package:furniture_ui/view/homescreen.dart';
import 'package:video_player/video_player.dart';

import 'all_questions.dart';
import 'booking/direct_book_appointment.dart';
import 'chat/chat_consultation_ratings.dart';

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      //title: 'Video Player Demo',
      home: VideoPlayerScreen(),
    );
  }
}

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  late VideoPlayerController _controller;
  late Future<void> _initializeVideoPlayerFuture;

  @override
  void initState() {
    super.initState();

    // Create and store the VideoPlayerController. The VideoPlayerController
    // offers several different constructors to play videos from assets, files,
    // or the internet.
    _controller = VideoPlayerController.network(
      'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4',
    );

    // Initialize the controller and store the Future for later use.
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }
  // Bottom Navigator code

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
    Text(
      '',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child:
      Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  HomeView()),
            );
          },

          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.grey,
          ),
        ),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        // leading: IconButton(
        //   icon: Icon(Icons.menu),
        //   onPressed: () => Scaffold.of(context).openDrawer(),
        // ),
       // iconTheme: IconThemeData(color: Colors.green),
        actions: [

          // Icon(Icons.navigate_before,
          //   color: Colors.blue.shade400,), Padding(
          //   padding: EdgeInsets.fromLTRB(10.0,0,170,0),
          //   //child: Text('Hello World!'),
          // ),



          // Icon(Icons.edit,
          //   color: Colors.blue.shade400,
          // ),
          PopupMenuButton<int>(
            itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
              new PopupMenuItem<int>(
                  value: 1, child: new Text('Copy Profile Link')),
              new PopupMenuItem<int>(
                  value: 2, child: new Text('Share Proflie')),
              new PopupMenuItem<int>(
                  value: 2, child: new Text('Report User')),
              new PopupMenuItem<int>(
                  value: 2, child: new Text('Block User')),
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

        // iconTheme: IconThemeData(
        //   color: Colors.white, //change your color here
        // ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,

        title:   Center(
          child:   Container(
            //color: Colors.grey,
            height: 55,
            width:55,
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 3, color: Colors.white)),
            child:  FloatingActionButton(
              //  backgroundColor: Colors.white,
              //   shape: RoundedRectangleBorder(
              //       borderRadius: BorderRadius.all(Radius.circular(50.0))
              //   ),

              onPressed: () {
                // Wrap the play or pause in a call to `setState`. This ensures the
                // correct icon is shown.
                setState(() {
                  // If the video is playing, pause it.
                  if (_controller.value.isPlaying) {
                    _controller.pause();
                  } else {
                    // If the video is paused, play it.
                    _controller.play();
                  }
                });
              },
              // Display the correct icon depending on the state of the player.
              child: Icon(
                _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              ),
            ),
          ),
        ),
        //   style: TextStyle(color:Colors.black,),),
      ),
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body:SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
             children: <Widget>[
      FutureBuilder(
        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            // If the VideoPlayerController has finished initialization, use
            // the data it provides to limit the aspect ratio of the video.
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: VideoPlayer(_controller),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),


               Stack(
                 children: <Widget>[

                   Padding(
                     padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                     child:  Card(

                       // margin: new EdgeInsets.fromLTRB(50.0, 35, 50, 24),
                       elevation: 20,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),
                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(20.0, 20, 20, 10),
                         child: Column(
                           children: [

                             SizedBox(
                               height: 60,
                             ),
                             Align(
                               alignment: Alignment.centerLeft,
                               child: Container(
                                 child: Text(
                                   "About",
                                   style: TextStyle(
                                     fontSize: 25,
                                     color: Colors.black,
                                     fontWeight: FontWeight.bold,
                                   ),
                                 ),
                               ),
                             ),//SizedBox
                             //Text
                             SizedBox(
                               height: 10,
                             ), //SizedBox
                             Text(
                               'I am Rajiv Talreja, and I am a business coach. My  journey started when I founded Quantum Leap in the year 2006 as a Corporate TrainingCompany. From 2006 to 2014, we built aclientele of 110 corporate organizations. '
                               ,style: TextStyle(
                               fontSize: 15,
                               color: Colors.black,
                             ), //Textstyle
                             ), //Text
                             SizedBox(
                               height: 10,
                             ), //SizedBox
                             //SizedBox
                           ],
                         ), //Column
                       ), //Padding
                     ),
                   ),



                   Padding(
                     padding: const EdgeInsets.fromLTRB(70.0, 0, 50, 16),
                     child: Card(

                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(20.0),
                       ),

                       elevation: 2,
                       color: Colors.black,
                       child: Padding(
                         padding: const EdgeInsets.fromLTRB(60.0, 0, 60, 10),
                         child: Column(
                           children: [
                             Text(
                               'Rajiv Talreja',
                               style: TextStyle(
                                 fontSize: 16,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold,
                               ), //Textstyle
                             ),
                             SizedBox(
                               height: 5,
                             ),
                             Text(
                               'Buisness Coach',
                               style: TextStyle(
                                 fontSize: 14,
                                 color: Colors.white,
                                 //fontWeight: FontWeight.bold,
                               ), //Textstyle
                             ),
                             SizedBox(
                               height: 5,
                             ),
                             Text(
                               'GDF-638',
                               style: TextStyle(
                                 fontSize: 12,
                                 color: Colors.white54,
                                 //fontWeight: FontWeight.bold,
                               ), //Textstyle
                             ),
                           ],
                         ),

                       ),
                     ),
                   ),
                   //
                   // Align(
                   //   alignment: Alignment.bottomLeft,
                   //   child: Container(
                   //     //color: Colors.grey,
                   //     padding: EdgeInsets.only(left: 20,bottom: 15,top: 430, right:20),
                   //     child: Row(
                   //
                   //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   //       children: <Widget>[
                   //     Column(
                   //           children: <Widget>[
                   //             Container(
                   //               //color: Colors.grey,
                   //               margin: EdgeInsets.all(0),
                   //               padding: EdgeInsets.all(0),
                   //               decoration: BoxDecoration(
                   //                   borderRadius: BorderRadius.circular(100),
                   //                   border: Border.all(width: 3, color: Colors.black12)),
                   //               child:  IconButton(
                   //                 //update the bottom app bar view each time an item is clicked
                   //                   onPressed: () {
                   //                     Navigator.push(
                   //                       context,
                   //                       MaterialPageRoute(builder: (context) =>  AllLeaveQuestion()),
                   //                     );
                   //                   },
                   //                   iconSize: 27.0,
                   //                   icon:  ImageIcon(
                   //                     AssetImage("assets/question.png"),
                   //                     size: 25,
                   //                     color: Color(0xFF3A5A98),
                   //                   )
                   //               ),
                   //             ),
                   //             Text('LEAVE A ',
                   //               style: TextStyle(fontSize: 12,),),
                   //             Text('QUESTION',
                   //               style: TextStyle(fontSize: 12,),),
                   //
                   //           ],
                   //         ),
                   //
                   //
                   //         Column(
                   //           children: <Widget>[
                   //             Container(
                   //               //color: Colors.grey,
                   //               margin: EdgeInsets.all(0),
                   //               padding: EdgeInsets.all(0),
                   //               decoration: BoxDecoration(
                   //                   borderRadius: BorderRadius.circular(100),
                   //                   border: Border.all(width: 3, color: Colors.black12)),
                   //               child: IconButton(
                   //               //update the bottom app bar view each time an item is clicked
                   //                 onPressed: () {
                   //                   Navigator.push(
                   //                     context,
                   //                     MaterialPageRoute(builder: (context) =>  ChatConsultationRating()),
                   //                   );
                   //                 },
                   //                 iconSize: 27.0,
                   //                 icon : Icon(Icons.chat,size: 20,color:Color(0xFF3A5A98))
                   //               // icon:  ImageIcon(
                   //               //   AssetImage("assets/chat.png"),
                   //               //   size: 25,
                   //               //   //color: Color(0xFF3A5A98),
                   //               // )
                   //             ),
                   //             ),
                   //             Text('CHAT ',
                   //               style: TextStyle(fontSize: 12,),),
                   //             Text(' CONSULTATION',
                   //               style: TextStyle(fontSize: 12,),),
                   //           ],
                   //         ),
                   //         Column(
                   //           children: <Widget>[
                   //             Container(
                   //               //color: Colors.grey,
                   //               margin: EdgeInsets.all(0),
                   //               padding: EdgeInsets.all(0),
                   //               decoration: BoxDecoration(
                   //                   borderRadius: BorderRadius.circular(100),
                   //                   border: Border.all(width: 3, color: Colors.black12)),
                   //               child:  IconButton(
                   //               //update the bottom app bar view each time an item is clicked
                   //                 onPressed: () {
                   //                   Navigator.push(
                   //                     context,
                   //                     MaterialPageRoute(builder: (context) =>  DirectBookAppointment()),
                   //                   );
                   //                 },
                   //                 iconSize: 27.0,
                   //                 icon : Icon(Icons.local_offer,size: 20,color:Color(0xFF3A5A98))
                   //               // icon:  ImageIcon(
                   //               //     AssetImage("assets/appointment.png"),
                   //               //     size: 25,
                   //               //     color: Color(0xFF3A5A98),
                   //               //   )
                   //             ),
                   //             ),
                   //
                   //             Text('DIRECT ',
                   //               style: TextStyle(fontSize: 12,),),
                   //             Text(' APPOINTMENT',
                   //               style: TextStyle(fontSize: 12,),),
                   //           ],
                   //         ),
                   //         // Footer widgets
                   //       ],
                   //     ),
                   //   ),
                   // ),




                 ],
               )


      ],
      ),

      ),
      ),
        bottomSheet: Container(
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          color: Color(0xCCCCCCCC),
          height: 100.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child:     Column(
                    children: <Widget>[
                      Container(
                        //color: Colors.grey,
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 3, color: Colors.white)),
                        child:  IconButton(
                          //update the bottom app bar view each time an item is clicked
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  AllLeaveQuestion()),
                              );
                            },
                            iconSize: 27.0,
                            icon:  ImageIcon(
                              AssetImage("assets/question.png"),
                              size: 25,
                              color: Colors.black,
                            )
                        ),
                      ),
                      SizedBox(height:5),
                      Text('LEAVE A ',
                        style: TextStyle(fontSize: 12,),),
                      Text('QUESTION',
                        style: TextStyle(fontSize: 12,),),

                    ],
                  ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 0.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        //color: Colors.grey,
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 3, color: Colors.white)),
                        child: IconButton(
                          //update the bottom app bar view each time an item is clicked
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  ChatConsultationRating()),
                              );
                            },
                            iconSize: 27.0,
                            icon : Icon(Icons.chat,size: 20,color:Colors.black)
                          // icon:  ImageIcon(
                          //   AssetImage("assets/chat.png"),
                          //   size: 25,
                          //   //color: Color(0xFF3A5A98),
                          // )
                        ),
                      ),
                      SizedBox(height:5),
                      Text('CHAT ',
                        style: TextStyle(fontSize: 12,),),
                      Text(' CONSULTATION',
                        style: TextStyle(fontSize: 12,),),
                    ],
                  ),
              ),
              Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child:    Column(
                    children: <Widget>[
                      Container(
                        //color: Colors.grey,
                        margin: EdgeInsets.all(0),
                        padding: EdgeInsets.all(0),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(width: 3, color: Colors.white)),
                        child:  IconButton(
                          //update the bottom app bar view each time an item is clicked
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) =>  DirectBookAppointment()),
                              );
                            },
                            iconSize: 27.0,
                            icon : Icon(Icons.local_offer,size: 20,color:Colors.black)
                          // icon:  ImageIcon(
                          //     AssetImage("assets/appointment.png"),
                          //     size: 25,
                          //     color: Color(0xFF3A5A98),
                          //   )
                        ),
                      ),

                      Text('DIRECT ',
                        style: TextStyle(fontSize: 12,),),
                      Text(' APPOINTMENT',
                        style: TextStyle(fontSize: 12,),),
                    ],
                  ),
              )
            ],
          ),
        ),






    ),
    );
  }
}