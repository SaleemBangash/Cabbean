// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:passenger/driver/accept_offer.dart';
import 'package:passenger/driver/main_screen_offline.dart';
import 'package:passenger/screens/accept.dart';
import 'package:passenger/widgets/app_bar.dart';

import '../main.dart';
import '../screens/dashboard.dart';
import '../screens/rating.dart';
import '../widgets/second_button.dart';
import 'driver_drawer.dart';

class DriverRatings extends StatelessWidget {
  const DriverRatings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: Icon(
        Icons.menu,
        color: Colors.white,
      ),
      drawer: DriverDrawer(),
      actions: [Image.asset("assets/toggle_fil.png")],
      data: Text(""),
      body: Center(
          child: Container(
              margin: EdgeInsets.only(top: 20),
              // color: Color(0xffEBEBEB),
              child: Column(
                children: [
                  Container(
                      height: 60,
                      width: 340,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/person.png"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Ali Rating You 5 Stars",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                            Text(
                              "3min Ago",
                              style: TextStyle(color: Colors.black26),
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: 20),
                  Container(
                      height: 60,
                      width: 340,
                      decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/person.png"),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Ali Rating You 5 Stars",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ],
                            ),
                          ],
                        ),
                      )),
                  SizedBox(height: 20),
                ],
              ))),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Theme.of(context).primaryColor,
        selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Theme.of(context).primaryColor),
        unselectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold, fontSize: 14, color: Colors.white),
        selectedFontSize: 0.0,
        unselectedIconTheme: const IconThemeData(size: 21),
        unselectedFontSize: 0.0,
        backgroundColor: Color(0xff272525),
        items: [
          BottomNavigationBarItem(
            label: "MyRides",
            icon: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainScreenOffine())),
                child: Image.asset("assets/my_rides.png")),
          ),
          BottomNavigationBarItem(
            label: "MyEarnings",
            backgroundColor: Colors.white,
            icon: GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => AccepDriverOffer())),
                child: Image.asset("assets/my_earnings.png")),
          ),
          BottomNavigationBarItem(
            label: "MyRatings",
            icon: GestureDetector(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => DriverRatings())),
                child: Image.asset("assets/my_ratings.png")),
          )
        ],
      ),
    );
  }
}
