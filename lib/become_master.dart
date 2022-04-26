import 'package:flutter/material.dart';
import 'package:furniture_ui/view/become_master_step1.dart';
import 'package:furniture_ui/view/homescreen.dart';


class UserView extends StatelessWidget {
  const UserView({Key? key}) : super(key: key);


  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
            color: Colors.white,
          ),
        ),
        title:   Container(
            //color: Colors.grey,
          height: 40,
          width:40,
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(width: 2, color: Colors.white)),
            child:  FloatingActionButton(
               backgroundColor: Colors.transparent,
                highlightElevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(50.0))
                ),

              onPressed: () {
                // Wrap the play or pause in a call to `setState`. This ensures the
                // correct icon is shown.
                // setState(() {
                //   // If the video is playing, pause it.
                //   if (_controller.value.isPlaying) {
                //     _controller.pause();
                //   } else {
                //     // If the video is paused, play it.
                //     _controller.play();
                //   }
                // });
              },
              // Display the correct icon depending on the state of the player.
              // child: Icon(
              //   _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
              // ),
              child: Icon(Icons.play_arrow,
              ),
            ),
          ),

        centerTitle: true,
        backgroundColor: Colors.black,
        bottomOpacity: 0.0,
        elevation: 0.0,
        actions: [
      Container(
      //color: Colors.grey,
      height: 25,
        width:30,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 2, color: Colors.white)),
      child:FloatingActionButton(
            backgroundColor: Colors.transparent,

            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(5.0))
            ),

            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BecomeMasterStep1()),
              );
            },
            // Display the correct icon depending on the state of the player.
            // child: Icon(
            //   _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
            // ),
            child: Icon(Icons.edit, size: 15,
            ),
          ),
          ),
          // PopupMenuButton<int>(
          //   itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
          //     new PopupMenuItem<int>(
          //         value: 1, child: new Text('Copy Profile Link')),
          //     new PopupMenuItem<int>(
          //         value: 2, child: new Text('Share Proflie')),
          //     new PopupMenuItem<int>(
          //         value: 2, child: new Text('Report User')),
          //     new PopupMenuItem<int>(
          //         value: 2, child: new Text('Block User')),
          //     // new PopupMenuItem<int>(
          //     //     value: 3, child: new Text('Item Three')),
          //     // new PopupMenuItem<int>(
          //     //     value: 4, child: new Text('I am Item Four'))
          //   ],
          //   // onSelected: (int value) {
          //   //   setState(() { _value = value; });
          //   // }
          // )
          // GestureDetector(
          //     onTap: () {
          //       // Navigator.push(
          //       //   context,
          //       //   MaterialPageRoute(builder: (context) => const SecondRoute()),
          //       // );
          //     },
          //     child: Image(
          //     image: new AssetImage("assets/edit.png"),
          //     width: 40,
          //     height: 40,
          //     color: null,
          //     //fit: BoxFit.scaleDown,
          //     alignment: Alignment.center,
          //   )
          // ),


        ],

       ),

      body: Stack(
        children: <Widget>[

         Image(
                image: new AssetImage("assets/arjun.png"),
                width: double.infinity,
                height: 250,
                color: null,
                fit: BoxFit.scaleDown,
                alignment: Alignment.center,
              ),

          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 250, 0, 0),

            child: Card(

              // margin: new EdgeInsets.fromLTRB(50.0, 35, 50, 24),
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    //CircleAvatar
                    // Text(
                    //   'ARC-325',
                    //   style: TextStyle(
                    //     fontSize: 16,
                    //     color: Colors.black54,
                    //     fontWeight: FontWeight.bold,
                    //   ), //Textstyle
                    // ),
                    SizedBox(
                      height: 10,
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
                      height: 20,
                    ), //SizedBox
                    Text(
                      'I am Rajiv Talreja, and I am a business coach. My  journey started when I founded Quantum Leap in the year 2006 as a Corporate TrainingCompany. From 2006 to 2014, we built aclientele of 110 corporate organizations. '
                      ,style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                    ), //Textstyle
                    ), //Text
                    SizedBox(
                      height: 100,
                    ), //SizedBox
                    //SizedBox

                  ],
                ), //Column
              ), //Padding
            ),
          ),

          Padding(

            padding: const EdgeInsets.fromLTRB(50.0, 220, 50, 24),
            child: Card(

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),

                elevation: 2,
                color: Colors.black,
                child: ListTile(
                  //  leading: Icon(Icons.album),
                  title: Text('Arjun Chaithanya',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 20,


                    ),
                  ),
                  subtitle: Text('Entrepreneur',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white,
                      // fontWeight: FontWeight.bold,
                      fontSize: 17,
                    ),),
                )
            ),
          ),
        ],
      ),
        bottomSheet: Container(
        padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
    color: Color(0xffffffff),
    height: 100.0,
    child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      ElevatedButton(

        style: ElevatedButton.styleFrom(
          primary: Colors.black, // background
          onPrimary: Colors.black, // foreground
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 20),
          shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          //Navigator.pop(context);
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => BecomeMasterStep1()),
          );
        },
        child: const Text('Become a Master',
          style: TextStyle(
            color:Colors.white,
            fontSize:20,

            fontWeight: FontWeight.bold,
          ),
        ),

      ),


              ]
            ),
            ),



    );

  }
}