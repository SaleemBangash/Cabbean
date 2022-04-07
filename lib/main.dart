import 'package:flutter/material.dart';
import 'package:passenger/driver/main_screen_offline.dart';
import 'package:passenger/screens/splash_screen.dart';
import 'package:passenger/screens/start_screen.dart';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.data(),
      home: MainScreenOffine(),
    );
  }
}
