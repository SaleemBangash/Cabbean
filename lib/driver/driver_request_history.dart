// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:passenger/driver/main_screen_offline.dart';
import 'package:passenger/screens/dashboard.dart';
import 'package:passenger/screens/registration_screen.dart';
import 'package:passenger/widgets/app_bar.dart';

import '../main.dart';
import '../screens/rating.dart';
import '../widgets/second_button.dart';

// import 'dashboard.dart';
// import 'set_destination.dart';

class DriverRequestHistory extends StatefulWidget {
  const DriverRequestHistory({Key? key}) : super(key: key);

  @override
  State<DriverRequestHistory> createState() => _DriverRequestHistoryState();
}

class _DriverRequestHistoryState extends State<DriverRequestHistory> {
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => MainScreenOffine()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      data: Text(
        'Request History',
        style: TextStyle(color: Colors.white),
      ),
      body: Center(
          child: Container(
              margin: EdgeInsets.only(top: 20),
              // color: Color(0xffEBEBEB),
              child: Column(
                children: [
                  Container(
                      height: 170,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                      child: Center(
                                        child: Text("A",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text("Orchard Ave",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2)
                                  ],
                                ),
                                Text("7 Feb",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Center(
                                    child: Text("B",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Eman Dhaka Sweets",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("PKR300",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith()),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Completed",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(color: Colors.green))
                              ],
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              width: sizeConfig!.width(0.39),
                              height: 40,
                              child: MySecondButton(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Rating())),
                                  title: "Support",
                                  borderRadius: BorderRadius.circular(25.0),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(height: 20),
                  Container(
                      height: 170,
                      width: 320,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 20,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.black),
                                      child: Center(
                                        child: Text("A",
                                            style:
                                                TextStyle(color: Colors.white)),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Text("Orchard Ave",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodyText2)
                                  ],
                                ),
                                Text("7 Feb",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              children: [
                                Container(
                                  height: 20,
                                  width: 20,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Theme.of(context).primaryColor),
                                  child: Center(
                                    child: Text("B",
                                        style: TextStyle(color: Colors.white)),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Eman Dhaka Sweets",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(
                                            color:
                                                Theme.of(context).primaryColor))
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("PKR300",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith()),
                                SizedBox(
                                  width: 20,
                                ),
                                Text("Completed",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(color: Colors.red))
                              ],
                            ),
                          ),
                          Center(
                            child: SizedBox(
                              width: sizeConfig!.width(0.39),
                              height: 40,
                              child: MySecondButton(
                                  onTap: () => Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Rating())),
                                  title: "Support",
                                  borderRadius: BorderRadius.circular(25.0),
                                  border: Border.all(
                                      width: 1, color: Colors.white)),
                            ),
                          ),
                        ],
                      )),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ))),
    );
  }
}
