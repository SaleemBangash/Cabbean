// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:passenger/screens/reg_otp.dart';
import 'package:passenger/screens/start_screen.dart';
import 'package:passenger/widgets/app_bar.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'package:dropdown_button2/dropdown_button2.dart';

import '../main.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  bool isChecked = false;
  String? dropupvalue;
  var itemss = ['PK', 'PK', 'PK', 'PK', 'PK', 'PK'];

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      leading: GestureDetector(
          onTap: (() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StartScreen()));
          }),
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          )),
      backgroundColor: Color(0xff272525),
      data: Text("Register", style: TextStyle(color: Colors.white)),
      body: Stack(
        children: [
          Container(
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
                    image: AssetImage("assets/driver.png"),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Color.fromARGB(255, 246, 225, 225).withOpacity(0.6),
                        BlendMode.dstATop))),
          ),
          Positioned(
            top: 100,
            left: 150,
            child: Text("Register".toUpperCase(),
                style: TextStyle(color: Colors.white, fontSize: 25)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 170),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 30),
                    child: Text("Enter Mobile Number",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold)),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.all(19),
                        decoration: BoxDecoration(
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        width: 70,
                        height: 50,
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            hint: Text(
                              'PK',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 0, 0, 0),
                              ),
                            ),
                            isDense: true,
                            isExpanded: true,
                            alignment: Alignment.center,
                            // elevation: -30,
                            value: dropupvalue,
                            icon: Icon(Icons.arrow_drop_down),
                            items: itemss.map((String itemss) {
                              return DropdownMenuItem(
                                value: itemss,
                                child: Text(
                                  itemss,
                                  style: const TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              );
                            }).toList(),
                            onChanged: (String? oldValue) {
                              setState(() {
                                dropupvalue = oldValue!;
                              });
                            },
                            // buttonPadding:
                            //     const EdgeInsets.only(left: 14, right: 14),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: sizeConfig!.width(0.650),
                        child: MyTextField(
                          hintText: "300000000",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                              vertical: 10, horizontal: 10),
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: SizedBox(
                      height: sizeConfig!.height(0.06),
                      width: sizeConfig!.width(0.90),
                      child: MySecondButton(
                        border: Border.all(width: 1, color: Colors.white),
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => RegistrationOtp())),
                        title: "Register",
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Checkbox(
                          side: BorderSide(color: Colors.white),
                          activeColor: Colors.white,
                          // hoverColor: Colors.white,
                          focusColor: Colors.white,
                          checkColor: Colors.black,
                          // shape: RoundedRectangleBorder(
                          //     borderRadius: BorderRadius.circular(20)),
                          value: isChecked,
                          onChanged: (bool? value) {
                            setState(() {
                              isChecked = value!;
                              // onChecked = false;
                            });
                          },
                        ),
                        Text("By Signing in You agree to Our",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12)),
                        Text("Terms and Conditions",
                            style: TextStyle(
                                decoration: TextDecoration.underline,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 12))
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
