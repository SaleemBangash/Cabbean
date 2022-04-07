// import 'dart:js';

// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:passenger/drawer/new_registration.dart';
import 'package:passenger/drawer/request_history.dart';
import 'package:passenger/driver/chat.dart';
import 'package:passenger/driver/driver_drawer_list.dart';
import 'package:passenger/driver/driver_payment.dart';
import 'package:passenger/driver/driver_profile.dart';
import 'package:passenger/driver/driver_request_history.dart';
import 'package:passenger/driver/information.dart';
import 'package:passenger/driver/main_screen_offline.dart';
import 'package:passenger/driver/registration/driver_registration.dart';
import 'package:passenger/driver/settings.dart';
import 'package:passenger/driver/settings_cabbean.dart';
import 'package:passenger/screens/dashboard.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:passenger/screens/profile.dart';
import 'package:passenger/screens/safety_screen.dart';
import 'package:passenger/widgets/drawer_list.dart';

import '../main.dart';
import '../widgets/second_button.dart';

class DriverDrawer extends StatefulWidget {
  const DriverDrawer({Key? key}) : super(key: key);

  @override
  State<DriverDrawer> createState() => _DriverDrawerState();
}

class _DriverDrawerState extends State<DriverDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        backgroundColor: Color(0xff272525),
        child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                  decoration: BoxDecoration(color: Color(0xff272525)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Image.asset(
                            'assets/person1.png',
                            width: 70.0,
                            height: 70.0,
                            fit: BoxFit.cover,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Ali",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                        fontSize: 17,
                                        color: Theme.of(context).primaryColor),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
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
                                        style: TextStyle(
                                            fontSize: 14, color: Colors.white)),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text("Cultus",
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.white)),
                            ],
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Theme.of(context).primaryColor,
                          )
                        ],
                      ),
                    ],
                  )),
              Divider(
                thickness: 1,
                color: Theme.of(context).primaryColor,
              ),
              listTile(
                icon: Icons.account_box_rounded,
                title: "My Account",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DriverRequestHistory())),
              ),
              listTile(
                icon: Icons.account_box_rounded,
                title: "Get Subscription",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Information())),
              ),
              // DriverDrawerList(
              //     assetName: "assets/pro.png", data: "Get Subscription"),
              // DrawerList(assetName: "assets/pro.png", data: "Get Subscription"),
              listTile(
                icon: FontAwesomeIcons.globe,
                title: "Online Registration",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverProfile())),
              ),

              listTile(
                icon: Icons.location_on,
                title: "Add Destinaion",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverPayment())),
              ),
              listTile(
                icon: FontAwesomeIcons.envelope,
                title: "Inbox",
                onTap: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Chat())),
              ),
              listTile(
                icon: Icons.settings,
                title: "Settings",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Settings())),
              ),
              listTile(
                icon: Icons.share,
                title: "Share With Friends",
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DriverRegistration())),
              ),
              listTile(
                icon: Icons.help,
                title: "Help And Support",
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => CabbeanSettings())),
              ),
              Divider(
                color: Theme.of(context).primaryColor,
                thickness: 1,
              ),

              SizedBox(
                width: 20,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: SizedBox(
                    width: sizeConfig!.width(0.52),
                    height: 40,
                    child: MySecondButton(
                      title: "Switch to Passenger",
                      border: Border.all(width: 1, color: Colors.white),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                  ))
            ]));
  }

  listTile({required IconData icon, required String title, Function()? onTap}) {
    return ListTile(
      leading: Icon(
        icon,
        size: 25,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(title,
          style: Theme.of(context)
              .textTheme
              .bodyText2!
              .copyWith(color: Colors.white)),
      onTap: onTap,
    );
  }
}
