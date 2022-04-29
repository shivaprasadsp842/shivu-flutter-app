import 'package:flutter/material.dart';

import 'chat_consultation_ratings.dart';
import 'check_chat_recharge.dart';


class BookingChatConsultant extends StatelessWidget {
  BookingChatConsultant({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(
       // backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Colors.white54,
          elevation: 0,
          title:  Row(
            children:[
              IconButton(
                icon: Icon(Icons.arrow_back, color:Colors.black, size:20),
                onPressed: () {

                  Navigator.pop(context);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => DirectBookAppointment()),
                  // );
                },
              ),

              Expanded(
                child: Text('How it Work', style: TextStyle(color: Colors.black, ),),
              ),

            ],
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: ChatConsultantBookStatefulWidget(),
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
class ChatConsultantBookStatefulWidget extends StatefulWidget {
  const ChatConsultantBookStatefulWidget({Key? key}) : super(key: key);

  @override
  State<ChatConsultantBookStatefulWidget> createState() => _ChatConsultantBookStatefulWidgetState();
}

class _ChatConsultantBookStatefulWidgetState extends State<ChatConsultantBookStatefulWidget> {
  //final TextEditingController _nameController = TextEditingController();
//  final TextEditingController _offerController = TextEditingController();
  // final TextEditingController _finalofferController = TextEditingController();

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
    return  SingleChildScrollView(
      child: Column(children: <Widget>[

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
          padding: const EdgeInsets.fromLTRB(45, 10, 45, 05),
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
      // Align(
      //   alignment: Alignment.centerLeft,
      //   child: Padding(
      //     padding: const EdgeInsets.fromLTRB(45, 15, 45, 0),
      //     child:  Container(
      //       height: 32.0,
      //       // color: Colors.white,
      //       //padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
      //       decoration: BoxDecoration(
      //         //border: Border.all(color: Colors.black12, width: 1),
      //         borderRadius: BorderRadius.circular(10),
      //         color: Colors.white,
      //         //shape: BoxShape.circle,
      //       ),
      //       child:

      Padding(
        padding: const EdgeInsets.fromLTRB(45, 10, 45, 5),
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
            child:TextField(
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
          padding: const EdgeInsets.fromLTRB(45, 10, 45, 05),
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
            SizedBox(width: 15.0,),
            new Flexible(
              child:Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 10, 0, 0),
                  child:  Container(
                    height: 32.0,
                    // width:200,
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
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
                  padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
                  child:  Container(
                    height: 32.0,
                    // width:200,
                    padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
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

          padding: const EdgeInsets.fromLTRB(45, 10, 45, 10),
          child: Text(
            "Describe your requirement", style: TextStyle(
            fontSize: 13,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(

          padding: const EdgeInsets.fromLTRB(40, 0, 20, 10),
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
        SizedBox(height: 50.0,),
Container(
  color: Colors.white,
 child:  Column(
      children: [
        SizedBox(height: 50.0,),
        Text('Book Chat  Consultation', style:TextStyle(color: Colors.black, fontSize: 12, fontWeight: FontWeight.bold)),
        SizedBox(height: 10.0,),
        Text('Rs. 2000 / Hour', style:TextStyle(color: Colors.blue, fontSize: 12, fontWeight: FontWeight.bold)),
        SizedBox(height: 10.0,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: 30.0,),
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
                  width:100,
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
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


          ],
        ),


        SizedBox(height: 5.0,),



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
                padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(15.0),
                ),
              ),
              onPressed: () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChatConsultationRating()),
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

  ]
  ),
),

    ],
    ),
    );










  }
}