import 'package:firstProject/src/pages/counter_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: CounterPage(),
      ),
    );
  }
}