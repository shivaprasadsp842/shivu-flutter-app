import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../video.dart';
import 'booking_chat_consultant.dart';
import 'check_chat_recharge.dart';


class ChatConsultationRating extends StatelessWidget {
  const ChatConsultationRating({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '',
      home: ChatVideoPlayerScreen(),
    );
  }
}

class ChatVideoPlayerScreen extends StatefulWidget {
  const ChatVideoPlayerScreen({Key? key}) : super(key: key);

  @override
  _ChatVideoPlayerScreenState createState() => _ChatVideoPlayerScreenState();
}

class _ChatVideoPlayerScreenState extends State<ChatVideoPlayerScreen> {
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
  void showSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text(
        'Clicked',
      ),
      duration: Duration(seconds: 1),
    ));
  }

  // Show / hide

  bool _isVisible = false;
 // bool _isBusy = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
     // _isBusy = !_isBusy;
    });
  }

  @override
  Widget build(BuildContext context) {
    final key = new GlobalKey<ScaffoldState>();
    return DefaultTabController(
        key: key,
        length: 7,
        child: Scaffold(
          extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) =>  VideoPlayerApp()),
            );
          },

          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.blue, //change your color here
        ),
        backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
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
                    padding: const EdgeInsets.fromLTRB(0, 10, 10, 0),
                    child: Row(
                      children: [
                        Column(
                          children: [

                            ImageIcon(
                              AssetImage("assets/Group 686.png"),
                              color: Colors.white,
                              size: 30,
                            ),
                          ],
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
                        // Icon(
                        //     Icons.link,
                        //     color: Color(0x7D000000),
                        //     size: 20,
                        //   ),

                        ImageIcon(
                          AssetImage("assets/Vector.png"),
                          color: Color(0x7D000000),
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                          child: Text('Copy Profile Link',  style: TextStyle( color: Color(0x7D000000), fontSize: 15, fontWeight: FontWeight.w600), ),
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
                        ImageIcon(
                          AssetImage("assets/Group 724.png"),
                          color: Color(0x7D000000),
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                          child: Text(' Share Proflie',  style: TextStyle( color: Color(0x7D000000), fontSize: 15, fontWeight: FontWeight.w600), ),
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
                        ImageIcon(
                          AssetImage("assets/Group 726.png"),
                          color: Color(0x7D000000),
                          size: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                          child: Text(' Report User',  style: TextStyle( color: Color(0x7D000000), fontSize: 15, fontWeight: FontWeight.w600),),
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
                          child: Text(' Block User',  style: TextStyle( color: Color(0x7D000000), fontSize: 15, fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  ))
            ],
          ),

        ],
        title:   Container(
            //color: Colors.grey,
            height: 35,
            width:35,
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: Colors.white)),
            child:  FloatingActionButton(
              backgroundColor: Colors.transparent,
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


        centerTitle: true,
      ),
      // Use a FutureBuilder to display a loading spinner while waiting for the
      // VideoPlayerController to finish initializing.
      body: SingleChildScrollView(
        child: IntrinsicHeight(
          child: Column(
            children: <Widget>[


            Container(
            height: 350,
            width:double.infinity,
            child:FutureBuilder(
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
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15.0, 10, 10, 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    child: Text(
                      "Rating and reviews",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(

                padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 2,
                  child:Container(
                    padding: const EdgeInsets.fromLTRB(10.0, 10, 10, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Column(
                          children: <Widget>[
                            Text('4.5',
                              style: TextStyle(
                                fontSize: 45,
                                color: Colors.black54,
                                fontWeight: FontWeight.bold,
                              ),),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.star,size: 15,color: Colors.green,),
                                Icon(Icons.star,size: 15,color: Colors.green,),
                                Icon(Icons.star,size: 15,color: Colors.green,),
                                Icon(Icons.star,size: 15,color: Colors.green,),
                                Icon(Icons.star,size: 15,color: Colors.green,),

                              ],

                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('536236',
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),),
                          ],

                        ),

                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            //1st row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[

                                Text('5',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 03),
                                  width: 180,
                                  height: 12,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    child: LinearProgressIndicator(
                                      value: 0.9,
                                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                                      backgroundColor: Color(0xffD6D6D6),
                                    ),
                                  ),
                                ),


                              ],
                            ),


                            // 2nd row
                            Row(
                              children: <Widget>[
                                Text('4',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 03),
                                  width: 180,
                                  height: 12,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    child: LinearProgressIndicator(
                                      value: 0.8,
                                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                                      backgroundColor: Color(0xffD6D6D6),
                                    ),
                                  ),
                                ),

                              ],
                            ),

//3rd row
                            Row(
                              children: <Widget>[
                                Text('3',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 03),
                                  width: 180,
                                  height: 12,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    child: LinearProgressIndicator(
                                      value: 0.6,
                                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                                      backgroundColor: Color(0xffD6D6D6),
                                    ),
                                  ),
                                ),

                              ],
                            ),

//4th row
                            Row(
                              children: <Widget>[
                                Text('2',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 03),
                                  width: 180,
                                  height: 12,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    child: LinearProgressIndicator(
                                      value: 0.4,
                                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                                      backgroundColor: Color(0xffD6D6D6),
                                    ),
                                  ),
                                ),

                              ],
                            ),
