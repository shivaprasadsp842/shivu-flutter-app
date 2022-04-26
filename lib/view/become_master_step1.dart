import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../become_master.dart';
import 'become_master_step2.dart';

class BecomeMasterStep1 extends StatefulWidget {
  const BecomeMasterStep1({Key? key}) : super(key: key);

  @override
  State<BecomeMasterStep1> createState() => _BecomeMasterStep1State();
}

class _BecomeMasterStep1State extends State<BecomeMasterStep1> {
  final TextEditingController _nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0), // here the desired height
        child:  AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  UserView()),
              );
            },

            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.white54,
          elevation: 0,
          title: Text(''),
          //Text('How it works?'),
          flexibleSpace: Image(
            image: AssetImage('assets/ma.PNG'),
            height: 200,
            fit: BoxFit.cover,
          ),
          //centerTitle: true,

        ),
      ),
      body: SingleChildScrollView(
          child: Stack(children: <Widget>[
            // backgroundColor: Colors.white,
            Column(
              children: <Widget>[

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(45, 05, 45, 05),
                    child: Text(
                      "Full Name (As per Bank Passbook",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.fromLTRB(45, 05, 45, 05),
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
                      hintText: 'Enter Full Name',
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(45, 05, 45, 05),
                    child: Text(
                      "Email Verification",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Container(
                  padding: const EdgeInsets.fromLTRB(45, 05, 45, 05),
                  //  padding: const EdgeInsets.all(10),

                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    //textAlign: TextAlign.center,
                    // onChanged: (value) {
                    //   setState(() {
                    //     _email = value;
                    //     _emailOk = EmailValidator.validate(_email);
                    //   });
                    // },
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
                      hintText: 'yourname@example.com',
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(45, 05, 45, 05),
                    child: Text(
                      "An email will be sent to the verification, Click on the link to verify your authenticity.",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black45,
                      ),
                    ),
                  ),
                ),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(45, 10, 45, 05),
                    child: Text(
                      "Phone Verification",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(45, 05, 45, 05),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.black54),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      // enabledBorder: OutlineInputBorder(
                      // ),
                      hintText: '7986654332',
                    ),
                    keyboardType: TextInputType.number,
                    // inputFormatters: <TextInputFormatter>[
                    //   FilteringTextInputFormatter.digitsOnly
                    // ], // Only numbers can be entered
                  ),
                ),
                Container(
                  padding: const EdgeInsets.fromLTRB(45, 05, 45, 05),
                  child: TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                        borderSide: BorderSide(color: Colors.black45),
                      ),
                      fillColor: Colors.white,
                      filled: true,
                      // enabledBorder: OutlineInputBorder(
                      //
                      // ),
                      hintText: 'Enter OTP',
                    ),
                    keyboardType: TextInputType.number,
                    // inputFormatters: <TextInputFormatter>[
                    //   FilteringTextInputFormatter.digitsOnly
                    // ], // Only numbers can be entered
                  ),
                ),
                SizedBox(
                  height: 50,
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
                        padding: const EdgeInsets.fromLTRB(70, 15, 70, 15),
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(10.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BecomeMasterStep2()),
                        );
                      },
                      child: const Text(
                        'NEXT (1/2)',
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
                  height: 10,
                ),
              ],
            )
          ])),
      // bottomSheet: Container(
      //   padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
      //   color: Color(0xffffffff),
      //   height: 100.0,
      //   child: Row(
      //       mainAxisAlignment: MainAxisAlignment.center,
      //       children: <Widget>[
      //
      //
      //
      //       ]
      //   ),
      // ),


    );
  }


}