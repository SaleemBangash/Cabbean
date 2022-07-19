// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

// import 'package:passenger/screens/splash_screen.dart';
import 'package:passenger/screens/start_screen.dart';
import 'package:provider/provider.dart';

import 'google_map/google_map_page.dart';
import 'google_map/provider/location_provider.dart';
import 'utils/size_config.dart';
import 'utils/app_theme.dart';

SizeConfig? sizeConfig;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => LocationProvider(),
          // ignore: prefer_collection_literals
          child: MapOne(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: AppTheme.data(),
        home: StartScreen(),
      ),
    );
  }
}
