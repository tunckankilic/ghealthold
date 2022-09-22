import 'package:flutter/material.dart';
import 'package:ghealth/widgets/widgets_shelf.dart';

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
        Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 8.0,
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 100,),
                  SingleChildScrollView(child: ReportCard(value: value, type: type, unitString: unitString, dateFrom: dateFrom, dateTo: dateTo)),
                  ListTile(
                    title: Text("${type}: ${value}"),
                    trailing: Text('${unitString}'),
                    subtitle: Text('${dateFrom} - ${dateTo}'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
