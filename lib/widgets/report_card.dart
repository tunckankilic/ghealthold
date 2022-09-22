import 'package:flutter/material.dart';
import 'package:ghealth/widgets/widgets_shelf.dart';

class ReportCard extends StatelessWidget {
  final String value;
  final String type;
  final String unitString;
  final String dateFrom;
  final String dateTo;

  const ReportCard(
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
    return Container(
      height: size.height * 0.6,
      width: size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.red[900]!,
              spreadRadius: 5,
              blurRadius: 20,
            ),
          ]),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "My Goals",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircularTrackWidget(
                    value: value,
                    type: type,
                    unitString: unitString,
                    dateFrom: dateFrom,
                    dateTo: dateTo),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: size.height * 0.2,
                width: size.height,
                child: Row(
                  children: [
                    Expanded(
                      child: DetailCard(
                        color: Colors.red,
                        label: value,
                        type: type,
                        labelColor: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
