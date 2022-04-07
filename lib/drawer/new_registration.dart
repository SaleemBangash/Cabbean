// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:io';

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:passenger/widgets/app_bar.dart';
import 'package:image_picker/image_picker.dart';
import '../main.dart';
import '../screens/dashboard.dart';
import '../screens/reg_otp.dart';
import '../widgets/second_button.dart';
import '../widgets/text_field.dart';

class NewRegistration extends StatefulWidget {
  const NewRegistration({Key? key}) : super(key: key);

  @override
  State<NewRegistration> createState() => _NewRegistrationState();
}

class _NewRegistrationState extends State<NewRegistration> {
  bool aChecked = false;
  bool bChecked = false;
  bool isChecked = false;

  String? dropvalue;
  var items = ['ISL', 'RWL', 'LHR', 'PSH', 'MLT', 'KRC'];

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => RegistrationOtp()));
          }
          //onPressed: () => Navigator.of(context).pop(),
          ),
      data: Text(
        'Registration',
        style: TextStyle(color: Colors.white),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("First Name",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontWeight: FontWeight.bold)),
                          Icon(
                            FontAwesomeIcons.asterisk,
                            size: 15,
                            color: Colors.red,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: sizeConfig!.width(0.40),
                        height: 30,
                        child: MyTextField(
                          hintText: "First Name",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Last Name",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(fontWeight: FontWeight.bold)),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: sizeConfig!.width(0.40),
                        height: 30,
                        child: MyTextField(
                          hintText: "LastName",
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0)),
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(horizontal: 5.0),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Gender",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyText2!
                                      .copyWith(fontWeight: FontWeight.bold)),
                              Icon(
                                FontAwesomeIcons.asterisk,
                                size: 15,
                                color: Colors.red,
                              ),
                            ]),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black),
                                shape: BoxShape.circle,
                                color: Colors.white),
                            child: Transform.scale(
                              scale: 0.6,
                              child: Checkbox(
                                checkColor: Colors.black,
                                side: BorderSide(color: Colors.white),
                                activeColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                value: aChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    aChecked = value!;

                                    bChecked = false;
                                    // cChecked = false;
                                    // dChecked = false;
                                    // eChecked = false;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("Male",
                              style: Theme.of(context).textTheme.bodyText2),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                border:
                                    Border.all(width: 1, color: Colors.black),
                                shape: BoxShape.circle,
                                color: Colors.white),
                            child: Transform.scale(
                              scale: 0.6,
                              child: Checkbox(
                                checkColor: Colors.black,
                                side: BorderSide(color: Colors.white),
                                activeColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                value: bChecked,
                                onChanged: (bool? value) {
                                  setState(() {
                                    bChecked = value!;

                                    aChecked = false;
                                    // cChecked = false;
                                    // dChecked = false;
                                    // eChecked = false;
                                  });
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 5.0,
                          ),
                          Text("Female",
                              style: Theme.of(context).textTheme.bodyText2),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Contact Number",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontWeight: FontWeight.bold)),
                      Icon(
                        FontAwesomeIcons.asterisk,
                        size: 15,
                        color: Colors.red,
                      ),
                    ]),
                    SizedBox(height: 10),
                    SizedBox(
                      width: sizeConfig!.width(0.90),
                      height: 40,
                      child: MyTextField(
                        hintText: "+92xxxxxxxxxx",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          Checkbox(
                            side: BorderSide(
                                color: Theme.of(context).primaryColor),
                            activeColor: Theme.of(context).primaryColor,
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
                          Text("Same Number on Whatsapp",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12)),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: sizeConfig!.width(0.90),
                      height: 40,
                      child: MyTextField(
                        inputType: TextInputType.datetime,
                        hintText: "WhatsApp Number",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Email",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontWeight: FontWeight.bold)),
                      Icon(
                        FontAwesomeIcons.asterisk,
                        size: 15,
                        color: Colors.red,
                      ),
                    ]),
                    SizedBox(height: 10),
                    SizedBox(
                      width: sizeConfig!.width(0.90),
                      height: 40,
                      child: MyTextField(
                        inputType: TextInputType.emailAddress,
                        hintText: "example@gmail.com",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("City",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontWeight: FontWeight.bold)),
                      Icon(
                        FontAwesomeIcons.asterisk,
                        size: 15,
                        color: Colors.red,
                      ),
                    ]),
                    SizedBox(height: 10),
                    Container(
                      // margin: EdgeInsets.all(19),
                      decoration: BoxDecoration(
                        color: Color(0xffEBEBEB),
                        border: Border.all(width: 1),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      width: sizeConfig!.width(0.90),
                      height: sizeConfig!.height(0.06),
                      child: DropdownButtonHideUnderline(
                        child: DropdownButton2(
                          hint: Text(
                            'RawalPindi',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black,
                            ),
                          ),
                          isDense: true,
                          isExpanded: false,
                          alignment: Alignment.center,
                          // elevation: -30,
                          value: dropvalue,
                          icon: Icon(
                            Icons.arrow_drop_down,
                            size: 30,
                            color: Theme.of(context).primaryColor,
                          ),
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: const TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropvalue = newValue!;
                            });
                          },
                          buttonPadding:
                              const EdgeInsets.only(left: 14, right: 14),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Current Address",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontWeight: FontWeight.bold)),
                      Icon(
                        FontAwesomeIcons.asterisk,
                        size: 15,
                        color: Colors.red,
                      ),
                    ]),
                    SizedBox(height: 10),
                    SizedBox(
                      width: sizeConfig!.width(0.90),
                      height: 80,
                      child: MyTextField(
                        inputType: TextInputType.emailAddress,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.start, children: [
                      Text("Add Profile Image",
                          style: Theme.of(context)
                              .textTheme
                              .bodyText2!
                              .copyWith(fontWeight: FontWeight.bold)),
                      Icon(
                        FontAwesomeIcons.asterisk,
                        size: 15,
                        color: Colors.red,
                      ),
                    ]),
                    SizedBox(height: 10),
                    Container(
                      height: 50,
                      width: sizeConfig!.width(0.90),
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          color: Color(0xffEBEBEB),
                          borderRadius: BorderRadius.circular(10.0)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => _showChoiceDialog(context),
                              child: Container(
                                decoration: BoxDecoration(),
                                width: sizeConfig!.width(0.35),
                                height: sizeConfig!.height(0.04),
                                // color: Colors.green,
                                child: (imageFile == null)
                                    ? Container(
                                        decoration: BoxDecoration(
                                            color: Colors.grey,
                                            borderRadius:
                                                BorderRadius.circular(5.0)),
                                        width: sizeConfig!.width(0.35),
                                        height: sizeConfig!.height(0.04),
                                        child: Center(
                                            child: Text("No File Chosen")))
                                    // Text("Choose Image")
                                    : Image.file(
                                        File(imageFile!.path),
                                        // width: 290,
                                        // height: 120,
                                        fit: BoxFit.cover,
                                      ),
                              ),
                            ),
                            Icon(
                              Icons.camera_alt,
                              color: Theme.of(context).primaryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("CNIC",
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontWeight: FontWeight.bold)),
                        Icon(
                          FontAwesomeIcons.asterisk,
                          size: 15,
                          color: Colors.red,
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(
                      width: sizeConfig!.width(0.90),
                      height: 40,
                      child: MyTextField(
                        inputType: TextInputType.emailAddress,
                        hintText: "CNIC #:",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)),
                        filled: true,
                        contentPadding:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Date Of Issue",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold)),
                                Icon(
                                  FontAwesomeIcons.asterisk,
                                  size: 15,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: sizeConfig!.width(0.42),
                              height: 30,
                              child: MyTextField(
                                suffixIcon: Icon(Icons.calendar_month,
                                    color: Theme.of(context).primaryColor),
                                hintText: "12/22",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                filled: true,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 5.0),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text("Date of Expiry",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyText2!
                                        .copyWith(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: sizeConfig!.width(0.42),
                              height: 30,
                              child: MyTextField(
                                suffixIcon: Icon(Icons.calendar_month,
                                    color: Theme.of(context).primaryColor),
                                hintText: "12/22",
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)),
                                filled: true,
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 5.0),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: SizedBox(
                  height: sizeConfig!.height(0.06),
                  width: sizeConfig!.width(0.90),
                  child: MySecondButton(
                    border: Border.all(width: 1, color: Colors.white),
                    onTap: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Dashboard())),
                    title: "Save",
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PickedFile? imageFile = null;

  // Future<void> _showChoiceDialog(BuildContext context) async {
  Future<void> _showChoiceDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              "Choose option",
              style: TextStyle(color: Colors.blue),
            ),
            content: SingleChildScrollView(
              child: ListBody(
                children: [
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openGallery(context);
                    },
                    title: Text("Gallery"),
                    leading: Icon(
                      Icons.account_box,
                      color: Colors.blue,
                    ),
                  ),
                  Divider(
                    height: 1,
                    color: Colors.blue,
                  ),
                  ListTile(
                    onTap: () {
                      _openCamera(context);
                    },
                    title: Text("Camera"),
                    leading: Icon(
                      Icons.camera,
                      color: Colors.blue,
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }

  void _openGallery(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.gallery,
    );
    setState(() {
      imageFile = pickedFile!;
    });

    Navigator.pop(context);
  }

  void _openCamera(BuildContext context) async {
    final pickedFile = await ImagePicker().getImage(
      source: ImageSource.camera,
    );
    setState(() {
      imageFile = pickedFile!;
    });
    Navigator.pop(context);
  }
}
