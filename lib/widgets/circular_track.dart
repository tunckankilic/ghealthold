import 'package:flutter/material.dart';


class CircularTrackWidget extends StatelessWidget {
  const CircularTrackWidget({
    Key? key,
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
              "938/2500",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Calories",
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
