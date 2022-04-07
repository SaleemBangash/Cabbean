// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:passenger/driver/main_screen_offline.dart';
import 'package:passenger/main.dart';
import 'package:passenger/widgets/app_bar.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: GestureDetector(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => MainScreenOffine()));
        },
        child: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      data: Text(
        "Date Format & Distance Units",
        style: TextStyle(color: Colors.white, fontSize: 15),
      ),
      body: Container(
        color: Color(0xffEBEBEb),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: sizeConfig!.width(0.82),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "24-Hour Time",
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        ),
                        Image.asset("assets/toggle_fil.png")
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: sizeConfig!.width(0.82),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0)),
                  child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Distance Units",
                            style: TextStyle(color: Colors.black, fontSize: 15),
                          ),
                          Text(
                            "Kilometers",
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 14),
                          ),
                        ],
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
