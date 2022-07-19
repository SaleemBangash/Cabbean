// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:passenger/screens/broadcast.dart';
import 'package:passenger/screens/click_help.dart';
import 'package:passenger/screens/dashboard.dart';
import 'package:passenger/screens/destination.dart';
import 'package:passenger/screens/reg_otp.dart';
import 'package:passenger/screens/set_destination.dart';
import 'package:passenger/widgets/app_bar.dart';

import '../main.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';
import 'payment_details.dart';
import 'rating.dart';

class AcceptOffer extends StatefulWidget {
  const AcceptOffer({Key? key}) : super(key: key);

  @override
  State<AcceptOffer> createState() => _AcceptOfferState();
}

class _AcceptOfferState extends State<AcceptOffer>
    with TickerProviderStateMixin {
  int _counter = 0;
  late AnimationController _controller;
  int levelClock = 240;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this,
        duration: Duration(
            seconds:
                levelClock) // gameData.levelClock is a user entered number elsewhere in the applciation
        );

    _controller.forward();
  }

  bool aChecked = false;
  bool bChecked = false;
  bool cChecked = false;
  bool dChecked = false;
  bool eChecked = false;
  bool fChecked = false;
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SetDestintion()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () => showDialog(
              barrierDismissible: true,
              // barrierColor: Theme.of(context).primaryColor,
              context: context,
              builder: (BuildContext context) {
                return Expanded(
                  child: AlertDialog(
                    shape: RoundedRectangleBorder(
                        borderRadius:
                            BorderRadius.circular(15.0)), //this right here,
                    backgroundColor: Color(0xff272525),
                    content: SizedBox(
                      height: 420,
                      width: 600,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Why do you want to Cancel the Ride?",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              StatefulBuilder(builder:
                                  (BuildContext context, StateSetter setState) {
                                return Checkbox(
                                  side: BorderSide(color: Colors.white),
                                  // checkColor:
                                  //     Colors.black,

                                  activeColor: Theme.of(context).primaryColor,
                                  // shape: RoundedRectangleBorder(
                                  //     borderRadius: BorderRadius.circular(20)),
                                  value: aChecked,
                                  onChanged: (bool? value) {
                                    setState(() {
                                      aChecked = value!;

                                      // aChecked = false;
                                      // cChecked = false;
                                      // dChecked = false;
                                      // eChecked = false;
                                    });
                                  },
                                );
                              }),

                              // SizedBox(width: 5),
                              Text(
                                "I want to change Locations.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    StatefulBuilder(builder:
                                        (BuildContext context,
                                            StateSetter setState) {
                                      return Checkbox(
                                        side: BorderSide(color: Colors.white),
                                        // checkColor:
                                        //     Colors.black,

                                        activeColor:
                                            Theme.of(context).primaryColor,
                                        // shape: RoundedRectangleBorder(
                                        //     borderRadius: BorderRadius.circular(20)),
                                        value: bChecked,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            bChecked = value!;

                                            // aChecked = false;
                                            // cChecked = false;
                                            // dChecked = false;
                                            // eChecked = false;
                                          });
                                        },
                                      );
                                    }),

                                    // SizedBox(width: 10),
                                    Text(
                                      " I don't want to Travel right now",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.only(),
                              child: Row(
                                children: [
                                  StatefulBuilder(builder:
                                      (BuildContext context,
                                          StateSetter setState) {
                                    return Checkbox(
                                      side: BorderSide(color: Colors.white),
                                      // checkColor:
                                      //     Colors.black,

                                      activeColor:
                                          Theme.of(context).primaryColor,
                                      // shape: RoundedRectangleBorder(
                                      //     borderRadius: BorderRadius.circular(20)),
                                      value: cChecked,
                                      onChanged: (bool? value) {
                                        setState(() {
                                          cChecked = value!;

                                          // aChecked = false;
                                          // cChecked = false;
                                          // dChecked = false;
                                          // eChecked = false;
                                        });
                                      },
                                    );
                                  }),

                                  // SizedBox(width: 10),
                                  Text(
                                    "I want to change Car Category",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Row(
                              children: [
                                StatefulBuilder(builder: (BuildContext context,
                                    StateSetter setState) {
                                  return Checkbox(
                                    side: BorderSide(color: Colors.white),
                                    // checkColor:
                                    //     Colors.black,

                                    activeColor: Theme.of(context).primaryColor,
                                    // shape: RoundedRectangleBorder(
                                    //     borderRadius: BorderRadius.circular(20)),
                                    value: dChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        dChecked = value!;

                                        // aChecked = false;
                                        // cChecked = false;
                                        // dChecked = false;
                                        // eChecked = false;
                                      });
                                    },
                                  );
                                }),

                                // SizedBox(width: 10),
                                Text(
                                  "No nearby Cabbeans.",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Row(
                              children: [
                                StatefulBuilder(builder: (BuildContext context,
                                    StateSetter setState) {
                                  return Checkbox(
                                    side: BorderSide(color: Colors.white),
                                    // checkColor:
                                    //     Colors.black,

                                    activeColor: Theme.of(context).primaryColor,
                                    // shape: RoundedRectangleBorder(
                                    //     borderRadius: BorderRadius.circular(20)),
                                    value: eChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        eChecked = value!;

                                        // aChecked = false;
                                        // cChecked = false;
                                        // dChecked = false;
                                        // eChecked = false;
                                      });
                                    },
                                  );
                                }),

                                // SizedBox(width: 10),
                                Text(
                                  "Cabbean did not come.",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(),
                            child: Row(
                              children: [
                                StatefulBuilder(builder: (BuildContext context,
                                    StateSetter setState) {
                                  return Checkbox(
                                    side: BorderSide(color: Colors.white),
                                    // checkColor:
                                    //     Colors.black,

                                    activeColor: Theme.of(context).primaryColor,
                                    // shape: RoundedRectangleBorder(
                                    //     borderRadius: BorderRadius.circular(20)),
                                    value: fChecked,
                                    onChanged: (bool? value) {
                                      setState(() {
                                        fChecked = value!;

                                        // aChecked = false;
                                        // cChecked = false;
                                        // dChecked = false;
                                        // eChecked = false;
                                      });
                                    },
                                  );
                                }),

                                // SizedBox(width: 10),
                                Text(
                                  "Cabbean asked me to Cancel",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 14),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Dashboard()));
                            },
                            child: Container(
                                height: 50,
                                width: sizeConfig!.width(0.82),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 2, color: Colors.white),
                                    borderRadius: BorderRadius.circular(5.0),
                                    color: Theme.of(context).primaryColor),
                                child: Center(
                                    child: Text("Cancel the Ride",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white)))),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            child: Center(
              child: Text(
                "Cancel",
                style: TextStyle(color: Theme.of(context).primaryColor),
              ),
            ),
          ),
        )
      ],
      data: Text(''),
      body: Scaffold(
        body: Stack(children: [
          Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
            image: AssetImage("assets/map.png"),
            fit: BoxFit.cover,
          ))),
          //

          Positioned(
            top: 120,
            left: 50,
            child: Text(
                "You have Accepted Ali's Offer\nHe will Arrive in 4 Minutes.\nPlease Get Ready",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold)),
          ),
          Positioned(
            top: 210,
            left: 180,
            child: Padding(
              padding: const EdgeInsets.symmetric(),
              child: Container(
                height: 20,
                width: 40,
                color: Colors.black,
                child: Center(
                  child: Countdown(
                    animation: StepTween(
                      begin: levelClock, // THIS IS A USER ENTERED NUMBER
                      end: 0,
                    ).animate(_controller),
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: sizeConfig!.height(0.31),
              // width: sizeConfig!.width(0.37),
              decoration: BoxDecoration(
                  color: Color(0xff272525),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Your ride is coming in 4 min",
                          textAlign: TextAlign.end,
                          style: TextStyle(fontSize: 18, color: Colors.white)),

                      // GestureDetector(
                      //   onTap: () => showDialog(
                      //     barrierDismissible: true,
                      //     // barrierColor: Theme.of(context).primaryColor,
                      //     context: context,
                      //     builder: (BuildContext context) {
                      //       return Expanded(
                      //         child: AlertDialog(
                      //           shape: RoundedRectangleBorder(
                      //               borderRadius: BorderRadius.circular(
                      //                   15.0)), //this right here,
                      //           backgroundColor: Color(0xff272525),
                      //           content: SizedBox(
                      //             height: 120,
                      //             child: Column(
                      //               children: [
                      //                 Align(
                      //                   alignment: Alignment.topRight,
                      //                   child: GestureDetector(
                      //                     onTap: () => Navigator.pop(context),
                      //                     child: Container(
                      //                         height: 20,
                      //                         width: 20,
                      //                         decoration: BoxDecoration(
                      //                             shape: BoxShape.circle,
                      //                             color: Colors.white),
                      //                         child: Center(
                      //                           child: Icon(
                      //                             Icons.close,
                      //                             size: 20,
                      //                             color: Theme.of(context)
                      //                                 .primaryColor,
                      //                           ),
                      //                         )),
                      //                   ),
                      //                 ),
                      //                 SizedBox(
                      //                   height: 20,
                      //                 ),
                      //                 GestureDetector(
                      //                   onTap: () => showDialog(
                      //                     barrierDismissible: true,
                      //                     // barrierColor: Theme.of(context).primaryColor,
                      //                     context: context,
                      //                     builder: (BuildContext context) {
                      //                       return Expanded(
                      //                         child: AlertDialog(
                      //                           shape: RoundedRectangleBorder(
                      //                               borderRadius:
                      //                                   BorderRadius.circular(
                      //                                       15.0)), //this right here,
                      //                           backgroundColor:
                      //                               Color(0xff272525),
                      //                           content: SizedBox(
                      //                             height: 420,
                      //                             width: 600,
                      //                             child: Column(
                      //                               mainAxisAlignment:
                      //                                   MainAxisAlignment
                      //                                       .center,
                      //                               crossAxisAlignment:
                      //                                   CrossAxisAlignment
                      //                                       .start,
                      //                               children: [
                      //                                 Text(
                      //                                     "Why do you want to Cancel the Ride?",
                      //                                     style: TextStyle(
                      //                                         fontSize: 14,
                      //                                         color: Colors
                      //                                             .white)),
                      //                                 SizedBox(
                      //                                   height: 10,
                      //                                 ),
                      //                                 Row(
                      //                                   mainAxisAlignment:
                      //                                       MainAxisAlignment
                      //                                           .start,
                      //                                   children: [
                      //                                     StatefulBuilder(builder:
                      //                                         (BuildContext
                      //                                                 context,
                      //                                             StateSetter
                      //                                                 setState) {
                      //                                       return Checkbox(
                      //                                         side: BorderSide(
                      //                                             color: Colors
                      //                                                 .white),
                      //                                         // checkColor:
                      //                                         //     Colors.black,

                      //                                         activeColor: Theme
                      //                                                 .of(context)
                      //                                             .primaryColor,
                      //                                         // shape: RoundedRectangleBorder(
                      //                                         //     borderRadius: BorderRadius.circular(20)),
                      //                                         value: aChecked,
                      //                                         onChanged: (bool?
                      //                                             value) {
                      //                                           setState(() {
                      //                                             aChecked =
                      //                                                 value!;

                      //                                             // aChecked = false;
                      //                                             // cChecked = false;
                      //                                             // dChecked = false;
                      //                                             // eChecked = false;
                      //                                           });
                      //                                         },
                      //                                       );
                      //                                     }),

                      //                                     // SizedBox(width: 5),
                      //                                     Text(
                      //                                       "I want to change Locations.",
                      //                                       style: TextStyle(
                      //                                           color: Colors
                      //                                               .white,
                      //                                           fontSize: 14),
                      //                                     ),
                      //                                   ],
                      //                                 ),
                      //                                 Column(
                      //                                   mainAxisAlignment:
                      //                                       MainAxisAlignment
                      //                                           .start,
                      //                                   crossAxisAlignment:
                      //                                       CrossAxisAlignment
                      //                                           .start,
                      //                                   children: [
                      //                                     Padding(
                      //                                       padding:
                      //                                           const EdgeInsets
                      //                                               .only(),
                      //                                       child: Row(
                      //                                         mainAxisAlignment:
                      //                                             MainAxisAlignment
                      //                                                 .start,
                      //                                         children: [
                      //                                           StatefulBuilder(builder:
                      //                                               (BuildContext
                      //                                                       context,
                      //                                                   StateSetter
                      //                                                       setState) {
                      //                                             return Checkbox(
                      //                                               side: BorderSide(
                      //                                                   color: Colors
                      //                                                       .white),
                      //                                               // checkColor:
                      //                                               //     Colors.black,

                      //                                               activeColor:
                      //                                                   Theme.of(context)
                      //                                                       .primaryColor,
                      //                                               // shape: RoundedRectangleBorder(
                      //                                               //     borderRadius: BorderRadius.circular(20)),
                      //                                               value:
                      //                                                   bChecked,
                      //                                               onChanged:
                      //                                                   (bool?
                      //                                                       value) {
                      //                                                 setState(
                      //                                                     () {
                      //                                                   bChecked =
                      //                                                       value!;

                      //                                                   // aChecked = false;
                      //                                                   // cChecked = false;
                      //                                                   // dChecked = false;
                      //                                                   // eChecked = false;
                      //                                                 });
                      //                                               },
                      //                                             );
                      //                                           }),

                      //                                           // SizedBox(width: 10),
                      //                                           Text(
                      //                                             " I don't want to Travel right now",
                      //                                             style: TextStyle(
                      //                                                 color: Colors
                      //                                                     .white,
                      //                                                 fontSize:
                      //                                                     13),
                      //                                           ),
                      //                                         ],
                      //                                       ),
                      //                                     ),
                      //                                   ],
                      //                                 ),
                      //                                 Align(
                      //                                   alignment: Alignment
                      //                                       .centerLeft,
                      //                                   child: Padding(
                      //                                     padding:
                      //                                         const EdgeInsets
                      //                                             .only(),
                      //                                     child: Row(
                      //                                       children: [
                      //                                         StatefulBuilder(builder:
                      //                                             (BuildContext
                      //                                                     context,
                      //                                                 StateSetter
                      //                                                     setState) {
                      //                                           return Checkbox(
                      //                                             side: BorderSide(
                      //                                                 color: Colors
                      //                                                     .white),
                      //                                             // checkColor:
                      //                                             //     Colors.black,

                      //                                             activeColor: Theme.of(
                      //                                                     context)
                      //                                                 .primaryColor,
                      //                                             // shape: RoundedRectangleBorder(
                      //                                             //     borderRadius: BorderRadius.circular(20)),
                      //                                             value:
                      //                                                 cChecked,
                      //                                             onChanged:
                      //                                                 (bool?
                      //                                                     value) {
                      //                                               setState(
                      //                                                   () {
                      //                                                 cChecked =
                      //                                                     value!;

                      //                                                 // aChecked = false;
                      //                                                 // cChecked = false;
                      //                                                 // dChecked = false;
                      //                                                 // eChecked = false;
                      //                                               });
                      //                                             },
                      //                                           );
                      //                                         }),

                      //                                         // SizedBox(width: 10),
                      //                                         Text(
                      //                                           "I want to change Car Category",
                      //                                           style: TextStyle(
                      //                                               color: Colors
                      //                                                   .white,
                      //                                               fontSize:
                      //                                                   13),
                      //                                         ),
                      //                                       ],
                      //                                     ),
                      //                                   ),
                      //                                 ),
                      //                                 Padding(
                      //                                   padding:
                      //                                       const EdgeInsets
                      //                                           .only(),
                      //                                   child: Row(
                      //                                     children: [
                      //                                       StatefulBuilder(builder:
                      //                                           (BuildContext
                      //                                                   context,
                      //                                               StateSetter
                      //                                                   setState) {
                      //                                         return Checkbox(
                      //                                           side: BorderSide(
                      //                                               color: Colors
                      //                                                   .white),
                      //                                           // checkColor:
                      //                                           //     Colors.black,

                      //                                           activeColor: Theme.of(
                      //                                                   context)
                      //                                               .primaryColor,
                      //                                           // shape: RoundedRectangleBorder(
                      //                                           //     borderRadius: BorderRadius.circular(20)),
                      //                                           value: dChecked,
                      //                                           onChanged:
                      //                                               (bool?
                      //                                                   value) {
                      //                                             setState(() {
                      //                                               dChecked =
                      //                                                   value!;

                      //                                               // aChecked = false;
                      //                                               // cChecked = false;
                      //                                               // dChecked = false;
                      //                                               // eChecked = false;
                      //                                             });
                      //                                           },
                      //                                         );
                      //                                       }),

                      //                                       // SizedBox(width: 10),
                      //                                       Text(
                      //                                         "No nearby Cabbeans.",
                      //                                         style: TextStyle(
                      //                                             color: Colors
                      //                                                 .white,
                      //                                             fontSize: 14),
                      //                                       ),
                      //                                     ],
                      //                                   ),
                      //                                 ),
                      //                                 Padding(
                      //                                   padding:
                      //                                       const EdgeInsets
                      //                                           .only(),
                      //                                   child: Row(
                      //                                     children: [
                      //                                       StatefulBuilder(builder:
                      //                                           (BuildContext
                      //                                                   context,
                      //                                               StateSetter
                      //                                                   setState) {
                      //                                         return Checkbox(
                      //                                           side: BorderSide(
                      //                                               color: Colors
                      //                                                   .white),
                      //                                           // checkColor:
                      //                                           //     Colors.black,

                      //                                           activeColor: Theme.of(
                      //                                                   context)
                      //                                               .primaryColor,
                      //                                           // shape: RoundedRectangleBorder(
                      //                                           //     borderRadius: BorderRadius.circular(20)),
                      //                                           value: eChecked,
                      //                                           onChanged:
                      //                                               (bool?
                      //                                                   value) {
                      //                                             setState(() {
                      //                                               eChecked =
                      //                                                   value!;

                      //                                               // aChecked = false;
                      //                                               // cChecked = false;
                      //                                               // dChecked = false;
                      //                                               // eChecked = false;
                      //                                             });
                      //                                           },
                      //                                         );
                      //                                       }),

                      //                                       // SizedBox(width: 10),
                      //                                       Text(
                      //                                         "Cabbean did not come.",
                      //                                         style: TextStyle(
                      //                                             color: Colors
                      //                                                 .white,
                      //                                             fontSize: 14),
                      //                                       ),
                      //                                     ],
                      //                                   ),
                      //                                 ),
                      //                                 Padding(
                      //                                   padding:
                      //                                       const EdgeInsets
                      //                                           .only(),
                      //                                   child: Row(
                      //                                     children: [
                      //                                       StatefulBuilder(builder:
                      //                                           (BuildContext
                      //                                                   context,
                      //                                               StateSetter
                      //                                                   setState) {
                      //                                         return Checkbox(
                      //                                           side: BorderSide(
                      //                                               color: Colors
                      //                                                   .white),
                      //                                           // checkColor:
                      //                                           //     Colors.black,

                      //                                           activeColor: Theme.of(
                      //                                                   context)
                      //                                               .primaryColor,
                      //                                           // shape: RoundedRectangleBorder(
                      //                                           //     borderRadius: BorderRadius.circular(20)),
                      //                                           value: fChecked,
                      //                                           onChanged:
                      //                                               (bool?
                      //                                                   value) {
                      //                                             setState(() {
                      //                                               fChecked =
                      //                                                   value!;

                      //                                               // aChecked = false;
                      //                                               // cChecked = false;
                      //                                               // dChecked = false;
                      //                                               // eChecked = false;
                      //                                             });
                      //                                           },
                      //                                         );
                      //                                       }),

                      //                                       // SizedBox(width: 10),
                      //                                       Text(
                      //                                         "Cabbean asked me to Cancel",
                      //                                         style: TextStyle(
                      //                                             color: Colors
                      //                                                 .white,
                      //                                             fontSize: 14),
                      //                                       ),
                      //                                     ],
                      //                                   ),
                      //                                 ),
                      //                                 SizedBox(
                      //                                   height: 10,
                      //                                 ),
                      //                                 GestureDetector(
                      //                                   onTap: () {
                      //                                     Navigator.push(
                      //                                         context,
                      //                                         MaterialPageRoute(
                      //                                             builder:
                      //                                                 (context) =>
                      //                                                     Dashboard()));
                      //                                   },
                      //                                   child: Container(
                      //                                       height: 50,
                      //                                       width: sizeConfig!
                      //                                           .width(0.82),
                      //                                       decoration: BoxDecoration(
                      //                                           border: Border.all(
                      //                                               width: 1,
                      //                                               color: Colors
                      //                                                   .white),
                      //                                           borderRadius:
                      //                                               BorderRadius.circular(
                      //                                                   25.0),
                      //                                           color: Theme.of(context)
                      //                                               .primaryColor),
                      //                                       child: Center(
                      //                                           child: Text(
                      //                                               "Cancel the Ride",
                      //                                               style: TextStyle(
                      //                                                   fontWeight:
                      //                                                       FontWeight.bold,
                      //                                                   color: Colors.white)))),
                      //                                 ),
                      //                               ],
                      //                             ),
                      //                           ),
                      //                         ),
                      //                       );
                      //                     },
                      //                   ),
                      //                   child: Container(
                      //                       height: 50,
                      //                       width: sizeConfig!.width(0.82),
                      //                       decoration: BoxDecoration(
                      //                           border: Border.all(
                      //                               width: 2,
                      //                               color: Colors.white),
                      //                           borderRadius:
                      //                               BorderRadius.circular(5.0),
                      //                           color: Theme.of(context)
                      //                               .primaryColor),
                      //                       child: Center(
                      //                           child: Text("Cancel the Ride",
                      //                               style: TextStyle(
                      //                                   fontSize: 20,
                      //                                   color: Colors.white)))),
                      //                 ),
                      //               ],
                      //             ),
                      //           ),
                      //         ),
                      //       );
                      //     },
                      //   ),
                      //   child: Text("Cance Ride",
                      //       textAlign: TextAlign.end,
                      //       style:
                      //           TextStyle(fontSize: 18, color: Colors.white)),
                      // ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/person.png"),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaymentDetails())),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Ali Ahmad",
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white)),
                                Row(
                                  children: [
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("4.7",
                                          style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset("assets/cabini_fil.png"),
                          Text("Toyota vitz MG1234",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                          Text("Prime",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white)),
                        ],
                      )
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentDetails()));
                        },
                        child: Container(
                          height: sizeConfig!.height(0.040),
                          width: sizeConfig!.width(0.35),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(5.0),
                              color: Theme.of(context).primaryColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.call, color: Colors.white),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text("Call",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => AcceptOffer()));
                        },
                        child: Container(
                          height: sizeConfig!.height(0.040),
                          width: sizeConfig!.width(0.35),
                          decoration: BoxDecoration(
                              border: Border.all(width: 2, color: Colors.white),
                              borderRadius: BorderRadius.circular(5.0),
                              color: Theme.of(context).primaryColor),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.whatsapp, color: Colors.white),
                              SizedBox(
                                width: 5.0,
                              ),
                              Text("Call",
                                  style: TextStyle(color: Colors.white))
                            ],
                          ),
                        ),
                      ),
                      SizedBox(width: 10)
                    ],
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
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
            height: sizeConfig!.height(0.31),
            // width: sizeConfig!.width(0.37),
            decoration: BoxDecoration(
                color: Color(0xff272525),
                borderRadius: BorderRadius.circular(15.0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text("Your ride is coming in 4 min",
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 18, color: Colors.white)),
                    GestureDetector(
                      onTap: () => showDialog(
                        barrierDismissible: true,
                        // barrierColor: Theme.of(context).primaryColor,
                        context: context,
                        builder: (BuildContext context) {
                          return Expanded(
                            child: AlertDialog(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(
                                      15.0)), //this right here,
                              backgroundColor: Color(0xff272525),
                              content: SizedBox(
                                height: 150,
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.topRight,
                                      child: GestureDetector(
                                        onTap: () => Navigator.pop(context),
                                        child: Container(
                                            height: 20,
                                            width: 20,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white),
                                            child: Center(
                                              child: Icon(
                                                Icons.close,
                                                size: 20,
                                                color: Theme.of(context)
                                                    .primaryColor,
                                              ),
                                            )),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: sizeConfig!.width(0.82),
                                      height: 50,
                                      child: MySecondButton(
                                        onTap: () =>
                                            _settingModalBottomSheet(context),
                                        title: "Driver Did not Come",
                                        border: Border.all(
                                            width: 1, color: Colors.white),
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Dashboard()));
                                      },
                                      child: Container(
                                          height: 50,
                                          width: sizeConfig!.width(0.82),
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 1,
                                                  color: Colors.white),
                                              borderRadius:
                                                  BorderRadius.circular(20.0),
                                              color: Colors.transparent),
                                          child: Center(
                                              child: Text("Cancel the Ride",
                                                  style: TextStyle(
                                                      color: Colors.white)))),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      child: Text("Cancel Ride",
                          textAlign: TextAlign.end,
                          style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/person.png"),
                        SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PaymentDetails())),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Ali Ahmad",
                                  textAlign: TextAlign.end,
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white)),
                              Row(
                                children: [
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 15,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Text("4.7",
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white)),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.asset("assets/cabini_fil.png"),
                        Text("Toyota vitz MG1234",
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                        Text("Prime",
                            style:
                                TextStyle(fontSize: 14, color: Colors.white)),
                      ],
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: sizeConfig!.height(0.040),
                      width: sizeConfig!.width(0.35),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(20.0),
                          color: Theme.of(context).primaryColor),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.call, color: Colors.white),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("Call", style: TextStyle(color: Colors.white))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ClickHelp()));
                      },
                      child: Container(
                        height: sizeConfig!.height(0.040),
                        width: sizeConfig!.width(0.35),
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(20.0),
                            color: Theme.of(context).primaryColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.whatsapp, color: Colors.white),
                            SizedBox(
                              width: 5.0,
                            ),
                            Text("Call", style: TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 10)
                  ],
                )
              ],
            ),
          );
        });
  }
}
// showDialog(
//               barrierDismissible: true,
//               // barrierColor: Theme.of(context).primaryColor,
//               context: context,
//               builder: (BuildContext context) {
//                 return Expanded(
//                   child: AlertDialog(
//                     // insetPadding: EdgeInsets.only(bottom: 350),
//                     shape: RoundedRectangleBorder(
//                         borderRadius:
//                             BorderRadius.circular(15.0)), //this right here,
//                     backgroundColor: Color(0xff272525),
//                     content: SizedBox(
//                       height: 160,
//                       child: Column(
//                         children: [
//                           SizedBox(
//                             height: 20,
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.call,
//                                 color: Theme.of(context).primaryColor,
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Text(
//                                 "Call to 15",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 18),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Divider(
//                             color: Colors.white,
//                             thickness: 1,
//                           ),
//                           SizedBox(
//                             height: 10,
//                           ),
//                           Row(
//                             children: [
//                               Icon(
//                                 Icons.location_on,
//                                 color: Theme.of(context).primaryColor,
//                               ),
//                               SizedBox(
//                                 width: 20,
//                               ),
//                               Text(
//                                 "Share live Location",
//                                 style: TextStyle(
//                                     color: Colors.white, fontSize: 18),
//                               )
//                             ],
//                           ),
//                           // SizedBox(
//                           //   height: 10,
//                           // ),
//                           // Divider(
//                           //   color: Colors.white,
//                           //   thickness: 1,
//                           // ),
//                           // SizedBox(
//                           //   height: 10,
//                           // ),
//                           // Row(
//                           //   children: [
//                           //     Icon(
//                           //       Icons.cancel,
//                           //       color: Theme.of(context).primaryColor,
//                           //     ),
//                           //     SizedBox(
//                           //       width: 20,
//                           //     ),
//                           //     Text(
//                           //       "Cancel",
//                           //       style: TextStyle(
//                           //           color: Colors.white, fontSize: 18),
//                           //     )
//                           //   ],
//                           // ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
            