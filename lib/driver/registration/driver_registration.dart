// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:passenger/driver/accept_offer.dart';
import 'package:passenger/driver/main_screen_offline.dart';
import 'package:passenger/driver/new_chat/daily.dart';
import 'package:passenger/driver/new_chat/monthly.dart';
import 'package:passenger/driver/new_chat/weekly.dart';
import 'package:passenger/screens/accept.dart';
import 'package:passenger/widgets/app_bar.dart';

import '../../main.dart';
import '../../widgets/second_button.dart';

// import '../main.dart';
// import '../screens/dashboard.dart';
// import '../screens/rating.dart';
// import '../widgets/second_button.dart';
// import 'driver_drawer.dart';
// import 'driver_ratings.dart';

class DriverRegistration extends StatefulWidget {
  const DriverRegistration({Key? key}) : super(key: key);

  @override
  State<DriverRegistration> createState() => _DriverRegistrationState();
}

class _DriverRegistrationState extends State<DriverRegistration> {
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
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainScreenOffine()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      data: Text(
        'Registration',
        style: TextStyle(color: Colors.white),
      ),
      body: Container(
          // margin: EdgeInsets.only(top: 20),
          color: Color(0xffEBEBEB),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Weekly()));
                        },
                        child: Container(
                          height: 50,
                          width: 330,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 8.0, right: 8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "1.Personel Information",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyText2!
                                          .copyWith(
                                              fontWeight: FontWeight.bold),
                                    ),
                                    Icon(
                                      FontAwesomeIcons.asterisk,
                                      color: Colors.red,
                                      size: 15,
                                    )
                                  ],
                                ),
                                Checkbox(
                                  // side: BorderSide(color: Colors.white),
                                  checkColor: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.0)),
                                  activeColor: Colors.green,
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
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 330,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "2.Driver Liscense",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.asterisk,
                                    color: Colors.red,
                                    size: 15,
                                  )
                                ],
                              ),
                              Checkbox(
                                // side: BorderSide(color: Colors.white),
                                checkColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                activeColor: Colors.green,
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
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 330,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "3.CNIC Confirmation",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.asterisk,
                                    color: Colors.red,
                                    size: 15,
                                  )
                                ],
                              ),
                              Checkbox(
                                // side: BorderSide(color: Colors.white),
                                checkColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                activeColor: Colors.green,
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
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 330,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "4.Vehicle Information",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.asterisk,
                                    color: Colors.red,
                                    size: 15,
                                  )
                                ],
                              ),
                              Checkbox(
                                // side: BorderSide(color: Colors.white),
                                checkColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                activeColor: Colors.green,
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
                              )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 50,
                        width: 330,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10.0)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "5.Clearance Certificate",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold),
                                  ),
                                  Icon(
                                    FontAwesomeIcons.asterisk,
                                    color: Colors.red,
                                    size: 15,
                                  )
                                ],
                              ),
                              Checkbox(
                                // side: BorderSide(color: Colors.white),
                                checkColor: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0)),
                                activeColor: Colors.green,
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
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: SizedBox(
                        width: sizeConfig!.width(0.82),
                        height: 50,
                        child: MySecondButton(
                          title: "Done",
                          border: Border.all(width: 1, color: Colors.white),
                          borderRadius: BorderRadius.circular(25.0),
                        ),
                      ))
                ],
              ),
            ),
          )),
    );
  }
}
