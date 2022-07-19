// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:ui';

import 'package:slide_to_confirm/slide_to_confirm.dart';
import 'package:flutter/material.dart';
import 'package:passenger/screens/registration_screen.dart';
import 'package:passenger/widgets/second_button.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../main.dart';
import '../utils/size_config.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({Key? key}) : super(key: key);

  @override
  State<StartScreen> createState() => _StartScreenState();
}

class _StartScreenState extends State<StartScreen> {
  @override
  void didChangeDependencies() {
    sizeConfig = SizeConfig.init(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        SimpleShadow(
          opacity: .95, // Default: 0.5
          color: Colors.black, // Default: Black
          offset: Offset(15, 15), // Default: Offset(2, 2)
          sigma: 9, // Default: 2
          child: Container(
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    spreadRadius: 3,
                    blurRadius: 1,
                    offset: Offset(1, 1), // changes position of shadow
                  ),
                ],
                image: DecorationImage(
                  image: AssetImage("assets/cabbean.jpeg"),
                  fit: BoxFit.cover,
                  // colorFilter: ColorFilter.mode(
                  //     Colors.black.withOpacity(0.2), BlendMode.dstATop)
                )),
          ),
        ),
        Positioned(
          bottom: sizeConfig!.height(0.25),
          left: sizeConfig!.height(0.10),
          child: Column(
            children: [
              Image.asset("assets/logo1.png", height: 250, width: 250),
              // Text(
              //   "Fare for Everyone",
              //   style: TextStyle(fontSize: 17, color: Colors.white),
              // ),
            ],
          ),
        ),
        Positioned(
          bottom: sizeConfig!.height(0.029),
          left: sizeConfig!.width(0.10),
          child: Center(
            child: SizedBox(
              width: sizeConfig!.width(0.82),
              height: 50,
              child: MySecondButton(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Registration())),
                title: "Let's Start",
                borderRadius: BorderRadius.circular(5.0),
                border: Border.all(
                    width: 2, color: Color.fromARGB(255, 245, 237, 237)),
              ),
            ),
          ),
        ),
        // Positioned(
        //   bottom: sizeConfig!.height(0.12),
        //   left: sizeConfig!.width(0.12),
        //   child: Center(
        //     child: Padding(
        //       padding: const EdgeInsets.all(8.0),
        //       child: ConfirmationSlider(
        //         height: 54.0,
        //         width: 270,
        //         backgroundColor: Color(0xffbaa378),
        //         foregroundColor: Colors.black87,
        //         backgroundShape: BorderRadius.circular(10),
        //         foregroundShape: BorderRadius.circular(16),
        //         text: "Swipe To Driver",
        //         textStyle: TextStyle(
        //             fontSize: 17,
        //             color: Colors.white,
        //             fontWeight: FontWeight.bold),
        //         onConfirmation: () => Navigator.push(
        //             context,
        //             MaterialPageRoute(
        //                 builder: (context) => MainScreenOnline())),
        //       ),
        //     ),
        //   ),
        // )
      ]),
    );
  }
}
