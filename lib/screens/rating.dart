// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:passenger/main.dart';
import 'package:passenger/screens/click_help.dart';
import 'package:passenger/screens/low_rated.dart';
import 'package:passenger/screens/payment_details.dart';

import '../widgets/second_button.dart';
import '../widgets/text_field.dart';

class Rating extends StatefulWidget {
  const Rating({Key? key}) : super(key: key);

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  bool aChecked = false;
  bool bChecked = false;
  bool cChecked = false;
  bool dChecked = false;
  bool eChecked = false;
  bool _hasBeenPressed = false;
  bool _isBeenPressed = false;
  bool _wasBeenPressed = false;

  bool _oneBeenPressed = false;
  bool _twoBeenPressed = false;
  bool _threeBeenPressed = false;
  bool _fourBeenPressed = false;
  bool _fiveBeenPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff272525),
          leading: IconButton(
              icon:
                  Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PaymentDetails()));
              }
              //onPressed: () => Navigator.of(context).pop(),
              ),
        ),
        backgroundColor: Color(0xff272525),
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Give a Rating",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  "assets/person_2.png",
                  height: 80,
                  width: 80,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                      padding: const EdgeInsets.only(left: 5.0),
                      child: Text("(4.9)",
                          style: TextStyle(fontSize: 14, color: Colors.white)),
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              _oneBeenPressed = !_oneBeenPressed;
                              // _hasBeenPressed = false;
                              // _wasBeenPressed = false;
                            });
                          },
                          child: _oneBeenPressed
                              ? Icon(Icons.star,
                                  size: 25,
                                  color: Theme.of(context).primaryColor)
                              : Icon(Icons.star_outline,
                                  size: 25,
                                  color: Theme.of(context).primaryColor)
                          // Icon(
                          //   Icons.star,
                          //   size: 25,
                          //   // color: _isBeenPressed
                          //   //     ? Theme.of(context).primaryColor
                          //   //     : Colors.white70,
                          //   // // 3
                          // ),
                          );
                    }),
                    SizedBox(
                      width: 10,
                    ),
                    StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              _twoBeenPressed = !_twoBeenPressed;
                              // _hasBeenPressed = false;
                              // _wasBeenPressed = false;
                            });
                          },
                          child: _twoBeenPressed
                              ? Icon(Icons.star,
                                  size: 25,
                                  color: Theme.of(context).primaryColor)
                              : Icon(Icons.star_outline,
                                  size: 25,
                                  color: Theme.of(context).primaryColor)
                          // Icon(
                          //   Icons.star,
                          //   size: 25,
                          //   // color: _isBeenPressed
                          //   //     ? Theme.of(context).primaryColor
                          //   //     : Colors.white70,
                          //   // // 3
                          // ),
                          );
                    }),
                    SizedBox(
                      width: 10,
                    ),
                    StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              _threeBeenPressed = !_threeBeenPressed;
                              // _hasBeenPressed = false;
                              // _wasBeenPressed = false;
                            });
                          },
                          child: _threeBeenPressed
                              ? Icon(Icons.star,
                                  size: 25,
                                  color: Theme.of(context).primaryColor)
                              : Icon(Icons.star_outline,
                                  size: 25,
                                  color: Theme.of(context).primaryColor)
                          // Icon(
                          //   Icons.star,
                          //   size: 25,
                          //   // color: _isBeenPressed
                          //   //     ? Theme.of(context).primaryColor
                          //   //     : Colors.white70,
                          //   // // 3
                          // ),
                          );
                    }),
                    SizedBox(
                      width: 10,
                    ),
                    StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              _fourBeenPressed = !_fourBeenPressed;
                              // _hasBeenPressed = false;
                              // _wasBeenPressed = false;
                            });
                          },
                          child: _fourBeenPressed
                              ? Icon(Icons.star,
                                  size: 25,
                                  color: Theme.of(context).primaryColor)
                              : Icon(Icons.star_outline,
                                  size: 25,
                                  color: Theme.of(context).primaryColor)
                          // Icon(
                          //   Icons.star,
                          //   size: 25,
                          //   // color: _isBeenPressed
                          //   //     ? Theme.of(context).primaryColor
                          //   //     : Colors.white70,
                          //   // // 3
                          // ),
                          );
                    }),
                    SizedBox(
                      width: 10,
                    ),
                    StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                      return GestureDetector(
                          onTap: () {
                            setState(() {
                              _fiveBeenPressed = !_fiveBeenPressed;
                              // _hasBeenPressed = false;
                              // _wasBeenPressed = false;
                            });
                          },
                          child: _fiveBeenPressed
                              ? Icon(Icons.star,
                                  size: 25,
                                  color: Theme.of(context).primaryColor)
                              : Icon(Icons.star_outline,
                                  size: 25,
                                  color: Theme.of(context).primaryColor)
                          // Icon(
                          //   Icons.star,
                          //   size: 25,
                          //   // color: _isBeenPressed
                          //   //     ? Theme.of(context).primaryColor
                          //   //     : Colors.white70,
                          //   // // 3
                          // ),
                          );
                    }),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        side: BorderSide(color: Colors.white),
                        activeColor: Theme.of(context).primaryColor,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        value: aChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            aChecked = value!;

                            // bChecked = false;
                            // cChecked = false;
                            // dChecked = false;
                            // eChecked = false;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Change Returned at Once",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        side: BorderSide(color: Colors.white),
                        checkColor: Colors.black,

                        activeColor: Theme.of(context).primaryColor,
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
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Neat n Clean Car",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        side: BorderSide(color: Colors.white),
                        activeColor: Theme.of(context).primaryColor,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        value: cChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            cChecked = value!;

                            // bChecked = false;
                            // cChecked = false;
                            // dChecked = false;
                            // eChecked = false;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Route Knowledge",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        side: BorderSide(color: Colors.white),
                        activeColor: Theme.of(context).primaryColor,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        value: dChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            dChecked = value!;

                            // bChecked = false;
                            // cChecked = false;
                            // dChecked = false;
                            // eChecked = false;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Good Music",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Checkbox(
                        checkColor: Colors.black,
                        side: BorderSide(color: Colors.white),
                        activeColor: Theme.of(context).primaryColor,
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(20)),
                        value: eChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            eChecked = value!;

                            // bChecked = false;
                            // cChecked = false;
                            // dChecked = false;
                            // eChecked = false;
                          });
                        },
                      ),
                      SizedBox(width: 10),
                      Text(
                        "Arrived in Time",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: sizeConfig!.height(0.2),
                  width: sizeConfig!.width(0.82),
                  child: MyTextField(
                    // controller: textController,
                    // // enabled: false,
                    // onChanged: _onChanged,
                    // focusedBorder: InputBorder.none,
                    // enabledBorder: InputBorder.none,
                    // errorBorder: InputBorder.none,
                    // disabledBorder: InputBorder.none,
                    // suffixIcon: Align(
                    //     alignment: Alignment.bottomRight,
                    //     child: Icon(Icons.home)),
                    hintText: "Add More Comments",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    filled: true,
                    // maxLength: 1000,
                    maxLines: 7,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  width: sizeConfig!.width(0.82),
                  height: 50,
                  child: MySecondButton(
                    border: Border.all(color: Colors.white, width: 1),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LowRated())),
                    title: "Submit",
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
