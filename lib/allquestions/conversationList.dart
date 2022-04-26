import 'package:flutter/material.dart';
import 'package:furniture_ui/allquestions/qusetionDetailPage.dart';
import 'package:furniture_ui/allquestions/qusetionMessageModel.dart';



class QuestionConversationList extends StatefulWidget {
  String name;
  String messageText;
  String imageUrl;
  String time;
  bool isMessageRead;
  QuestionConversationList(
      {required this.name,
        required this.messageText,
        required this.imageUrl,
        required this.time,
        required this.isMessageRead});
  @override
  _QuestionConversationListState createState() => _QuestionConversationListState();
}

class _QuestionConversationListState extends State<QuestionConversationList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return QuestionDetailPage();
        }));
      },
      child: Container(
        padding: EdgeInsets.only(left: 0, right: 0, top: 0, bottom: 0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                width: 300,
                height: 80,
                child: Card(
                  margin: new EdgeInsets.all(01.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(05.0),
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 16,
                      ),
                      // CircleAvatar(
                      //   radius:30,
                      //   backgroundColor: Colors.transparent,
                      //   child: Padding(
                      //     padding: const EdgeInsets.all(0), // Border radius
                      //     child: ClipOval(
                      //         child: Image(
                      //           image: new AssetImage(widget.imageUrl),
                      //           width: 30,
                      //           height: 30,
                      //           color: null,
                      //           //fit: BoxFit.scaleDown,
                      //           alignment: Alignment.center,
                      //         )),
                      //   ),
                      // ),
                      CircleAvatar(
                        // need to be network image for real example for not change to
                        backgroundImage: AssetImage(widget.imageUrl),

                        maxRadius: 25,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                widget.name,
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text('Pending',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: widget.isMessageRead
                                        ? FontWeight.bold
                                        : FontWeight.normal),
                              ),
                              // Container(
                              //   child: Text(
                              //     'This is a Container',
                              //     textScaleFactor: 2,
                              //     style: TextStyle(color: Colors.black),
                              //   ),
                              //
                              //   decoration: BoxDecoration(
                              //      borderRadius: BorderRadius.circular(10),
                              //     color: Colors.white,
                              //     border: Border(
                              //       left: BorderSide(
                              //         color: Colors.green,
                              //         width: 3,
                              //       ),
                              //     ),
                              //   ), height: 10,
                              // ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 20, top: 15, bottom:0),
                            child: Text(
                              widget.time,
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: widget.isMessageRead
                                      ? FontWeight.bold
                                      : FontWeight.normal),
                            ),
                          ),

                          Padding(
                            padding: EdgeInsets.only(left: 10, right: 30, top: 10, bottom:0),
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              radius: 10,
                              child: Text(
                                '2',
                                style: TextStyle(fontSize: 10, color: Colors.white),
                              ), //Text
                            ),
                          ),
                        ],
                      ),





                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
