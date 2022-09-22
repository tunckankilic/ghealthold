import 'package:flutter/material.dart';

class MonitorDashboard extends StatelessWidget {
  final String value;
  final String type;
  final String unitString;
  final String dateFrom;
  final String dateTo;

  const MonitorDashboard(
      {Key? key,
      required this.value,
      required this.type,
      required this.unitString,
      required this.dateFrom,
      required this.dateTo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Stack(
      children: [
        Container(
          height: size.height,
          width: size.width,
          decoration: BoxDecoration(
            color: Colors.red[200],
          ),
        ),
        Positioned(
          top: -350,
          right: -50,
          child: Container(
            height: size.height,
            width: size.width + 300,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [
                  Colors.red[900]!,
                  Colors.blue[200]!,
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              title: Text("${type}: ${value}",),
              trailing: Text('${unitString}'),
              subtitle: Text('${dateFrom} - ${dateTo}'),
            ),
          ],
        ),
      ],
    );
  }
}
