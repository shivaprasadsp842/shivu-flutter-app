import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';

import 'all_booking_appointment.dart';
import 'all_predefined_appointments.dart';



class BookingAppointmentView extends StatelessWidget {
  BookingAppointmentView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(
        //backgroundColor:  Color(0x2EAEABAB),
        //backgroundColor:  Colors.black12,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0), // here the desired height
          child:  AppBar(
            backgroundColor: Colors.white54,
            elevation: 0,
            title: IconButton(
              icon: Icon(Icons.arrow_back, color:Colors.white, size:20),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllBookingAppointment()),
                );
              },
            ),
            //Text('How it works?'),
            flexibleSpace: Image(
              image: AssetImage('assets/arjun.png'),
              height: 200,
              fit: BoxFit.cover,
            ),
            //centerTitle: true,

          ),
        ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: BookingCheckStatefulView(),
          ),
        ),

      ),
    );
  }
}
class BookingCheckStatefulView extends StatefulWidget {
  const BookingCheckStatefulView({Key? key}) : super(key: key);

  @override
  State<BookingCheckStatefulView> createState() => _BookingCheckStatefulViewState();
}

class _BookingCheckStatefulViewState extends State<BookingCheckStatefulView> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _landmarkController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _googleLinkController = TextEditingController();
  final TextEditingController _timeIdController = TextEditingController();
  String? dropdownValue = 'CHOOSE TIME PERIODS';
  List<String> dropdownItems = <String>[
    'CHOOSE TIME PERIODS',
    'ANY TIME',
    'MORNING',
    'NOON',
    "EVENING",
    "NIGHT"
  ];
// time hours
  String? dropdownValuehours = 'CHOOSE TIME HOURS';
  List<String> dropdownItemshours = <String>[
    'CHOOSE TIME HOURS',
    'ANY TIME',
    '05:00AM - 06:00AM',
    '07:00AM - 08:00AM',
    "08:00AM - 09:00AM",
    "09:00AM - 10:00AM"
  ];
//city
  String? dropdownValuecity = 'CHOOSE  CITY';
  List<String> dropdownItemscity = <String>[
    'CHOOSE  CITY',
    'Mysore',
    'Hasan',
    'Mandya',
    "Banglore",
    "Ramanagara"
  ];
// State
  String? dropdownValuestate = 'CHOOSE  STATE';
  List<String> dropdownItemsstate = <String>[
    'CHOOSE  STATE',
    'Karnataka',
    'Tamilnadu',
    'Delhi',
    "Kerala",
    "Andhrapradesh"
  ];


  // Choose a reason

  String? dropdownValuereason = 'CHOOSE REASON';
  List<String> dropdownItemsreason = <String>[
    'CHOOSE REASON',
    'Meeting You Is A Dream',
    'Direct Consultation',
    'Birthday Celebration ',
    "Invitation For Programme / Event",
    "Anniversary Celebration"
  ];

  // location of meeting

  String? dropdownValuelocation = 'CHOOSE PLACE';
  List<String> dropdownItemslocation = <String>[
    'CHOOSE PLACE',
    'Any place',
    'Your Suggested Place',
    'My Office / My Place',
    "Your Office / Your Place",
    "Hotel / Cafe / Party Hall"
  ];
//  duration

  String? dropdownValueDuration = 'CHOOSE DURATION';
  List<String> dropdownItemsDuration = <String>[
    'CHOOSE DURATION',
    '3 Hour',
    '4 Hour',
    '5 Hour',
    "6 Hour",
    "7 Hour"
  ];

  //guestCountValue

  String? dropdownValueguestCountValue = 'CHOOSE NUMBER OF PEOPLE';
  List<String> dropdownItemsguestCountValue = <String>[
    'CHOOSE NUMBER OF PEOPLE',
    '100',
    '200',
    '500',
    "1000",
    "7000"
  ];


