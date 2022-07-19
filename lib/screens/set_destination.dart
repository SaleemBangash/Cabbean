// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:passenger/screens/accept.dart';
import 'package:passenger/screens/broadcast.dart';
import 'package:passenger/screens/dashboard.dart';
import 'package:passenger/widgets/app_bar.dart';

import '../main.dart';
import '../widgets/second_button.dart';

class SetDestintion extends StatefulWidget {
  const SetDestintion({Key? key}) : super(key: key);

  @override
  State<SetDestintion> createState() => _SetDestintionState();
}

class _SetDestintionState extends State<SetDestintion> {
  bool _isVisible = true;

  void showToast() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Broadcast()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Dashboard()));
            },
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
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/map.png"),
          fit: BoxFit.cover,
        ))),
        Visibility(
          visible: _isVisible,
          child: Positioned(
              top: sizeConfig!.height(0.013),
              left: sizeConfig!.width(0.010),
              right: sizeConfig!.width(0.010),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: sizeConfig!.height(0.21),
                  width: sizeConfig!.width(0.37),
                  decoration: BoxDecoration(
                      color: Color(0xff272525),
                      borderRadius: BorderRadius.circular(15.0)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/person.png"),
                              SizedBox(
                                width: 20,
                              ),
                              Column(
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
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.timer,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text("3 min",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17))
                                ],
                              ),
                              SizedBox(
                                width: 20,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white,
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text("3 Km",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 17))
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Est. Fare Rs.300",
                              textAlign: TextAlign.end,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                          Text("Ali's' Offer Rs.300",
                              textAlign: TextAlign.end,
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white)),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () => showToast(),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        width: 2, color: Colors.white)),
                                width: sizeConfig!.width(0.25),
                                height: sizeConfig!.height(0.035),
                                child: Center(
                                    child: Text(
                                  "Skip",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ))),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AcceptOffer())),
                            child: Container(
                                decoration: BoxDecoration(
                                    color: Theme.of(context).primaryColor,
                                    borderRadius: BorderRadius.circular(5.0),
                                    border: Border.all(
                                        width: 2, color: Colors.white)),
                                width: sizeConfig!.width(0.25),
                                height: sizeConfig!.height(0.035),
                                child: Center(
                                    child: Text(
                                  "Accept",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ))),
                          ),
                          SizedBox(width: 10)
                        ],
                      )
                    ],
                  ),
                ),
              )),
        )
      ]),
    );
  }
}
