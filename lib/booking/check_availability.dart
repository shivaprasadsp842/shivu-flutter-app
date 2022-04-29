import 'package:flutter/material.dart';

import 'all_booking_appointment.dart';
import 'all_predefined_appointments.dart';
import 'direct_book_appointment.dart';

class CheckAvailability extends StatelessWidget {
  CheckAvailability({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(
        //backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.white54,
          elevation: 0,
          title:  Text('How it Work', style: TextStyle(color: Colors.black,), textAlign: TextAlign.center),
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  DirectBookAppointment()),
              );
            },

            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.grey,
            ),
          ),
         centerTitle: true,
        ),
        body: SingleChildScrollView(
    child: IntrinsicHeight(
          child: CheckStatefulWidget(),
        ),
        ),
        // home: Scaffold(
        //   appBar: AppBar(title: const Text(_title)),
        //   body: const Center(
        //     child: MyStatefulWidget(),
        //   ),
        // ),
      ),
    );
  }
}
class CheckStatefulWidget extends StatefulWidget {
  const CheckStatefulWidget({Key? key}) : super(key: key);

  @override
  State<CheckStatefulWidget> createState() => _CheckStatefulWidgetState();
}

class _CheckStatefulWidgetState extends State<CheckStatefulWidget> {
  //final TextEditingController _nameController = TextEditingController();
//  final TextEditingController _offerController = TextEditingController();
 // final TextEditingController _finalofferController = TextEditingController();

  String? dropdownValue = 'TIME PERIODS';
  List<String> dropdownItems = <String>[
    'TIME PERIODS',
    'ANY TIME',
    'MORNING',
    'NOON',
    "EVENING",
    "NIGHT"
  ];
// time hours
  String? dropdownValuehours = 'TIME HOURS';
  List<String> dropdownItemshours = <String>[
    'TIME HOURS',
    'ANY TIME',
    '05:00AM - 06:00AM',
    '07:00AM - 08:00AM',
    "08:00AM - 09:00AM",
    "09:00AM - 10:00AM"
  ];


  // Choose a reason

