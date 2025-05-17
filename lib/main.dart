import 'package:flutter/material.dart';
import 'assignment_2.dart';
main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Assignment2(),
      debugShowCheckedModeBanner: false,
    );
  }
}
