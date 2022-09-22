import 'package:flutter/material.dart';
import 'package:ghealth/api_test.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: HealthApp()
    );
  }
}