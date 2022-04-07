// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'dart:async';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LinearProgressIndicatorApp(),
    );
  }
}

class LinearProgressIndicatorApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LinearProgressIndicatorAppState();
  }
}

class LinearProgressIndicatorAppState extends State<LinearProgressIndicatorApp>
    with TickerProviderStateMixin {
  AnimationController? _controller;
  late bool _loading;
  double value = 0;
  late double _progressValue;

  // @override
  // void initState() {
  //   super.initState();
  //   downloadData()();
  // }

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
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Linear Progress Bar"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 15,
              width: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(35.0),
                child: LinearProgressIndicator(
                  backgroundColor: Colors.black,
                  color: Theme.of(context).primaryColor,
                  value: _controller?.value,
                ),
              ),
            ),
            Text("Loading")
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     setState(() {
      //       _loading = !_loading;
      //       _updateProgress();
      //     });
      //   },
      //   tooltip: 'Download',
      //   child: Icon(Icons.cloud_download),
      // ),
    );
  }

  _load() {
    Future.delayed(const Duration(milliseconds: 10000), () {
      ;
    });
  }

  // this function updates the progress value
  downloadData() {
    new Timer.periodic(Duration(seconds: 1), (Timer timer) {
      setState(() {
        if (value == 1) {
          timer.cancel();
        } else {
          value = value + 0.1;
        }
      });
    });
  }
}
