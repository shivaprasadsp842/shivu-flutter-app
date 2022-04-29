import 'package:flutter/material.dart';
import 'package:furniture_ui/video.dart';

import 'homescreen.dart';
import 'master.dart';

class BecomeMasterStep2 extends StatefulWidget {
   BecomeMasterStep2({Key? key}) : super(key: key);

  @override
  State<BecomeMasterStep2> createState() => _BecomeMasterStep2State();
}

class _BecomeMasterStep2State extends State<BecomeMasterStep2> {
  final TextEditingController _nameController = TextEditingController();
  bool isChecked = false;
  // String? dropdownValue = 'Instagram';
  // List<String> dropdownValue = <String>[
  //   'Instagram',
  //   'Facebook',
  //   'Whatsapp',
  //   'Yahoo',
  //   "Youtube",
  //   "LinkedIn"
  // ];

  String? dropdownValueplatform = 'Choose Platform';
  List<String> dropdownItems = <String>[
    'Choose Platform',
      'Instagram',
      'Facebook',
      'Whatsapp',
      'Yahoo',
      "Youtube",
      "LinkedIn"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Stack(
            children: <Widget>[
              Column(
                children: <Widget>[
                  SizedBox(height:40),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      //decoration: const BoxDecoration(color: Colors.black),
                      margin: EdgeInsets.all(15.0),
                      // padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:Colors.teal[600],
                      ),

                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal[600],// background
                          onPrimary: Colors.black, // foreground
                          padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => BecomeMasterStepNext()),
                          // );
                        },
                        child: const Text(
                          '+ ADD SOCIAL MEDIA HANDLE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,

                          ),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(35, 10, 45, 05),
                      child: Text(
                        "CHOOSE PLATFORM",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,

                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                      child:  Container(
                        height: 45.0,
                        // width:200,
                        padding: const EdgeInsets.fromLTRB(10, 10, 10, 05),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          //shape: BoxShape.circle,
                        ),
                        child: DropdownButton<String>(
                          value: dropdownValueplatform,
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
                              dropdownValueplatform = newValue;
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(35, 10, 45, 05),
                      child: Text(
                        "PASTE PROFILE URL / LINK",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.black,

                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.fromLTRB(30, 05, 30, 05),
                    //  padding: const EdgeInsets.all(10),

                    child: TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        // borderRadius: BorderRadius.circular(10.0),
                        //fillColor: Colors.white,
                        fillColor: Colors.white, filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(12.0)),
                            borderSide: BorderSide(color: Colors.black45)),
                        hintText: 'Paste profile url/ link',
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 55,
                      padding: const EdgeInsets.fromLTRB(0, 10, 40, 0),
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(

                          borderRadius: BorderRadius.all(Radius.circular(20.0)),
                        ),
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black54, // background
                          onPrimary: Colors.white, // foreground
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
                        ),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => BecomeMasterStepNext()),
                          // );
                        },
                        child: const Text(
                          'Save',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 260,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Theme(
                        child:Checkbox(
                          checkColor: Colors.white,
                          // fillColor: MaterialStateProperty.resolveWith(getColor),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        data: ThemeData(
                          primarySwatch: Colors.blue,
                          unselectedWidgetColor: Colors.blue, // Your color
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(0, 10, 45, 10),
                          child: Text(
                            "Yes, I Agree to all Terms & Conditions", style: TextStyle(
                            fontSize: 12,
                            color: Colors.blue,
                            //fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ),
                      // Switch(
                      //   value: isSwitched,
                      //   activeColor: Colors.blue,
                      //   onChanged: (value) {
                      //     print("VALUE : $value");
                      //     setState(() {
                      //       isSwitched = value;
                      //     });
                      //   },
                      // ),


                    ],
                  ),

                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      //decoration: const BoxDecoration(color: Colors.black),
                      margin: EdgeInsets.all(0.0),
                      // padding: EdgeInsets.all(12.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        // color:Colors.white,
                      ),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.black, // background
                          onPrimary: Colors.white, // foreground
                          padding: const EdgeInsets.fromLTRB(50, 20, 50, 20),
                          shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Master()),
                          );
                        },
                        child: const Text(
                          'SUBMIT (2/2)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),

                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(25, 5, 45, 10),
                      child: Text(
                        "Send Profile For Verification", style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                        //fontWeight: FontWeight.bold,
                      ),
                      ),
                    ),
                  ),

                ],
              ),
            ],
          )),
    );
  }
}