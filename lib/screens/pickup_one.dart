// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:passenger/screens/dashboard.dart';
import 'package:passenger/screens/pickup_two.dart';

import '../widgets/text_field.dart';
import 'registration_screen.dart';

class PickupOne extends StatelessWidget {
  const PickupOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(120.0),
          child: AppBar(
            backgroundColor: Color(0xff272525),
            leading: IconButton(
              icon:
                  Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
              //onPressed: () => Navigator.of(context).pop(),
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.location_on,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 290,
                        height: 40,
                        child: MyTextField(
                          hintText: "PickUp Location",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 90, top: 10, bottom: 10),
                    child: Text(
                      'Show On Map',
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        body: Container(
          margin: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.home,
                    color: Theme.of(context).primaryColor,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Text(
                    'Shams Abad,Rwp',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Image.asset("assets/building.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'F9 Markaz Islamabad',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Image.asset("assets/timer.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'F9 Markaz Islamabad',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Image.asset("assets/timer.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'F9 Markaz Islamabad',
                      style: TextStyle(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    Image.asset("assets/timer.png"),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      'F9 Markaz Islamabad',
                      style: TextStyle(),
                    ),
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
