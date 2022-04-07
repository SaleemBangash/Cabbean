// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:passenger/screens/dashboard.dart';
import 'package:passenger/screens/destination.dart';
import 'package:passenger/screens/registration_screen.dart';

import '../main.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';
import 'reg_otp.dart';

class AddComent extends StatefulWidget {
  const AddComent({Key? key}) : super(key: key);

  @override
  _AddComentState createState() => _AddComentState();
}

class _AddComentState extends State<AddComent> {
  int charLength = 0;

  _onChanged(String value) {
    setState(() {
      charLength = value.length;
    });
  }

  final textController = TextEditingController();

  bool isChecked = false;
  bool onChecked = false;
  bool ifChecked = false;
  bool _isEnable = false;
  var iChecked;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Colors.grey,
        body: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/map.png"),
          fit: BoxFit.cover,
        ))),
        Positioned(
          top: 40,
          child: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              }
              //onPressed: () => Navigator.of(context).pop(),
              ),
        ),
        Positioned(
            bottom: sizeConfig!.height(0.029),
            left: sizeConfig!.width(0.10),
            child: SizedBox(
              width: sizeConfig!.width(0.82),
              height: 50,
              child: MySecondButton(
                onTap: () => _settingModalBottomSheet(context),
                title: "Comment",
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(25.0),
              ),
            ))
      ],
    ));
  }

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Color(0xff252527),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        context: context,
        builder: (BuildContext bc) {
          return Container(
            height: 700,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15.0)),
                  height: 180,
                  width: 330,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () => setState(() {
                          _isEnable = true;
                        }),
                        child: SizedBox(
                          height: 140,
                          width: 300,
                          child: MyTextField(
                            controller: textController,
                            // enabled: false,
                            onChanged: _onChanged,
                            focusedBorder: InputBorder.none,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            disabledBorder: InputBorder.none,
                            // suffixIcon: Align(
                            //     alignment: Alignment.bottomRight,
                            //     child: Icon(Icons.home)),
                            hintText: "Add Comments",
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(15.0),
                                    topRight: Radius.circular(15.0))),
                            filled: true,
                            // maxLength: 1000,
                            maxLines: 7,
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 20, horizontal: 10),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text("$charLength/1000",
                                      style: TextStyle(fontSize: 15))),
                              Text("Done",
                                  style: TextStyle(
                                      color: Theme.of(context).primaryColor))
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // TextFormField(inputFormatters: [
                //   LengthLimitingTextInputFormatter(10),
                // ])
              ],
            ),
          );
        });
  }

  // _dialogue() {
  //   Dialog(
  //     alignment: Alignment.center,
  //     shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.only(
  //       topLeft: Radius.circular(30.0),
  //       topRight: Radius.circular(30.0),
  //       bottomRight: Radius.circular(30.0),
  //       bottomLeft: Radius.circular(30.0),
  //     )),
  //     child: SizedBox(
  //       height: 200,
  //       child: ClipRRect(
  //         borderRadius: BorderRadius.only(
  //           topLeft: Radius.circular(30),
  //           topRight: Radius.circular(30),
  //           bottomRight: Radius.circular(30.0),
  //           bottomLeft: Radius.circular(30.0),
  //         ),
  //         child: Scaffold(
  //           // appBar: AppBar(
  //           //   shape: RoundedRectangleBorder(
  //           //       borderRadius: BorderRadius.only(
  //           //           topLeft: Radius.circular(10.0),
  //           //           topRight: Radius.circular(10.0))),
  //           //   automaticallyImplyLeading: false,
  //           //   centerTitle: false,
  //           //   title: Text(
  //           //     "ExitApp?",
  //           //     style: TextStyle(color: Colors.white),
  //           //   ),
  //           //   backgroundColor: Theme.of(context).primaryColor,
  //           // ),
  //           body: ClipRRect(
  //             borderRadius: BorderRadius.only(
  //                 topLeft: Radius.circular(50), topRight: Radius.circular(50)),
  //             child: Container(
  //               decoration: BoxDecoration(
  //                   // color: Colors.grey,

  //                   ),
  //               height: 200,
  //               //width: width / 3,
  //               child: Padding(
  //                 padding: const EdgeInsets.all(12.0),
  //                 child: Column(
  //                   mainAxisAlignment: MainAxisAlignment.center,
  //                   crossAxisAlignment: CrossAxisAlignment.center,
  //                   children: [
  //                     // Container(
  //                     //   width: 600,
  //                     //   height: 70,
  //                     //   decoration:
  //                     //       BoxDecoration(color: Theme.of(context).primaryColor),
  //                     //   child: Row(
  //                     //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                     //     children: [
  //                     //       Padding(
  //                     //         padding: const EdgeInsets.only(left: 40),
  //                     //         child: Text(
  //                     //           "Change Language",
  //                     //           style: TextStyle(
  //                     //               fontSize: 20, fontWeight: FontWeight.bold),
  //                     //         ),
  //                     //       ),
  //                     //       IconButton(
  //                     //         icon: Icon(
  //                     //           Icons.close,
  //                     //         ),
  //                     //         iconSize: 30,
  //                     //         color: Colors.black,
  //                     //         splashColor: Colors.purple,
  //                     //         onPressed: () => Navigator.push(
  //                     //             context,
  //                     //             MaterialPageRoute(
  //                     //                 builder: (context) => LoginScreen())),
  //                     //       ),
  //                     //     ],
  //                     //   ),
  //                     // ),
  //                     Text("Do you want to hide your profile?"),
  //                     SizedBox(
  //                       height: 20,
  //                     ),

  //                     Padding(
  //                       padding: const EdgeInsets.only(right: 30),
  //                       child: Row(
  //                         mainAxisAlignment: MainAxisAlignment.end,
  //                         children: [
  //                           GestureDetector(
  //                             onTap: (() {
  //                               Navigator.push(
  //                                   context,
  //                                   MaterialPageRoute(
  //                                       builder: (context) => Registration()));
  //                             }),
  //                             child: Padding(
  //                               padding: const EdgeInsets.only(left: 20),
  //                               child: Container(
  //                                   decoration: BoxDecoration(
  //                                       color: Colors.grey,
  //                                       borderRadius:
  //                                           BorderRadius.circular(10.0)),
  //                                   // width: 200,
  //                                   // height: 40,
  //                                   width: sizeConfig!.width(0.2),
  //                                   height: sizeConfig!.height(0.04),
  //                                   child: Center(
  //                                       child: Text(
  //                                     "Yes",
  //                                     style: TextStyle(
  //                                         fontWeight: FontWeight.bold,
  //                                         color: Colors.white),
  //                                   ))),
  //                             ),
  //                           ),
  //                           SizedBox(
  //                             width: 10,
  //                           ),
  //                           Container(
  //                               width: sizeConfig!.width(0.2),
  //                               height: sizeConfig!.height(0.04),
  //                               child: MySecondButton(
  //                                 borderRadius: BorderRadius.circular(10),
  //                                 title: ("No"),
  //                                 onTap: (() {
  //                                   Navigator.pop(
  //                                     context,
  //                                   );
  //                                 }),
  //                               )),
  //                         ],
  //                       ),
  //                     )
  //                   ],
  //                 ),
  //               ),
  //             ),
  //           ),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
