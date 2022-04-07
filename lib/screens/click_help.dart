// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:passenger/screens/accept.dart';
import 'package:passenger/screens/broadcast.dart';
import 'package:passenger/screens/dashboard.dart';
import 'package:passenger/screens/rating.dart';
import 'package:passenger/screens/set_destination.dart';
import 'package:passenger/widgets/app_bar.dart';

import '../main.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';

class ClickHelp extends StatelessWidget {
  const ClickHelp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      // backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AcceptOffer()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Center(
            child: Text(
              "Cancel",
              style: TextStyle(color: Theme.of(context).primaryColor),
            ),
          ),
        )
      ],
      data: Text(''),
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/map.png"),
          fit: BoxFit.cover,
        ))),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topRight,
            child: GestureDetector(
                onTap: () => _settingModalBottomSheet(context),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: Icon(
                    Icons.share,
                    color: Theme.of(context).primaryColor,
                  ),
                )),
          ),
        ),
        Positioned(
          top: 90,
          left: 50,
          child: Text(
              "You Have Accepted ali's Offer\nHe will Arrive in 4 min Get Ready",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ),
      ]),
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
                    Text("Cance Ride",
                        textAlign: TextAlign.end,
                        style: TextStyle(fontSize: 18, color: Colors.white)),
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
                                  builder: (context) => Rating())),
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
                                height: 120,
                                child: Column(
                                  children: [
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.call,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Call to 15",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        )
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Divider(
                                      color: Colors.white,
                                      thickness: 1,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.location_on,
                                          color: Theme.of(context).primaryColor,
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Text(
                                          "Share live Location",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                      child: Container(
                        height: sizeConfig!.height(0.040),
                        width: sizeConfig!.width(0.25),
                        decoration: BoxDecoration(
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
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Container(
                      height: sizeConfig!.height(0.040),
                      width: sizeConfig!.width(0.25),
                      decoration: BoxDecoration(
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
                    SizedBox(width: 10)
                  ],
                )
              ],
            ),
          );
        });
  }
}
