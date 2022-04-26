
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
        //backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(380.0), // here the desired height
          child:  AppBar(

            backgroundColor: Colors.white,
            elevation: 0,
            title: Text(''),
            //Text('How it works?'),
            flexibleSpace: Image(
              image: new AssetImage("assets/otp.png"),
              height: 380,
              fit: BoxFit.cover,
            ),
            //centerTitle: true,

          ),
        ),
        body: Container(
          child: Padding(
              padding: const EdgeInsets.fromLTRB(40, 0, 40, 10),
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
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                  Container(
                    padding: const EdgeInsets.fromLTRB(20, 05, 20, 00),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Colors.black,
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          borderSide: BorderSide(color: Colors.black26 ),
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        enabledBorder: OutlineInputBorder(
                        ),
                        hintText: 'Mobile Number',
                      ),
                      keyboardType: TextInputType.number,
                      maxLength: 10,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ], // Only numbers can be entered
                    ),
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
                              fontSize: 18,
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
                Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[

                       Text('Trouble in Sigining up', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
                       Text('By continuing, you agree to our Terms', style: TextStyle(fontSize: 15,color: Colors.grey,)),
                       Text(' of Service Privacy Policy Content Policy', style: TextStyle(fontSize: 15,color: Colors.grey,)),



                    ],
                  ),
                  ),

                ],
              )
          ),
        ),
      // bottomSheet: Container(
      //   color: Colors.white54,
      //   height: 80.0,
      //   child: Row(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       Container(
      //         height: 80,
      //         // color: Colors.green,
      //         child: Center(
      //           child: Column(
      //             // mainAxisAlignment: MainAxisAlignment.center,
      //             // mainAxisSize: MainAxisSize.min,
      //             children: <Widget>[
      //
      //               const Text('Trouble in Sigining up', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),
      //               const Text('By continuing, you agree to our', style: TextStyle(fontSize: 15,color: Colors.grey,)),
      //               const Text('Terms of Service Privacy Policy Content Policy', style: TextStyle(fontSize: 15,color: Colors.grey,)),
      //
      //
      //
      //             ],
      //           ),
      //         ),
      //       )
      //     ],
      //   ),
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