  String? dropdownValuereason = 'REASON';
  List<String> dropdownItemsreason = <String>[
    'REASON',
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

  String? dropdownValueDuration = '1 Hour';
  List<String> dropdownItemsDuration = <String>[
    '1 Hour',
    '3 Hour',
    '4 Hour',
    '5 Hour',
    "6 Hour",
    "7 Hour"
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
    return Column(children: <Widget>[

      Image(
        image: new AssetImage("assets/stepper.PNG"),
        width: double.infinity,
        // height: 30,
        // color: null,
        //fit: BoxFit.scaleDown,
        alignment: Alignment.center,
      ),

      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(25, 10, 25, 05),
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
          Padding(
    padding: const EdgeInsets.fromLTRB(25, 10, 25, 5),
    child:   Container(
    padding: const EdgeInsets.fromLTRB(0, 5, 10, 5),
    height: 40.0,
    width:double.infinity,
    decoration: BoxDecoration(
    border: Border.all(color: Colors.black12, width: 1),
    borderRadius: BorderRadius.circular(10),
    color: Colors.white,

    //shape: BoxShape.circle,
    ),
    child: TextField(
     // readOnly: true,
      controller: dateController,
    decoration: InputDecoration(
    hintText: 'CHOOSE YOUR PREFERRED DATE',
      hintStyle: TextStyle(fontSize: 10),
      enabledBorder: const OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.white, width: 0.0),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(4)),
        borderSide: BorderSide(width: 1,color: Colors.transparent),
      ),
      suffixIcon: Icon(Icons.date_range, color: Colors.black,),
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



      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(25, 10, 45, 05),
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
      SizedBox(width: 0.0,),
      new Flexible(
        child:Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 10, 0),
            child:  Container(
              height: 32.0,
             // width:200,
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                style: const TextStyle(color: Colors.grey, fontSize: 10),
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
            padding: const EdgeInsets.fromLTRB(25, 10, 10, 0),
            child:  Container(
              height: 32.0,
             // width:200,
              padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
                style: const TextStyle(color: Colors.grey, fontSize: 10),
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
          padding: const EdgeInsets.fromLTRB(25, 10, 45, 05),
          child: Text(
            "This Appointment Is For", style: TextStyle(
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
          padding: const EdgeInsets.fromLTRB(25, 10, 10, 10),
          child:  Container(
            height: 32.0,
            // width:200,
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black12, width: 1),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              //shape: BoxShape.circle,
            ),
            child: DropdownButton<String>(
              value: dropdownValuereason,
              icon: Icon(Icons.arrow_drop_down),

              isExpanded: true,
              iconSize: 26,
              elevation: 10,
              style: const TextStyle(color: Colors.grey, fontSize: 10),
              underline: Container(
                height: 2,
                color: Colors.transparent,
              ),
              onChanged: (String? newValue) {
                setState(() {
                  dropdownValuereason = newValue;
                });
              },
              items: dropdownItemsreason.map<DropdownMenuItem<String>>((String value) {
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
          padding: const EdgeInsets.fromLTRB(25, 5, 45, 05),
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
          padding: const EdgeInsets.fromLTRB(25, 10, 10, 0),
          child:  Container(
            height: 32.0,
            // width:200,
            padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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
              style: const TextStyle(color: Colors.grey, fontSize: 10),
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

      Align(
          alignment: Alignment.centerLeft,
          child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 10, 10, 10),
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
                fontSize: 12,
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
        child: Container(

          padding: const EdgeInsets.fromLTRB(25, 10, 45, 10),
          child: Text(
            "Describe your requirement", style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      Align(
          alignment: Alignment.centerLeft,
          child: Container(

          padding: const EdgeInsets.fromLTRB(25, 0, 45, 10),
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
          padding: const EdgeInsets.fromLTRB(25, 0, 10, 10),
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

                    padding: const EdgeInsets.fromLTRB(0, 10, 45, 10),
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

        // Container(child: ConstrainedBox(
        //     constraints: BoxConstraints.expand(),
        //     child: IconButton(
        //       icon: Image.asset('path/gradient.png'),
        //       iconSize: 50,
        //       onPressed: () {},
        //     ))),

    new GestureDetector(
    onTap: (){
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => AllPredefinedAppointment()),
      );
    },
    child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(0, 15, 0, 10),
          child: Text(
            'View Pre-Defined Appointments',
            style: TextStyle(color: Colors.white54,
                fontWeight: FontWeight.bold,
                fontSize: 15.0),
          )
    ),
    ),
    ],
    ),

      SizedBox(height: 10.0,),
      Text('BOOK A DIRECT APPOINTMENT', style:TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
      SizedBox(height: 10.0,),
      Text('Rs. 2000 / Hour', style:TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold)),
      SizedBox(height: 10.0,),
      Row(
       mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: 10.0,),
          new Flexible(
            child: new Text('Duration', style: TextStyle(),

            ),
          ),
new Flexible(child:  Align(
  alignment: Alignment.centerLeft,
  child: Padding(
    padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
    child:  Container(
      height: 32.0,
      // width:200,
      padding: const EdgeInsets.fromLTRB(5, 0, 0, 0 ),
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
        style: const TextStyle(color: Colors.grey, fontSize: 10),
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


        ],
      ),


      SizedBox(height: 20.0,),



      Align(
        alignment: Alignment.bottomCenter,
        child:  Container(
          //decoration: const BoxDecoration(color: Colors.black),
          margin: EdgeInsets.all(10.0),
          // padding: EdgeInsets.all(12.0),
          decoration:BoxDecoration(
            borderRadius:BorderRadius.circular(8),
            // color:Colors.white,

          ),
          child: ElevatedButton(

            style: ElevatedButton.styleFrom(
              primary: Colors.black, // background
              onPrimary: Colors.white, // foreground
              padding: const EdgeInsets.fromLTRB(40, 15, 40, 15),
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(10.0),
              ),
            ),
            onPressed: () {

              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AllBookingAppointment()),
              );
            },
            child: const Text('Book for Rs. 2000',
              style: TextStyle(
                color:Colors.white,
                fontSize:15,

                fontWeight: FontWeight.bold,
              ),
            ),

          ),
        ),

      )
    ],
    );

  }
}