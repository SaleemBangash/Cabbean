// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:passenger/screens/comment.dart';
import 'package:passenger/screens/drop_off.dart';

import '../main.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';
import 'registration_screen.dart';

class Destination extends StatelessWidget {
  const Destination({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/map.png"),
          fit: BoxFit.cover,
        ))),
        Positioned(
          top: 40,
          child: Column(
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.black),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DropOff()));
                    }
                    //onPressed: () => Navigator.of(context).pop(),
                    ),
                SizedBox(
                  width: 290,
                  height: 40,
                  child: MyTextField(
                    hintText: "PickUp Location",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    filled: true,
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  ),
                ),
              ]),
            ],
          ),
        ),
        Positioned(
          bottom: sizeConfig!.height(0.029),
          left: sizeConfig!.width(0.10),
          child: SizedBox(
            width: sizeConfig!.width(0.82),
            height: 50,
            child: MySecondButton(
              onTap: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AddComent())),
              title: "Done",
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
        )
      ],
    ));
  }
}
