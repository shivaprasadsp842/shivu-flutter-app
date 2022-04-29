

import 'package:flutter/material.dart';
import 'package:furniture_ui/view/homescreen.dart';
import 'package:furniture_ui/view/master.dart';

import 'edit_question.dart';


class DefineLeaveQuestion extends StatefulWidget {
  const DefineLeaveQuestion({Key? key}) : super(key: key);

  @override
  State<DefineLeaveQuestion> createState() => _DefineLeaveQuestionState();
}

class _DefineLeaveQuestionState extends State<DefineLeaveQuestion> {
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

   TextEditingController startDateController = TextEditingController();
   TextEditingController endDateController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is removed
    startDateController.dispose();
    endDateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       //title: _title,
       home:Scaffold(
       backgroundColor: Color(0xeeeeeeee),
         appBar: AppBar(
           leading: InkWell(
             onTap: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) =>  EditLeaveQuestion()),
               );
             },

             child: Icon(
               Icons.arrow_back_ios,
               color: Colors.grey,
             ),
           ),
           title: const Text('Define Your Leave A Question'),
           flexibleSpace: Image(
             image: AssetImage('assets/gradient.png'),
             height: 100,
             fit: BoxFit.cover,
           ),
           centerTitle: true,
         ),
     //     appBar: AppBar(
     //     title: const Text('Define Your Leave A Question'),
     //       flexibleSpace: Image(
     //         image: AssetImage('assets/gradient.png'),
     //         fit: BoxFit.cover,
     //       ),
     //       centerTitle: true,
     // ),
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


   @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child:  Column(children: <Widget>[

      Align(
        alignment: Alignment.centerLeft,
        child: Container(
          padding: const EdgeInsets.fromLTRB(30, 0, 45, 05),
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
            height: 40.0,
            width:200,
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
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
                height: 3,
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
          SizedBox(width: 18.0,),
          new Flexible(
            child: Container(
              padding: const EdgeInsets.fromLTRB(15, 0, 5, 05),
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
                      borderSide: BorderSide(color: Colors.grey)),
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
              padding: const EdgeInsets.fromLTRB(20, 0, 00, 0),
              child:  Container(
                height: 32.0,
                width:200,
                padding: const EdgeInsets.fromLTRB(10, 0, 00, 0),
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
                    color: Colors.transparent,
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
            padding: const EdgeInsets.fromLTRB(45, 05, 45, 0),
            child: Text(
              "Eg:- Rs. 50/min", style: TextStyle(
              fontSize: 12,
              color: Colors.grey,
              //fontWeight: FontWeight.bold,
            ),
            ),
          ),
        ),




    SizedBox(height: 100,),


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
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10.0,),
          new Flexible(
            child: new Text('Your OFFER %', style: TextStyle(),

            ),
          ),
          SizedBox(width: 15.0,),
          new Flexible(
            child: new Text('Your Final OFFER Price ', style: TextStyle(),

            ),
          ),
          SizedBox(width: 0.0,),

        ],
      ),

        SizedBox(height: 5,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          SizedBox(width: 10.0,),
          new Flexible(
            child: new  Container(
              padding: const EdgeInsets.fromLTRB(25, 0, 10, 05),
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
              padding: const EdgeInsets.fromLTRB(0, 0, 45, 05),
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
      SizedBox(height: 10,),
      Row(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 010, 0),
              child:  Container(
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                height: 35.0,
                width:150,
                decoration: BoxDecoration(
                  //border: Border.all(color: Colors.red, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,

                  //shape: BoxShape.circle,
                ),
                child:TextField(
                  // readOnly: true,
                  controller: startDateController,
                  decoration: InputDecoration(
                    hintText: 'CHOOSE DATE', hintStyle: TextStyle(fontSize: 15,),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 0.0),

                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1,color: Colors.transparent),
                    ),
                  ),
                  style: const TextStyle(color: Colors.black54),

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
                padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
                height: 35.0,
                width:150,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12, width: 1),
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white,

                  //shape: BoxShape.circle,
                ),
                child:TextField(
                  // readOnly: true,
                  controller: endDateController,
                  decoration: InputDecoration(
                    hintText: 'CHOOSE DATE', hintStyle: TextStyle(fontSize: 15,),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white, width: 0.0),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(4)),
                      borderSide: BorderSide(width: 1,color: Colors.transparent),
                    ),
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
    padding: const EdgeInsets.fromLTRB(100, 20, 100, 20),
      shape: new RoundedRectangleBorder(
        borderRadius: new BorderRadius.circular(10.0),
      ),
    ),
    onPressed: () {

    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Master()),
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
    ),
    ),
    );

  }
}