//5th row
                            Row(
                              children: <Widget>[
                                Text('1',
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.black54,
                                    fontWeight: FontWeight.bold,
                                  ),),
                                SizedBox(
                                  height: 10,
                                  width: 10,
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 03),
                                  width: 180,
                                  height: 12,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.all(Radius.circular(10)),
                                    child: LinearProgressIndicator(
                                      value: 0.2,
                                      valueColor: AlwaysStoppedAnimation<Color>(Colors.green),
                                      backgroundColor: Color(0xffD6D6D6),
                                    ),
                                  ),
                                ),

                              ],
                            ),



                          ],
                        ),


                      ],
                    ),
                  ),
                ),
              ),



              SizedBox(
                height:10,
              ),

              SizedBox(
                height:10,
              ),
              PreferredSize(
                  child: TabBar(
                      isScrollable: true,
                      unselectedLabelColor: Colors.white.withOpacity(0.3),
                      indicatorColor: Colors.white,
                      tabs: [
                        Tab(
                          child:    Container(
                            width: 80,
                            //color: Colors.green,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xB270EEDF),
                              //shape: BoxShape.circle,
                            ),
                            // padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 10),
                            child: ActionChip(
                                label: const Text('All'),
                                labelStyle: const TextStyle(color: Colors.black),
                                // avatar: const Icon(Icons.color_lens_outlined, color: Colors.white),
                                backgroundColor:  Color(0xB270EEDF),
                                onPressed: () {
                                  showSnackBar(context);
                                }
                            ),
                          ),
                        ),
                        //tab2 positive
                        Tab(
                          child:  Container(
                            // width: 80,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(20),
                              //color: Colors.yellow,
                              //shape: BoxShape.circle,
                            ),
                            child: ActionChip(
                                label: const Text('Positive'),
                                labelStyle: const TextStyle(color: Colors.black),
                                // avatar: const Icon(Icons.color_lens_outlined, color: Colors.white),
                                backgroundColor: Colors.white,
                                onPressed: () {
                                  showSnackBar(context);
                                }
                            ),
                          ),
                        ),
                        Tab(
                          child:  Container(
                            //   width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(20),
                              //color: Colors.yellow,
                              //shape: BoxShape.circle,
                            ),
                            child:ActionChip(


                                avatar: const Icon(Icons.star, color: Colors.black),
                                labelStyle: const TextStyle(color: Colors.black),
                                label: const Text('5'),
                                backgroundColor: Colors.white,
                                //tooltip: 'This is tooltip',
                                onPressed: () {
                                  showSnackBar(context);
                                }
                            ),
                          ),
                        ),
                        Tab(
                          child:
                          Container(
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(20),
                              //color: Colors.yellow,
                              //shape: BoxShape.circle,
                            ),
                            child:ActionChip(

                                label: const Text('4'),
                                avatar: const Icon(Icons.star, color: Colors.black),
                                labelStyle: const TextStyle(color: Colors.black),

                                backgroundColor: Colors.white,
                                //tooltip: 'This is tooltip',
                                onPressed: () {
                                  showSnackBar(context);
                                }
                            ),
                          ),

                        ),
                        Tab(
                          child: Container(
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(20),
                              //color: Colors.yellow,
                              //shape: BoxShape.circle,
                            ),
                            child:ActionChip(

                                label: const Text('3'),
                                avatar: const Icon(Icons.star, color: Colors.black),
                                labelStyle: const TextStyle(color: Colors.black),

                                backgroundColor: Colors.white,
                                //tooltip: 'This is tooltip',
                                onPressed: () {
                                  showSnackBar(context);
                                }
                            ),
                          ),
                        ), Tab(
                          child:  Container(
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(20),
                              //color: Colors.yellow,
                              //shape: BoxShape.circle,
                            ),
                            child:ActionChip(

                                label: const Text('2'),
                                avatar: const Icon(Icons.star, color: Colors.black),
                                labelStyle: const TextStyle(color: Colors.black),

                                backgroundColor: Colors.white,
                                //tooltip: 'This is tooltip',
                                onPressed: () {
                                  showSnackBar(context);
                                }
                            ),
                          ),
                        ),
                        Tab(
                          child:  Container(
                            width: 60,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black12, width: 1),
                              borderRadius: BorderRadius.circular(20),
                              //color: Colors.yellow,
                              //shape: BoxShape.circle,
                            ),
                            child:ActionChip(

                                label: const Text('1'),
                                avatar: const Icon(Icons.star, color: Colors.black),
                                labelStyle: const TextStyle(color: Colors.black),

                                backgroundColor: Colors.white,
                                //tooltip: 'This is tooltip',
                                onPressed: () {
                                  showSnackBar(context);
                                }
                            ),
                          ),
                        )
                      ]),
                  preferredSize: Size.fromHeight(30.0)),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 0, 10, 10),
                child: Card(
                  child:Column(
                    children: <Widget>[
                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        // crossAxisAlignment: CrossAxisAlignment.center,
                        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          SizedBox(
                            height: 10,
                            width: 10,
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(5), // Border radius
                              child: ClipOval(child:   Image(
                                image: new AssetImage("assets/arjun.png"),
                                width: 30,
                                height: 30,
                                color: null,
                                //fit: BoxFit.scaleDown,
                                alignment: Alignment.center,
                              )
                              ),
                            ),
                          ),
                          // SizedBox(
                          //   height: 10,
                          //   width: 5,
                          // ),
                          Text('Kousik S M',
                            style: TextStyle(fontSize: 12,
                                fontWeight: FontWeight.bold),),

                        ],
                      ),

                      Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          SizedBox(
                            //height: 10,
                            width: 20,
                          ),
                          Icon(Icons.star,size: 15,color: Colors.green,),
                          Icon(Icons.star,size: 15,color: Colors.green,),
                          Icon(Icons.star,size: 15,color: Colors.green,),
                          Icon(Icons.star,size: 15,color: Colors.green,),
                          Icon(Icons.star,size: 15,color: Colors.green,),
                          SizedBox(
                            //height: 10,
                            width: 5,
                          ),
                          Text('01/07/2020', style:TextStyle(fontSize: 12,)),


                        ],

                      ),

                      Padding(

                        padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                        child:  Container(
                          padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                          decoration: BoxDecoration(
                            border: Border.all(color: Color(0xF6F6F6F6), width: 1),
                            borderRadius: BorderRadius.circular(05),
                            color: Color(0xF6F6F6F6),
                            //shape: BoxShape.circle,
                          ),
                          child:Text(
                            'Thats an amazing chat with you maam, Thanks maam. You are thebest on portal, people should consult you. The more I talk to you, the more I feel better.',style: TextStyle(
                            fontSize: 15,
                            color: Colors.black,
                          ), //Textstyle
                          ),
                        ),
                      ),


                      Column(
                        children: <Widget>[
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            // crossAxisAlignment: CrossAxisAlignment.center,
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              SizedBox(
                                height: 10,
                                width: 10,
                              ),
                              CircleAvatar(
                                radius: 30,
                                backgroundColor: Colors.transparent,
                                child: Padding(
                                  padding: const EdgeInsets.all(5), // Border radius
                                  child: ClipOval(child:   Image(
                                    image: new AssetImage("assets/rajiv.PNG"),
                                    width: 30,
                                    height: 30,
                                    color: null,
                                    //fit: BoxFit.scaleDown,
                                    alignment: Alignment.center,
                                  )
                                  ),
                                ),
                              ),
                              // SizedBox(
                              //   height: 10,
                              //   width: 5,
                              // ),
                              Text('Namitha Dutta',
                                style: TextStyle(fontSize: 12,
                                    fontWeight: FontWeight.bold),),

                            ],
                          ),

                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              SizedBox(
                                //height: 10,
                                width: 20,
                              ),
                              Icon(Icons.star,size: 15,color: Colors.green,),
                              Icon(Icons.star,size: 15,color: Colors.green,),
                              Icon(Icons.star,size: 15,color: Colors.green,),
                              Icon(Icons.star,size: 15,color: Colors.green,),
                              Icon(Icons.star,size: 15,color: Colors.green,),
                              SizedBox(
                                //height: 10,
                                width: 5,
                              ),
                              Text('23/06/2020', style:TextStyle(fontSize: 12,)),


                            ],

                          ),

                          Padding(

                            padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                            child:  Container(
                              padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xF6F6F6F6), width: 1),
                                borderRadius: BorderRadius.circular(05),
                                color: Color(0xF6F6F6F6),
                                //shape: BoxShape.circle,
                              ),
                              child:Text(
                                'Thats an amazing chat with you maam, Thanks maam. You are thebest on portal, people should consult you. The more I talk to you, the more I feel better.',style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ), //Textstyle
                              ),
                            ),
                          ),

                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(
                height:150,
              ),




            ],
          ),
        ),
      ),
      bottomSheet: Container(
        color: Colors.white,
        height: 200.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 0.0),
                child:Container(
                  // height: 200,
                  //color: Colors.black12,
                  child: Center(
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // mainAxisSize: MainAxisSize.min,
                      children: <Widget>[

                        Container(
                         // height: 250,
                          color: Colors.white54,
                          child: Center(
                            child: Column(
                              // mainAxisAlignment: MainAxisAlignment.center,
                              // mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                SizedBox(
                                  height:10,
                                ),
                                const Text('Chat Consultation', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),


                                Padding(

                                  padding: const EdgeInsets.fromLTRB(20.0, 10, 10, 10),
                                  child:  Container(
                                    padding: const EdgeInsets.fromLTRB(50.0, 20, 50, 20),
                                    decoration: BoxDecoration(
                                      border: Border.all(color: Colors.black12, width: 1),
                                      borderRadius: BorderRadius.circular(05),
                                      color: Colors.black12,
                                      //shape: BoxShape.circle,
                                    ),
                                    child:Text(
                                      'Rs. 100 / Minute',style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold
                                    ), //Textstyle
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height:10,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children:[


                                    ElevatedButton(

                                      style: ElevatedButton.styleFrom(
                                        primary: Color(0xCC000000), // background
                                        onPrimary: Colors.white, // foreground
                                        padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                                        shape: new RoundedRectangleBorder(
                                          borderRadius: new BorderRadius.circular(10.0),
                                        ),
                                      ),
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => BookingChatConsultant()),

                                        );
                                      },
                                      child: const Text('BOOK FOR LATER',
                                        style: TextStyle(
                                          color:Colors.white,
                                          fontSize:15,

                                          //fontWeight: FontWeight.bold,
                                        ),
                                      ),

                                    ),
                                    SizedBox(width:10,),


                                    Visibility(
                                      visible: !_isVisible,
                                      child:
                                      ElevatedButton(

                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xCC27A58F), // background
                                          onPrimary: Colors.white, // foreground
                                          padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
                                          shape: new RoundedRectangleBorder(
                                            borderRadius: new BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        onPressed: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => CheckChatRecharge()),

                                          );
                                        },
                                        child: const Text('START NOW',
                                          style: TextStyle(
                                            color:Colors.white,
                                            fontSize:15,

                                            //fontWeight: FontWeight.bold,
                                          ),
                                        ),

                                      ),
                                    ),

                                  ],
                                ),



                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ),


          ],
        ),
      ),
      //
      // drawer: Drawer(
      //   // color: Colors.blue,
      //     child: ListView(
      //         children: <Widget>[
      //           ListTile(
      //             leading: Icon(Icons.link),
      //             title: Text('Copy Profile Link'),
      //             onTap: (){
      //               Navigator.pushNamed(context, '/home');
      //             },
      //           ),
      //           ListTile(
      //             leading: Icon(Icons.person_search_rounded),
      //             title: Text('Share Proflie'),
      //             onTap: (){
      //               Navigator.pushNamed(context, '/transactionsList');
      //             },
      //           ),
      //           ListTile(
      //             leading: Icon(Icons.report),
      //             title: Text('Report User'),
      //             onTap: (){
      //               Navigator.pushNamed(context, '/transactionsList');
      //             },
      //           ),
      //           ListTile(
      //             leading: Icon(Icons.block),
      //             title: Text('Block User'),
      //             onTap: (){
      //
      //             },
      //           ),
      //         ]
      //     )
      // ),
    ),
    );
  }
}