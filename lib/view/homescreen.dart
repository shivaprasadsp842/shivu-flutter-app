import 'package:flutter/material.dart';

import '../allappointments/appointmentPage.dart';
import '../allquestions/questionPage.dart';
import '../become_master.dart';

import '../video.dart';
import '../allchats/chatPage.dart';
import '../wallet/myWallet.dart';
import 'master.dart';


class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {

  bool viewVisible = true ;

  void showWidget(){
    setState(() {
      viewVisible = true ;
    });
  }

  void hideWidget(){
    setState(() {
      viewVisible = false ;
    });
  }
  @override
  build(BuildContext context) {
    return Scaffold(
      //theme: new ThemeData(scaffoldBackgroundColor:  Color(0xFFEFEFEF)),
      backgroundColor: Colors.white,
      appBar: AppBar(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
        ),

        title: Text(
          'INALLTIME',
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
             Navigator.push(
                context,
               // MaterialPageRoute(builder: (context) => Master()),
                MaterialPageRoute(builder: (context) => UserView()),
              );
            },
            child: CircleAvatar(
              radius: 40,
              backgroundColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(5), // Border radius
                child: ClipOval(
                    child: Image(
                  image: new AssetImage("assets/img_2.png"),
                  width: 35,
                  height: 35,
                  color: null,
                  //fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                )),
              ),
            ),
          ),
        ],
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        bottomOpacity: 0.0,
        elevation: 0.0,
        //  color: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          Row(
              //ROW 2
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.fromLTRB(00, 50, 00, 10),
                    child: const Text(
                      'Find your problem solver',
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0x7D000000),
                        //fontWeight:FontWeight.bold,
                      ),
                    )),
              ]),
        Container(
          padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
            child:  Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    child: new Image(
                  image: new AssetImage("assets/Group 707.png"),
                   width: 40,
                  height: 40,
                  color: null,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    child: new Image(
                  image: new AssetImage("assets/Group 708.png"),
                   width: 40,
                  height: 40,
                  color: null,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    child: new Image(
                  image: new AssetImage("assets/Group 709.png"),
                   width: 40,
                  height: 40,
                  color: null,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    child: new Image(
                      image: new AssetImage("assets/Group 712.png"),
                      width: 38,
                      height: 38,
                      color: null,
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    child: new Image(
                  image: new AssetImage("assets/Group 713.png"),
                   width: 40,
                  height: 40,
                  color: null,
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.center,
                )),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(
                    child: new Image(
                      image: new AssetImage("assets/Group 714.png"),
                      width: 40,
                      height: 40,
                      color: null,
                      fit: BoxFit.scaleDown,
                      alignment: Alignment.center,
                    )),
              ),
            ],
          ),
          ),

        Container(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: 260,
                    padding: const EdgeInsets.fromLTRB(10, 15, 0, 00),
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30.0),
                        topRight: Radius.zero,
                        bottomLeft: Radius.circular(30.0),
                        bottomRight: Radius.zero,
                      ),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        //  prefixIcon: Icon(Icons.paste,  color: Colors.black,),

                        // suffixIcon: IconButton(
                        //   icon: Icon(
                        //     Icons.search,
                        //     color: Colors.black,
                        //   ),
                        //   onPressed: () {},
                        // ),
                        fillColor: Colors.white, filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                          ),

                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30.0),
                              bottomLeft: Radius.circular(30.0),
                            ),
                            borderSide: BorderSide(color: Colors.black  )),
                        hintText: 'Paste Url / search your favorite',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 15, 0, 0),
                    child:    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // background
                        onPrimary: Colors.white, // foreground
                        padding: const EdgeInsets.fromLTRB(10, 17, 10, 25),
                        shape: new RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                            topLeft:Radius.zero,
                            topRight: Radius.circular(30.0),
                            bottomLeft: Radius.zero,
                            bottomRight:Radius.circular(30.0),
                          ),
                        ),
                      ),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => BecomeMasterStep2()),
                        // );
                      },
                      child: const Text(
                        'Search',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  )




                ],
              )
            ],
          ),
        ), // This trailing comma makes auto-formatting nicer for build methods.


            Container(
            width: double.infinity,
    height: 100,

    child: Card(
    margin: new EdgeInsets.fromLTRB(15.0, 0, 15, 5),
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(10.0),
    ),
     // color: Color(0xB6B3B3B3),
    elevation: 10,
    child: InkWell(
    onTap: () => Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => VideoPlayerApp()),
    ),
    child:Row(
            children: <Widget>[
              SizedBox(
                width: 16,
              ),

              CircleAvatar(
                // need to be network image for real example for not change to
                backgroundImage: AssetImage("assets/img_2.png"),

                maxRadius: 30,
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Container(
                  color: Colors.transparent,
                  padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 6,
                      ),
                      Text('Rajiv Talreja',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text('Business Coach',
                        style: TextStyle(
                            fontSize: 15,fontWeight: FontWeight.w600
                            ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('GDF-638',
                        style: TextStyle(
                          fontSize: 15,  color: Color(0x7D000000),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
              ),






            ],
          ),
          ),
          ),
          ),


        ]
        ),
      ),








      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
          children: [
            SizedBox(height:50),
            // Card(
            //   margin: new EdgeInsets.all(10.0),
            //   shape: RoundedRectangleBorder(
            //     borderRadius: BorderRadius.circular(10.0),
            //   ),
            //   color: Colors.white,
            //   elevation: 10,
            //   child: ListTile(
            //     shape: RoundedRectangleBorder(
            //       borderRadius: BorderRadius.circular(10.0),
            //     ),
            //     iconColor: Colors.black,
            //     leading: Icon(Icons.lock_clock),
            //     title: const Text(
            //       'Requests',
            //       style: TextStyle(
            //         color: Colors.black,
            //         // fontWeight: FontWeight.bold,
            //         fontSize: 20,
            //       ),
            //     ),
            //     onTap: () {
            //       // Update the state of the app
            //       // ...
            //       // Then close the drawer
            //       Navigator.pop(context);
            //     },
            //   ),
            // ),
            Card(
              margin: new EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: ListTile(
                iconColor: Colors.black,
                leading:
                ImageIcon(
                  AssetImage("assets/lc.png"),
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text(
                  'All Questions',
                  style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new QuestionPage()),
                  );

                },
              ),
            ),
            Card(
              margin: new EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: ListTile(
                iconColor: Colors.black,
                leading:  ImageIcon(
                  AssetImage("assets/cc.png"),
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text(
                  'All Chats',
                  style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new ChatPage()),
                  );

                },
              ),
            ),
            Card(
              margin: new EdgeInsets.all(10.0),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white,
              elevation: 10,
              child: ListTile(
                iconColor: Colors.black,
                leading:  ImageIcon(
                  AssetImage("assets/direct.png"),
                  color: Colors.black,
                  size: 25,
                ),
                title: const Text(
                  'All Appointments',
                  style: TextStyle(
                    color: Colors.black,
                    // fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new AppointmentPage()),
                  );

                },
              ),
            ),
            // ListTile(
            //   iconColor: Colors.black,
            //   leading: Icon(Icons.av_timer_sharp),
            //   title: const Text(
            //     'Upcoming',
            //     style: TextStyle(
            //       color: Colors.black54,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.pop(context);
            //   },
            // ),
            // ListTile(
            //   iconColor: Colors.black,
            //   leading: Icon(Icons.shopping_cart),
            //   title: const Text(
            //     'My Orders',
            //     style: TextStyle(
            //       color: Colors.black54,
            //       fontWeight: FontWeight.bold,
            //       fontSize: 16,
            //     ),
            //   ),
            //   onTap: () {
            //     // Update the state of the app
            //     // ...
            //     // Then close the drawer
            //     Navigator.pop(context);
            //   },
            // ),
            ListTile(
              iconColor: Colors.black,
              leading: Icon(Icons.account_balance_wallet),
              title: const Text(
                'My Wallet',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new MyWallet()),
                );

              },
            ),
            ListTile(
              iconColor: Colors.black,
              leading: ImageIcon(
                AssetImage("assets/ep_info-filled.png"),
                color: Colors.black,
                size: 25,
              ),
              title: const Text(
                'About Us',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              iconColor: Colors.black,
              leading:  ImageIcon(
                AssetImage("assets/image 67.png"),
                color: Colors.black,
                size: 25,
              ),
              title: const Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              iconColor: Colors.black,
              leading:  ImageIcon(
                AssetImage("assets/image 68.png"),
                color: Colors.black,
                size: 25,
              ),
              title: const Text(
                'Send Feedback',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