// check box
  List<String> _list = [];

  bool? _isAgrre = false;
  String dropdownValuemin = 'Month';


  // Custom Switch
  bool isSwitched = false;

  final dateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: IntrinsicHeight(
        child:  Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),),
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
    //color: Colors.red,
    child:
    Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Text(
        "Invite For Birthday party", style: TextStyle(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w500,
      ), textAlign: TextAlign.center,
      ),
      SizedBox(height: 7.0,),
      Container(
        height: 100.0,
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        constraints: BoxConstraints(minWidth: 100, maxWidth: 200),
        //padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(10)
        ),
        child: Text(
          "", style: TextStyle(
          fontSize: 15,
          color: Colors.black,
          fontWeight: FontWeight.w500,
        ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(00, 10, 00, 05),
          child: Text(
            "Select Date", style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      // Container(
      // width: 200.0,
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 0, 0, 0),
          child:  Container(
            height: 32.0,
            // color: Colors.white,
            //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
            decoration: BoxDecoration(
              //border: Border.all(color: Colors.black12, width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              //shape: BoxShape.circle,
            ),
            child:TextField(
              // readOnly: true,
              controller: dateController,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.calendar_today, size: 20,),
                  hintText: 'CHOOSE YOUR PREFERRED DATE'
              ),
              onTap: () async {
                var date =  await showDatePicker(
                    context: context,
                    initialDate:DateTime.now(),
                    firstDate:DateTime(1900),
                    lastDate: DateTime(2100));
                dateController.text = date.toString().substring(0,10);
              },
            ),
          ),
        ),
      ),


      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(00, 10, 00, 05),
          child: Text(
            "Select Preferred Time", style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //SizedBox(width: 10.0,),
            new Flexible(
              child:Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 00, 0),
                  child:  Container(
                    height: 32.0,
                    // width:200,
                    //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      //shape: BoxShape.circle,
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValue,
                      icon: Icon(Icons.arrow_drop_down),

                      isExpanded: true,
                      iconSize: 26,
                      elevation: 10,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValue = newValue;
                        });
                      },
                      items: dropdownItems.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
            new Flexible(
              child:Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child:  Container(
                    height: 32.0,
                    // width:200,
                    //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      //shape: BoxShape.circle,
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValuehours,
                      icon: Icon(Icons.arrow_drop_down),

                      isExpanded: true,
                      iconSize: 26,
                      elevation: 10,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValuehours = newValue;
                        });
                      },
                      items: dropdownItemshours.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),

          ]
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(00, 10, 00, 05),
          child: Text(
            "Duration Of Appointment", style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          new Flexible(child:  Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(00, 10, 0, 10),
              child:  Container(
                height: 32.0,
                // width:200,
                //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //shape: BoxShape.circle,
                ),
                child: DropdownButton<String>(
                  value: dropdownValueDuration,
                  icon: Icon(Icons.arrow_drop_down),

                  isExpanded: true,
                  iconSize: 26,
                  elevation: 10,
                  style: const TextStyle(color: Colors.black),
                  underline: Container(
                    height: 2,
                    color: Colors.transparent,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValueDuration = newValue;
                    });
                  },
                  items: dropdownItemsDuration.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),),
          new Flexible(child:  Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child:  Container(
                height: 32.0,

                child: TextField(
                controller: _nameController,
                decoration: InputDecoration(

                  // borderRadius: BorderRadius.circular(10.0),
                  //fillColor: Colors.white,
                  fillColor: Colors.white, filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius:
                      BorderRadius.all(Radius.circular(10.0)),
                      borderSide: BorderSide(color: Colors.white)),
                  hintText: 'Rs. 2000 / Hour',
                  hintStyle: TextStyle(
                    color: Colors.grey, // <-- Change this
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
            ),
            ),
            ),
          ),

        ],
      ),


      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(00, 5, 00, 05),
          child: Text(
            "Location Of Meeting", style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 5, 00, 05),
          child:  Container(
            height: 32.0,
            // width:200,
            //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              //shape: BoxShape.circle,
            ),
            child: DropdownButton<String>(
              value: dropdownValuelocation,
              icon: Icon(Icons.arrow_drop_down),

              isExpanded: true,
              iconSize: 26,
              elevation: 10,
              style: const TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.transparent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValuelocation = newValue;
                });
              },
              items: dropdownItemslocation.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),


      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          new Flexible(child:  Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(00, 10, 45, 10),
              child:  Container(
                height: 32.0,

                child: TextField(
                  controller: _landmarkController,
                  decoration: InputDecoration(

                    // borderRadius: BorderRadius.circular(10.0),
                    //fillColor: Colors.white,
                    fillColor: Colors.white, filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'LANDMARK',
                    hintStyle: TextStyle(
                      color: Colors.grey, // <-- Change this
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ),
          new Flexible(child:  Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(45, 10, 10, 10),
              child:  Container(
                height: 32.0,

                child: TextField(
                  controller: _pincodeController,
                  decoration: InputDecoration(

                    // borderRadius: BorderRadius.circular(10.0),
                    //fillColor: Colors.white,
                    fillColor: Colors.white, filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius:
                        BorderRadius.all(Radius.circular(10.0)),
                        borderSide: BorderSide(color: Colors.white)),
                    hintText: 'PINCODE',
                    hintStyle: TextStyle(
                      color: Colors.grey, // <-- Change this
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
            ),
          ),
          ),

        ],
      ),

      Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            //SizedBox(width: 10.0,),
            new Flexible(
              child:Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 00, 0),
                  child:  Container(
                    height: 32.0,
                    // width:200,
                    //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      //shape: BoxShape.circle,
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValuecity,
                      icon: Icon(Icons.arrow_drop_down),

                      isExpanded: true,
                      iconSize: 26,
                      elevation: 10,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValuecity = newValue;
                        });
                      },
                      items: dropdownItemscity.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),
            new Flexible(
              child:Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child:  Container(
                    height: 32.0,
                    // width:200,
                    //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      //shape: BoxShape.circle,
                    ),
                    child: DropdownButton<String>(
                      value: dropdownValuestate,
                      icon: Icon(Icons.arrow_drop_down),

                      isExpanded: true,
                      iconSize: 26,
                      elevation: 10,
                      style: const TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.transparent,
                      ),
                      onChanged: (String? newValue) {
                        setState(() {
                          dropdownValuestate = newValue;
                        });
                      },
                      items: dropdownItemsstate.map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
            ),

          ]
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 10, 10, 10),
          child:  Container(
            height: 32.0,

            child: TextField(
              controller: _googleLinkController,
              decoration: InputDecoration(

                // borderRadius: BorderRadius.circular(10.0),
                //fillColor: Colors.white,
                fillColor: Colors.white, filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Mention Google Link Of The Venue',
                hintStyle: TextStyle(
                  color: Colors.grey, // <-- Change this
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
      ),


      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 5, 00, 05),
          child:  Container(
            color: Colors.white,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(15, 10, 45, 10),
                    child: Text(
                      "Bringing Anyone With You ?", style: TextStyle(
                      fontSize: 15,
                      color: Colors.black54,
                      //fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),
                Switch(
                  value: isSwitched,
                  activeColor: Colors.blue,
                  onChanged: (value) {
                    print("VALUE : $value");
                    setState(() {
                      isSwitched = value;
                    });
                  },
                ),


              ],
            ),
          ),
        ),
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 10, 10, 10),
          child:  Container(
            height: 32.0,

            child: TextField(
              controller: _timeIdController,
              decoration: InputDecoration(

                // borderRadius: BorderRadius.circular(10.0),
                //fillColor: Colors.white,
                fillColor: Colors.white, filled: true,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                focusedBorder: OutlineInputBorder(
                    borderRadius:
                    BorderRadius.all(Radius.circular(10.0)),
                    borderSide: BorderSide(color: Colors.white)),
                hintText: 'Please mention their TIME ID',
                hintStyle: TextStyle(
                  color: Colors.grey, // <-- Change this
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  fontStyle: FontStyle.normal,
                ),
              ),
            ),
          ),
        ),
      ),


      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(00, 5, 00, 05),
          child: Text(
            "Guest Count", style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            //fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 5, 00, 05),
          child:  Container(
            height: 32.0,
            // width:200,
            //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              //shape: BoxShape.circle,
            ),
            child: DropdownButton<String>(
              value: dropdownValueguestCountValue,
              icon: Icon(Icons.arrow_drop_down),

              isExpanded: true,
              iconSize: 26,
              elevation: 10,
              style: const TextStyle(color: Colors.black),
              underline: Container(
                height: 2,
                color: Colors.transparent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValueguestCountValue = newValue;
                });
              },
              items: dropdownItemsguestCountValue.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(0, 10, 00, 10),
          child: Text(
            "Describe your requirement", style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            //fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
          child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration.collapsed(hintText: ""),
                ),
              )
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(0, 10, 00, 10),
          child: Text(
            "Includes", style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            //fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
          child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration.collapsed(hintText: ""),
                ),
              )
          ),
        ),
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(0, 10, 00, 10),
          child: Text(
            "Excludes", style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            //fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(00, 0, 00, 10),
          child: Card(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.all(15.0),
                child: TextField(
                  maxLines: 4,
                  decoration: InputDecoration.collapsed(hintText: ""),
                ),
              )
          ),
        ),
      ),



      Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(00, 10, 00, 10),
          child:  Container(
            // color: Colors.white,

            child: Row(
              children: [
                Checkbox(
                  side: MaterialStateBorderSide.resolveWith(
                        (states) => BorderSide(width: 1.0, color: Colors.blue),
                  ),
                  value: _isAgrre,
                  onChanged: (value) {
                    setState(() {
                      _isAgrre = value;
                      String selectVal = "Agree";
                      value! ? _list.add(selectVal) : _list.remove(selectVal);
                    }
                    );},
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(0, 10, 00, 10),
                    child: Text(
                      "Agereed to TERMS & CONDITIONS", style: TextStyle(
                      fontSize: 12,
                      color: Colors.blue,
                      //fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),

      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[

          new Flexible(child:  Align(
            alignment: Alignment.bottomCenter,
            child:  Container(
              // decoration: const BoxDecoration(color: Colors.black),
              margin: EdgeInsets.all(10.0),
              // padding: EdgeInsets.all(12.0),
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(8),
                color:Colors.black,

              ),
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  primary: Colors.black, // background
                  onPrimary: Colors.white, // foreground
                  padding: const EdgeInsets.fromLTRB(40, 15, 50, 15),
                ),
                onPressed: () {

                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AllPredefinedAppointment()),
                  );
                },
                child: const Text('BOOK NOW',
                  style: TextStyle(
                    color:Colors.white,
                    fontSize:15,

                    fontWeight: FontWeight.bold,
                  ),
                ),

              ),
            ),

          ),
          ),
        ], ),


      //SizedBox(height: 20.0,),






        ],
        ),
        ),
        ));
  }
  }