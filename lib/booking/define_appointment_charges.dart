import 'package:flutter/material.dart';

import 'add_predefined_appointments.dart';
import 'direct_book_appointment.dart';

class DefineAppointmentCharges extends StatelessWidget {
  DefineAppointmentCharges({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(
       // backgroundColor: Colors.black12,
        appBar: AppBar(
          title: const Text('Define Your Appointment Charges'),
          flexibleSpace: Image(
            image: AssetImage('assets/gradient.png'),
            height: 100,
            fit: BoxFit.cover,
          ),
          centerTitle: true,
        ),
        body:const Center(
          child: MyStatefulWidget(),
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
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _offerController = TextEditingController();
  final TextEditingController _finalofferController = TextEditingController();
// currency
  String? dropdownValue = 'RUPEES - (Rs.)';
  List<String> dropdownItems = <String>[
    'RUPEES - (Rs.)',
    'Dollar',
    'etc',
    'Blue',
    "Pink",
    "Orange"
  ];
  // minute
  String dropdownValuemin = 'Month';


  // Custom Switch
  bool isSwitched = false;

  //Start Date picker
  DateTime startDate = DateTime.now();

  Future<void> _startDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: startDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != startDate) {
      setState(() {
        startDate = picked;
      });
    }
  }//
  //End Date picker
  DateTime endDate = DateTime.now();

  Future<void> _endDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: endDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != endDate) {
      setState(() {
        endDate = picked;
      });
    }
  }
 // startDateController

