import 'package:flutter/material.dart';

import 'network/dio_helper.dart';
import 'screens/register_screen.dart';


void main() async{
  await DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PayMob',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: const RegisterScreen(),
    );
  }
}


