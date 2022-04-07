// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:passenger/driver/accept_offer.dart';
import 'package:passenger/driver/main_screen_offline.dart';
import 'package:passenger/driver/new_chat/daily.dart';
import 'package:passenger/driver/new_chat/monthly.dart';
import 'package:passenger/driver/new_chat/weekly.dart';
import 'package:passenger/screens/accept.dart';
import 'package:passenger/widgets/app_bar.dart';

import '../main.dart';
import '../screens/dashboard.dart';
import '../screens/rating.dart';
import '../widgets/second_button.dart';
import 'driver_drawer.dart';
import 'driver_ratings.dart';

class MainScreenOnline extends StatelessWidget {
  const MainScreenOnline({Key? key}) : super(key: key);

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
      body: Container(
          // margin: EdgeInsets.only(top: 20),
          color: Color(0xffEBEBEB),
          child: Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Weekly()));
                    },
                    child: Container(
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
                            Text(
                              "Weekly",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Daily()));
                    },
                    child: Container(
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
                            Text(
                              "Daily",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Monthly()));
                    },
                    child: Container(
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
                            Text(
                              "Monthly",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Theme.of(context).primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
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
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MainScreenOffine())),
                child: Image.asset("assets/my_ratings.png")),
          )
        ],
      ),
    );
  }
}