  final startDateController = TextEditingController();
  final endDateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    startDateController.dispose();
    endDateController.dispose();
    super.dispose();
  }


  // @override
  // void dispose() {
  //   // Clean up the controller when the widget is removed
  //
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[

      Card(
        color: Color(0xC4C4C4),
        child:   Row(
          crossAxisAlignment: CrossAxisAlignment.center,
mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Align(
              alignment: Alignment.centerLeft,

              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 10, 50, 15),
                child:  Text("Create New PD-Appointment", style: TextStyle( fontSize: 15, color: Colors.black),),

              ),
            ),
            IconButton(
              icon: Icon(Icons.add_circle_outlined, color:Colors.black, size:25),
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
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 10, 45, 05),
          child: Text(
            "Currency", style: TextStyle(
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
          padding: const EdgeInsets.fromLTRB(30, 0, 45, 0),
          child:  Container(
            height: 32.0,
            width:200,
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
              style: const TextStyle(color: Colors.black54),
              underline: Container(
                height: 2,
                color: Colors.white,
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


      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 10, 45, 05),
          child: Text(
            "General Price", style: TextStyle(
            fontSize: 12,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),


      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(width: 20.0,),
          new Flexible(
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 05, 5, 05),
              //  padding: const EdgeInsets.all(10),
              height: 40.0,
              //  width:350,
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
                      borderSide: BorderSide(color: Colors.black12)),
                  hintText: 'MENTION PRICE (50)',
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

          new Flexible(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(00, 0, 00, 0),
              child:  Container(
                height: 32.0,
                width:200,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //shape: BoxShape.circle,
                ),

                child: DropdownButton<String>(
                  value: dropdownValuemin,

                  icon: const Icon(Icons.arrow_drop_down),
                  elevation: 16,
                  style: const TextStyle(color: Colors.black54),
                  underline: Container(
                    height: 2,
                    color: Colors.white,
                  ),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownValuemin = newValue!;
                    });
                  },
                  items: <String>['Minute', 'Hour', 'Day', 'Month']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),



          SizedBox(width: 20,),

        ],
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 0, 45, 0),
          child: Text(
            "Eg:- Rs. 50/min", style: TextStyle(
            fontSize: 12,
            color: Colors.grey,
            //fontWeight: FontWeight.bold,
          ),
          ),
        ),
      ),




      SizedBox(height: 60,),

      Container(
        padding: const EdgeInsets.fromLTRB(100.0, 10, 100, 10),
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black12, width: 1),
          borderRadius: BorderRadius.circular(00),
          color: Colors.orange[50],),
        child:Text('ADVANCE SETTING',style: TextStyle( fontSize: 12,color: Colors.orangeAccent,), //Textstyle
        ),
      ),

      Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.fromLTRB(65, 10, 45, 10),
              child: Text(
                "Do you have any OFFER sale ?", style: TextStyle(
                fontSize: 12,
                color: Colors.black,
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
      SizedBox(height: 10,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10.0,),
          new Flexible(
            child: new Text('Your OFFER %', style: TextStyle(),

            ),
          ),
          SizedBox(width: 0.0,),
          new Flexible(
            child: new Text('Your Final OFFER Price ', style: TextStyle(),

            ),
          ),
          SizedBox(width: 0.0,),

        ],
      ),


      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10.0,),
          new Flexible(
            child: new  Container(
              padding: const EdgeInsets.fromLTRB(25, 05, 10, 05),
              //  padding: const EdgeInsets.all(10),
              height: 40.0,
              //width:350,
              child: TextField(
                controller: _offerController,
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
                      borderSide: BorderSide(color: Colors.black12)),
                  hintText: 'Eg. 60%',
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

          SizedBox(width: 20.0,),
          new Flexible(
            child: new  Container(
              padding: const EdgeInsets.fromLTRB(10, 05, 45, 05),
              //  padding: const EdgeInsets.all(10),
              height: 40.0,
              // width:350,
              child: TextField(
                controller: _finalofferController,
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
                      borderSide: BorderSide(color: Colors.black12)),
                  hintText: '',
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
        ],
      ),
      SizedBox(height: 10.0,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10.0,),
          new Flexible(
            child: new Text('Offer Start Date', style: TextStyle(),

            ),
          ),
          SizedBox(width: 20.0,),
          new Flexible(
            child: new Text('Offer End Date', style: TextStyle(),

            ),
          ),
          SizedBox(width: 50.0,),

        ],
      ),
      SizedBox(height: 15,),
      Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 010, 0),
              child:  Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 05),
                height: 32.0,
                width:150,
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //shape: BoxShape.circle,
                ),
                child:TextField(
                  // readOnly: true,
                  controller: startDateController,
                  decoration: InputDecoration(
                      hintText: 'CHOOSE DATE', hintStyle: TextStyle(fontSize: 15,),
                  ),
                  onTap: () async {
                    var date =  await showDatePicker(
                        context: context,
                        initialDate:DateTime.now(),
                        firstDate:DateTime(1900),
                        lastDate: DateTime(2100));
                    startDateController.text = date.toString().substring(0,10);
                  },
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child:  Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child:  Container(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 05),
                height: 32.0,
                width:150,
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,
                  //shape: BoxShape.circle,
                ),
                child:TextField(
                  // readOnly: true,
                  controller: endDateController,
                  decoration: InputDecoration(
                      hintText: 'CHOOSE DATE', hintStyle: TextStyle(fontSize: 15,),
                  ),
                  onTap: () async {
                    var date =  await showDatePicker(
                        context: context,
                        initialDate:DateTime.now(),
                        firstDate:DateTime(1900),
                        lastDate: DateTime(2100));
                    endDateController.text = date.toString().substring(0,10);
                  },
                ),
              ),
            ),
          ),
        ],
      ),

      SizedBox(height: 20,),

      // SizedBox(height: 10.0,),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //   children: <Widget>[
      //     SizedBox(width: 50.0,),
      //
      //
      //     SizedBox(width: 50.0,),
      //     Column(
      //       children:<Widget>
      //       [ SizedBox(width: 100.0,),
      //         ElevatedButton(
      //           style: ElevatedButton.styleFrom(
      //               primary: Colors.white, // background
      //               onPrimary: Colors.black54,
      //               padding: EdgeInsets.symmetric(horizontal: 50, vertical: 20),
      //               textStyle: TextStyle(
      //                   fontSize: 12,
      //                   fontWeight: FontWeight.bold)),
      //           onPressed: () => _endDate(context),
      //           child: Text('CHOOSE DATE'),
      //         ),
      //         SizedBox(height: 10.0,),
      //         Text("${endDate.toLocal()}".split(' ')[0], style: TextStyle(color:Colors.black),),
      //       ],
      //     ),
      //
      //     SizedBox(width: 20.0,),
      //
      //
      //   ],
      // ),






      SizedBox(height: 30.0,),



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
              padding: const EdgeInsets.fromLTRB(80, 10, 80, 10),
            ),
            onPressed: () {

              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => DirectBookAppointment()),
              );
            },
            child: const Text('SAVE DETAILS',
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