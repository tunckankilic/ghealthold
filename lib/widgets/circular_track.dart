import 'package:flutter/material.dart';

class CircularTrackWidget extends StatelessWidget {
  final String value;
  final String type;
  final String unitString;
  final String dateFrom;
  final String dateTo;
  const CircularTrackWidget({
    Key? key,
    required this.value,
    required this.type,
    required this.unitString,
    required this.dateFrom,
    required this.dateTo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.red[900]!, blurRadius: 10),
        ],
      ),
      child: Center(
        child: Column(
          children: [
            SizedBox(
              height: 80,
            ),
            Text(
              value,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              type,
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[300],
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
