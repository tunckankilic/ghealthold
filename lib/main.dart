import 'package:flutter/material.dart';
import 'package:ghealth/api_test.dart';
import 'package:ghealth/monitor_dashboard_screen.dart';

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