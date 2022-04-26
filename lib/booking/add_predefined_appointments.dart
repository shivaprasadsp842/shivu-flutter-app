import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:furniture_ui/booking/sample.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'all_booking_appointment.dart';
import 'all_predefined_appointments.dart';
import 'edit_book_appointment_price.dart';



class AddPredefinedViews extends StatelessWidget {
  AddPredefinedViews({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: _title,
      home:Scaffold(

      //  backgroundColor:  Color(0x2EAEABAB),
        //backgroundColor:  Colors.black12,
        appBar: AppBar(
            backgroundColor: Colors.white54,
            elevation: 0,
            title: IconButton(
              icon: Icon(Icons.arrow_back, color:Colors.black, size:20),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AllBookingAppointment()),
                );
              },
            ),
            //Text('How it works?'),
            // flexibleSpace: Image(
            //   image: AssetImage('assets/arjun.png'),
            //   height: 200,
            //   fit: BoxFit.cover,
            // ),
            //centerTitle: true,

          ),
        body: SingleChildScrollView(
          child: IntrinsicHeight(
            child: AddPredefinedCheckStatefulView(),
          ),
        ),

      ),
    );
  }
}
class AddPredefinedCheckStatefulView extends StatefulWidget {
  const AddPredefinedCheckStatefulView({Key? key}) : super(key: key);

  @override
  State<AddPredefinedCheckStatefulView> createState() => _AddPredefinedCheckStatefulViewState();
}

class _AddPredefinedCheckStatefulViewState extends State<AddPredefinedCheckStatefulView > {
  final TextEditingController _nameController = TextEditingController();

//  Price

  String? dropdownValuePrice = 'RUPEES - (Rs.)';
  List<String> dropdownItemsPrice = <String>[
    'RUPEES - (Rs.)',
    '300',
    '400',
    '500',
    "600",
    "700"
  ];

  PickedFile? imageFile=null;
  Future<void>_showChoiceDialog(BuildContext context)
  {
    return showDialog(context: context,builder: (BuildContext context){

      return AlertDialog(
        title: Text("Choose option",style: TextStyle(color: Colors.blue),),
        content: SingleChildScrollView(
          child: ListBody(
            children: [
              Divider(height: 1,color: Colors.blue,),
              ListTile(
                onTap: (){
                  _openGallery(context);
                },
                title: Text("Gallery"),
                leading: Icon(Icons.account_box,color: Colors.blue,),
              ),

              Divider(height: 1,color: Colors.blue,),
              ListTile(
                onTap: (){
                  _openCamera(context);
                },
                title: Text("Camera"),
                leading: Icon(Icons.camera,color: Colors.blue,),
              ),
            ],
          ),
        ),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return  SingleChildScrollView(
        child: IntrinsicHeight(
          child:  Padding(
            padding: const EdgeInsets.fromLTRB(020, 0, 20, 20),
            //color: Colors.red,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      child: Image(
                        image: new AssetImage("assets/gradient.png"),

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
                          'Pre-Defined Appointments',
                          style: TextStyle(color: Colors.white70,
                              fontWeight: FontWeight.bold,
                              fontSize: 15.0),
                        )),
                  ],
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(

                    padding: const EdgeInsets.fromLTRB(10, 10, 00, 10),
                    child: Text(
                      "Title", style: TextStyle(
                      fontSize: 15,
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
                            decoration: InputDecoration.collapsed(hintText: "PLEASE MENTION TITLE "),
                          ),
                        )
                    ),
                  ),
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,

                      child: Container(
                        padding: const EdgeInsets.fromLTRB(0, 10, 10, 15),
                        child:  Text("Add Cover Photo", style: TextStyle(fontSize: 15, color: Colors.black),),

                      ),
                    ),
                    // IconButton(
                    //   icon: Icon(Icons.add_circle_outlined, color:Colors.black, size:20),
                    //   onPressed: () {
                    //     Navigator.push(
                    //       context,
                    //       MaterialPageRoute(builder: (context) => CameraWidget()),
                    //     );
                    //   },
                    // ),

                  ],
                ),
                Center(
                  child: Container(
                      // height: 150,
                      // width:double.infinity,
                      // margin: EdgeInsets.all(10),
                      // padding: EdgeInsets.all(0),
                      // decoration: BoxDecoration(
                      //     borderRadius: BorderRadius.circular(10),
                      //     border: Border.all(width: 2, color: Colors.black26)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Card(
                          elevation: 0,

                          child:( imageFile==null)?Text(""): Image.file( File(  imageFile!.path)),
                        ),
                    Container(
                      //color: Colors.grey,
                      height: 100,
                      width:double.infinity,
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.black26)),
                      child:MaterialButton(
                          textColor: Colors.white,
                          color: Colors.white38,
                          onPressed: (){
                            _showChoiceDialog(context);
                          },
                          child: Icon(Icons.add,color: Colors.white,size: 50,),

                        ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Container(
                //   //color: Colors.grey,
                //   height: 150,
                //   //width:30,
                //   margin: EdgeInsets.all(10),
                //   padding: EdgeInsets.all(0),
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(10),
                //       border: Border.all(width: 2, color: Colors.black26)),
                //   child:FloatingActionButton(backgroundColor: Colors.white38,
                //
                //     shape: RoundedRectangleBorder(
                //         borderRadius: BorderRadius.all(Radius.circular(5.0))
                //     ),
                //
                //     onPressed: () {
                //       // Navigator.push(
                //       //   context,
                //       //   MaterialPageRoute(builder: (context) => BecomeMasterStep1()),
                //       // );
                //     },
                //     // Display the correct icon depending on the state of the player.
                //     // child: Icon(
                //     //   _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
                //     // ),
                //     child: Icon(Icons.add,color: Colors.white,size: 50,
                //     ),
                //   ),
                // ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(00, 10, 00, 05),
                    child: Text(
                      "Price", style: TextStyle(
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
                            value: dropdownValuePrice,
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
                                dropdownValuePrice = newValue;
                              });
                            },
                            items: dropdownItemsPrice.map<DropdownMenuItem<String>>((String value) {
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
                        padding: const EdgeInsets.fromLTRB(15, 10, 10, 10),
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
                              hintText: 'MENTION PRICE',
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

                    padding: const EdgeInsets.fromLTRB(0, 10, 00, 10),
                    child: Text(
                      "Special Details", style: TextStyle(
                      fontSize: 15,
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
                            decoration: InputDecoration.collapsed(hintText: "PLEASE MENTION DETAILS "),
                          ),
                        )
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
                            padding: const EdgeInsets.fromLTRB(40, 20, 40, 20),
                          ),
                          onPressed: () {

                            // Navigator.push(
                            //   context,
                            //
                            // MaterialPageRoute(builder: (context) => EditBookAppointmentPrice()),
                            // );
                          },
                          child: const Text('CREATE NEW',
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

  void _openGallery(BuildContext context) async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery ,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context)  async{
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera ,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
}

