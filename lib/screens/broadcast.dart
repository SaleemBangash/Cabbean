// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:passenger/screens/dashboard.dart';
import 'package:passenger/screens/set_destination.dart';
import 'package:passenger/widgets/app_bar.dart';

import '../main.dart';

class Broadcast extends StatefulWidget {
  const Broadcast({Key? key}) : super(key: key);

  @override
  State<Broadcast> createState() => _BroadcastState();
}

class _BroadcastState extends State<Broadcast> with TickerProviderStateMixin {
  AnimationController? _controller;
  double value = 0;

  @override
  void initState() {
    _controller ??= AnimationController(
      vsync: this,
      duration: const Duration(seconds: 10),
    )..addListener(() {
        setState(() {});
      });
    _controller?.repeat();

    super.initState();
  }

  @override
  void dispose() {
    _controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MyAppBar(
      backgroundColor: Color(0xff272525),
      leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Theme.of(context).primaryColor),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Dashboard()));
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
      bottom: PreferredSize(
        child: SizedBox(
          height: 10,
          width: 400,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(35.0),
            child: LinearProgressIndicator(
              backgroundColor: Colors.white,
              color: Theme.of(context).primaryColor,
              value: _controller?.value,
            ),
          ),
        ),
        preferredSize: Size.fromHeight(20.0),
      ),
      data: Text(''),
      body: Stack(children: [
        Container(
            decoration: BoxDecoration(
                image: DecorationImage(
          image: AssetImage("assets/map.png"),
          fit: BoxFit.cover,
        ))),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Wait for the Cabbean's Offer",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SetDestintion())),
                  child: Image.asset("assets/cab_icon.png")),
            ],
          ),
        )
      ]),
    );
  }
}
