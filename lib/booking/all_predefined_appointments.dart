import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';

import 'add_predefined_appointments.dart';
import 'booking_appointment_views.dart';
import 'check_availability.dart';

class AllPredefinedAppointment extends StatelessWidget {
  AllPredefinedAppointment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(
        backgroundColor:  Color(0xFFE7CC86),
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0), // here the desired height
          child:  AppBar(
            backgroundColor: Color(0xFFE7CC86),
            elevation: 0,
            title: IconButton(
              icon: Icon(Icons.arrow_back, color:Colors.white, size:20),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckAvailability()),
                );
              },
            ),
            //Text('How it works?'),
            flexibleSpace: Image(
              image: AssetImage('assets/stepper1.PNG'),
              height: 250,
              //width:double.infinity,
              //fit: BoxFit.cover,
            ),
            //centerTitle: true,

          ),
        ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: PredefinedCheckStateful(),
          ),
        ),

      ),
    );
  }
}
class PredefinedCheckStateful extends StatefulWidget {
  const PredefinedCheckStateful({Key? key}) : super(key: key);

  @override
  State<PredefinedCheckStateful> createState() => _PredefinedCheckStatefulState();
}

class _PredefinedCheckStatefulState extends State<PredefinedCheckStateful> {

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: IntrinsicHeight(
          child:  Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[


                Card(
                  color: Colors.white,
                  child:   Row(
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Align(
                       alignment: Alignment.centerLeft,

                       child: Container(
                         padding: const EdgeInsets.fromLTRB(20, 15, 15, 15),
                         child:  Text("Create New PD-Appointment",
                           style: TextStyle(fontWeight: FontWeight.bold, fontSize: 19, color: Colors.black),),

                       ),
                     ),
                     IconButton(
                       icon: Icon(Icons.add_circle_outlined, color:Color(0xFFBB8CD1), size:35),
                       onPressed: () {
                         Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => AddPredefinedViews()),
                         );
                       },
                     ),

                   ],
                 ),
                 ),

                SizedBox(height: 10.0,),
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image(
                        image: new AssetImage("assets/gradient.png"),
                        // width: 30,
                        height: 50,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        // color: null,
                        //fit: BoxFit.scaleDown,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
                        child: Text(
                          'Your Pre-Defined Appointments',
                          style: TextStyle(color: Colors.white54,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        )),
                  ],
                ),

                SizedBox(height: 10.0,),
                Align(
                  alignment: Alignment.centerLeft,

                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 45, 05),
                    child: Text(
                      "Invite For Birthday party", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  child:   Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image(
                          image: new AssetImage("assets/arjun.png"),
                          width: 175,
                          //  height: double.infinity,
                          // color: null,
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.center,
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 100.0,
                                  constraints: BoxConstraints(minWidth: 60, maxWidth: 115),
                                  padding: EdgeInsets.fromLTRB(10,10, 10,10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text(
                                    "Turn all your problems into possiblities", style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  ),
                                )
                              ],
                            ),



                            Align(
                              alignment: Alignment.bottomCenter,
                              child:  Container(
                                //decoration: const BoxDecoration(color: Colors.black),
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                // padding: EdgeInsets.all(12.0),
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  // color:Colors.white,

                                ),
                                child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff8FDA30), // background
                                    onPrimary: Colors.black, // foreground
                                    padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    // context,
                                    // MaterialPageRoute(builder: (context) => VideoPlayerApp()),
                                    // );
                                  },
                                  child: const Text('Rs. 2000 / Hour',
                                    style: TextStyle(
                                      color:Colors.black,
                                      fontSize:12,

                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ),
                              ),
                            ),


                            Align(
                              alignment: Alignment.bottomCenter,
                              child:  Container(
                                //decoration: const BoxDecoration(color: Colors.black),
                                margin: EdgeInsets.all(0.0),
                                // padding: EdgeInsets.all(12.0),
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  // color:Colors.white,

                                ),
                                child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xffD08328), // background
                                    onPrimary: Colors.black, // foreground
                                    padding: const EdgeInsets.fromLTRB(15, 0, 18, 0),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => BookingAppointmentView()),
                                    );
                                  },
                                  child: const Text('EDIT DETAILS',
                                    style: TextStyle(
                                      color:Colors.white,
                                      fontSize:12,

                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 10.0,),
                // 2nd Card
                Align(
                  alignment: Alignment.centerLeft,

                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 45, 05),
                    child: Text(
                      "Invite As A Speaker / Trainer ", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    ),

                  ),
                ),

                Card(
                  color: Colors.white,
                  child:   Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image(
                          image: new AssetImage("assets/arjun.png"),
                          width: 175,
                          //  height: double.infinity,
                          // color: null,
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.center,
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 100.0,
                                  constraints: BoxConstraints(minWidth: 60, maxWidth: 115),
                                  padding: EdgeInsets.fromLTRB(10,10, 10,10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text(
                                    "Turn all your problems into possiblities", style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  ),
                                )
                              ],
                            ),



                            Align(
                              alignment: Alignment.bottomCenter,
                              child:  Container(
                                //decoration: const BoxDecoration(color: Colors.black),
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                // padding: EdgeInsets.all(12.0),
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  // color:Colors.white,

                                ),
                                child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff8FDA30), // background
                                    onPrimary: Colors.black, // foreground
                                    padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    // context,
                                    // MaterialPageRoute(builder: (context) => VideoPlayerApp()),
                                    // );
                                  },
                                  child: const Text('Rs. 2000 / Hour',
                                    style: TextStyle(
                                      color:Colors.black,
                                      fontSize:12,

                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ),
                              ),
                            ),


                            Align(
                              alignment: Alignment.bottomCenter,
                              child:  Container(
                                //decoration: const BoxDecoration(color: Colors.black),
                                margin: EdgeInsets.all(0.0),
                                // padding: EdgeInsets.all(12.0),
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  // color:Colors.white,

                                ),
                                child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xffD08328), // background
                                    onPrimary: Colors.black, // foreground
                                    padding: const EdgeInsets.fromLTRB(15, 0, 18, 0),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => BookingAppointmentView()),
                                    );
                                  },
                                  child: const Text('EDIT DETAILS',
                                    style: TextStyle(
                                      color:Colors.white,
                                      fontSize:12,

                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10.0,),
                // 2nd Card
                Align(
                  alignment: Alignment.centerLeft,

                  child: Container(
                    padding: const EdgeInsets.fromLTRB(10, 10, 45, 05),
                    child: Text(
                      "One-To-One Consultation ", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                    ),

                  ),
                ),
                Card(
                  color: Colors.white,
                  child:   Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image(
                          image: new AssetImage("assets/arjun.png"),
                          width: 175,
                          //  height: double.infinity,
                          // color: null,
                          fit: BoxFit.scaleDown,
                          alignment: Alignment.center,
                        ),
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  height: 100.0,
                                  constraints: BoxConstraints(minWidth: 60, maxWidth: 115),
                                  padding: EdgeInsets.fromLTRB(10,10, 10,10),
                                  decoration: BoxDecoration(
                                      color: Colors.black12,
                                      borderRadius: BorderRadius.circular(10)
                                  ),
                                  child: Text(
                                    "Turn all your problems into possiblities", style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  ),
                                )
                              ],
                            ),



                            Align(
                              alignment: Alignment.bottomCenter,
                              child:  Container(
                                //decoration: const BoxDecoration(color: Colors.black),
                                margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                                // padding: EdgeInsets.all(12.0),
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  // color:Colors.white,

                                ),
                                child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xff8FDA30),// background
                                    onPrimary: Colors.black, // foreground
                                    padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
                                  ),
                                  onPressed: () {
                                    // Navigator.push(
                                    // context,
                                    // MaterialPageRoute(builder: (context) => VideoPlayerApp()),
                                    // );
                                  },
                                  child: const Text('Rs. 2000 / Hour',
                                    style: TextStyle(
                                      color:Colors.black,
                                      fontSize:12,

                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ),
                              ),
                            ),


                            Align(
                              alignment: Alignment.bottomCenter,
                              child:  Container(
                                //decoration: const BoxDecoration(color: Colors.black),
                                margin: EdgeInsets.all(0.0),
                                // padding: EdgeInsets.all(12.0),
                                decoration:BoxDecoration(
                                  borderRadius:BorderRadius.circular(8),
                                  // color:Colors.white,

                                ),
                                child: ElevatedButton(

                                  style: ElevatedButton.styleFrom(
                                    primary: Color(0xffD08328),  // background
                                    onPrimary: Colors.black, // foreground
                                    padding: const EdgeInsets.fromLTRB(15, 0, 18, 0),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(builder: (context) => BookingAppointmentView()),
                                    );
                                  },
                                  child: const Text('EDIT DETAILS',
                                    style: TextStyle(
                                      color:Colors.white,
                                      fontSize:12,

                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),

                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),





              ],
            ),





          ),
        ));
  }
}