import 'package:flutter/material.dart';

class DetailCard extends StatelessWidget {
  final Color? color;
  final String? label;
  final Color? labelColor;
  const DetailCard({
    Key? key,
    this.color,
    this.label,
    this.labelColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      height: 150,
      width: 100,
      decoration: BoxDecoration(
        color: color ?? Colors.orange[900],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: labelColor ?? Colors.redAccent),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              label.toString(),
              style: TextStyle(
                fontSize: 14,
                color: labelColor ?? Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "6/31",
              style: TextStyle(
                fontSize: 12,
                color: labelColor ?? Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "25g Left",
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
