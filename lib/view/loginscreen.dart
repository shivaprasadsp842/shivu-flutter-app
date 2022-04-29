
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:furniture_ui/network/http_helper.dart';
import 'package:furniture_ui/utility/helper.dart';
import 'package:furniture_ui/view/homescreen.dart';

import 'otp_screen.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
 // bool _obscuredText = true;
  bool _isObscure = true;

  // void _toggle() {
  //   setState(() {
  //     _obscuredText = !_obscuredText;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(335.0), // here the desired height
          child:  AppBar(
            leading: InkWell(
              onTap: () {
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) =>  LoginView()),
                // );
              },

              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(''),
            //Text('How it works?'),
            flexibleSpace: Container(
              color: Colors.black,
              padding: const EdgeInsets.all(0),
             height: 370,
             child: Column(
                children: [
                  Image(
                    image: new AssetImage("assets/undraw_vr_chat_re_s80u 1 (1).png"),
                    height: 250,
               //   width: double.infinity,
                   fit: BoxFit.cover,
                  ),

                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.fromLTRB(35, 20, 35,0),
                      child: const Text(
                        'Directly Contact Youtubers, Founders & Experts Online/Offline', style: TextStyle(fontSize: 20, color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                      ),

            Icon(Icons.more_horiz, color: Colors.white, size: 23,),

               ],
              ),

            ),
            //centerTitle: true,

          ),
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 10),
              child: ListView(
                children: <Widget>[
                  // Container(
                  //     child: new Image(
                  //   image: new AssetImage("assets/otp.png"),
                  //   width: double.infinity,
                  //   height: 300,
                  //   color: null,
                  //   fit: BoxFit.scaleDown,
                  //   alignment: Alignment.center,
                  // )),

                  Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      child: const Text(
                        'Login or Signup',
                        style: TextStyle(fontFamily: "Roboto",
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),

                    child: Row(
                      children: [

                        Container(
                          height: 55,
                          width: 65,
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xD6D6D6D6)),
                            borderRadius: BorderRadius.circular(10),

                          ),
                          margin: const EdgeInsets.fromLTRB(5, 5, 0, 25),
                          padding: const EdgeInsets.fromLTRB(10, 15, 0, 15),

                          child: Row(
                              children: [


                          Image(
                            image: new AssetImage("assets/india.jpg"),
                            height: 26,
                            width: 25,
                            fit: BoxFit.cover,
                          ),
                                SizedBox(width: 3,),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.black,
                                  size: 23,
                                ),
                                // Image(
                                //   image: new AssetImage("assets/india.jpg"),
                                //   height: 5,
                                //   width: 5,
                                //   fit: BoxFit.cover,
                                // ),
                          ]
                          )

                        ),


              Container(
                padding: const EdgeInsets.fromLTRB(5, 3, 5, 22),
                width: 240,

               height: 80,
                child:  TextField(
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide: const BorderSide(color:Color(0xD6D6D6D6), width: 1.0),
                              ),
                              prefixIcon: Container(
                                padding: const EdgeInsets.fromLTRB(10, 10, 10, 8),
                                child: Text(
                                  '+91',
                                  style: TextStyle(fontFamily: "Roboto",
                                    fontSize: 20,
                                    color: Colors.black,

                                  ),
                                ),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                                borderSide: BorderSide(color: Color(0xD6D6D6D6) ),
                              ),
                              fillColor: Colors.white,
                              filled: true,



                              hintText: 'Enter Phone Number',
                              hintStyle: TextStyle(color: Color(0xB7B7B7B7), fontSize: 15),
                              counterText: ""
                          ),
                  style: TextStyle(fontSize: 20),
                          keyboardType: TextInputType.number,
                          maxLength: 10,
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ], // Only numbers can be entered
                        ),
                        ),
                      ],
                    )




                  ),

                  Container(
                    height: 60,
                    width: 100.0,
                    //color: Colors.black,
                    padding: const EdgeInsets.fromLTRB(1, 05, 0, 05),
                    child:
                        // An enabled button
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Colors.black, // background
                            onPrimary: Colors.black, // foreground
                          ),
                          child: const Text(
                            'Continue',
                            style: TextStyle(
                              fontFamily: "Inter",
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        //  onPressed: getData,

                          onPressed: (){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Otp()),
                            );
                          },
                        ),

                  ),
                SizedBox(height: 100,),
                // Center(
                // child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: <Widget>[
                //
                //        Text('Trouble in Sigining up', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                //        Text('By continuing, you agree to our Terms', style: TextStyle(fontSize: 15,color: Color(0x89898989),)),
                //        Text(' of Service Privacy Policy Content Policy', style: TextStyle(fontSize: 15,color: Color(0x89898989),)),
                //
                //
                //
                //     ],
                //   ),
                //   ),

                ],
              )
          ),
        ),
      bottomSheet: Container(
        color: Colors.white54,
        height: 80.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 80,
              // color: Colors.green,
              child: Center(
                child: Column(
                  // mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisSize: MainAxisSize.min,
                  children: <Widget>[

                    const Text('Trouble in Sigining up', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                    const Text('By continuing, you agree to our', style: TextStyle(fontSize: 15,color: Colors.grey,)),
                    const Text('Terms of Service Privacy Policy Content Policy', style: TextStyle(fontSize: 15,color: Colors.grey,)),



                  ],
                ),
              ),
            )
          ],
        ),
        ),
      );

  }

  Future getData() async {
    HttpHelper helper = HttpHelper();
    await helper
        .login(nameController.text, passwordController.text)
        .then((value) => {
              if (1 == value)
                {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (BuildContext context) {
                    return HomeView();
                  }))
                }
              else
                {
                  showAlertDialog(
                      context, 'Login', "invalid username and password")
                }
            });
  }
}
