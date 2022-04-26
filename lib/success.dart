import 'package:flutter/material.dart';
import 'package:furniture_ui/view/homescreen.dart';

class SuccessFull extends StatelessWidget {
  const SuccessFull({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
   //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 500),
        appBar: AppBar(
          backgroundColor: Colors.white,
        elevation: 0,
          leading: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  HomeView()),
              );
            },

            child: Icon(
              Icons.home,
              color: Colors.black, size:30
            ),
          ),
          //iconTheme: IconThemeData(color: Colors.black),
     title: new Text('Home', style: TextStyle(fontSize: 20, color: Colors.black), textAlign: TextAlign.start),


    ),
        backgroundColor: Colors.white,
        body: Column(children: <Widget>[
          SizedBox(
            height: 40,
          ),
          CircleAvatar(radius: (52),
              backgroundColor: Colors.tealAccent,
              child: ClipRRect(
                borderRadius:BorderRadius.circular(70),
                  child: Image.asset(
                    "assets/img_5.png",
                    height: 100,
                  ),
              )
          ),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Image.asset(
          //     "assets/img_4.png",
          //     height: 100,
          //   ),
          // ),
          SizedBox(
            height: 10,
          ),
    Container(

    child: Padding(
    padding: EdgeInsets.all(10.0),
        child:  Expanded(
            child: Text('We’ve received your request and are getting started on it right away.You will receive an email when your Question is accepted & Answered',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
                textAlign: TextAlign.center),
          ),
          ),
          ),
          Divider(
            color: Colors.black26,
            height: 15,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.fromLTRB(45, 10, 45, 05),
              child: Text(
                "Order Receipt", style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start
            ,
            children:  <Widget>[
              Expanded(
                child: Text('Date       : ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.end),
              ),
              Expanded(
                child: Text(' 26th Jan, 2021',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.start),
              ),
              Expanded(
                child: Text('', textAlign: TextAlign.start),
              ),
            ],
          ),
          Row(
            children:  <Widget>[
              Expanded(
                child: Text('Order ID : ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.end),
              ),
              Expanded(
                child: Text(' GG763JE6',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.start),
              ),
              Expanded(
                child: Text('', textAlign: TextAlign.start),
              ),
            ],
          ),

          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              padding: const EdgeInsets.fromLTRB(45, 10, 45, 05),
              child: Text(
                "Billed To", style: TextStyle(
                fontSize: 15,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
          ),
          Row(
            children:  <Widget>[
              Expanded(
                child: Text('Customer Number : ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.end),
              ),
              Expanded(
                child: Text(' HD7637DGE',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.start),
              ),
              // Expanded(
              //   child: Text('', textAlign: TextAlign.start),
              // ),
            ],
          ),
          Row(
            children:  <Widget>[
              Expanded(
                child: Text('Customer Name    : ',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.end),
              ),
              Expanded(
                child: Text(' Arjun Chaithanya',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black45,
                      fontWeight: FontWeight.bold,
                    ),textAlign: TextAlign.start),
              ),
              // Expanded(
              //   child: Text('', textAlign: TextAlign.start),
              // ),
            ],
          ),
          Container(

            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 10, 5, 0),
              child:  Expanded(
                child: Text('PLEASE CHECK YOUR CALENDER FOR APPOINTMENT SCHEDULES UPDATES',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.center),
              ),
            ),
          ),


          Divider(
            color: Colors.black38,
            height: 15,
            thickness: 2,
            indent: 10,
            endIndent: 10,
          ),

          Container(

            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 0, 5, 5),
              child:  Expanded(
                child: Text('You will get full refund if request is not completed in 7days',
                    style: TextStyle(
                      fontSize: 9,
                      fontWeight: FontWeight.bold,
                      color: Colors.black45,
                    ),
                    textAlign: TextAlign.center),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: const <Widget>[
              Expanded(
                child: Text('TOTAL',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('Rs. 2000',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                    textAlign: TextAlign.center),
              ),

            ],
          ),

          Container(

            child: Padding(
              padding: EdgeInsets.fromLTRB(5, 15, 5, 10),
              child:  Expanded(
                child: Text('CONGRALUTAIONS',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                    ),
                    textAlign: TextAlign.center),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/barcode.png",
              height: 95,

            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: const <Widget>[
              Expanded(
                child: Text('TRACK YOUR REQUEST',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ),textAlign: TextAlign.center),
              ),
              Expanded(
                child: Text('DOWNLOAD FULL RECIEPT',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ),
                    textAlign: TextAlign.center),
              ),

            ],
          ),


      ],
        ),

    );

  }
}

// class SuccessFull extends StatelessWidget {
//   const SuccessFull({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return   Padding(
//       padding: const EdgeInsets.fromLTRB(0, 0, 0, 500),
//       child: ClipPath(
//         child: Container(
//           width: MediaQuery.of(context).size.width,
//           color: Colors.tealAccent,
//         ),
//         clipper: CustomClipPath(),
//       ),
//     );
//
//   }
// }
//
// class CustomClipPath extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path = Path();
//     path.lineTo(0, size.height);
//     var curXPos = 0.0;
//     var curYPos = size.height;
//     var increment = size.width / 40;
//     while (curXPos < size.width) {
//       curXPos += increment;
//       curYPos = curYPos == size.height ? size.height - 25 : size.height;
//       path.lineTo(curXPos, curYPos);
//     }
//     path.lineTo(size.width, 0);
//
//
//
//     return path;
//   }
//
//   @override
//   bool shouldReclip(CustomClipper<Path> oldClipper) => false;
//
//
//
//
//}