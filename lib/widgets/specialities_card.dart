import 'package:flutter/material.dart';

class SpecialitiesCard extends StatelessWidget {
  final Color? labelColor;
  final int? height;
  final int? width;
  const SpecialitiesCard({
    Key? key,
    this.labelColor,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 5.0,
        right: 6.0,
      ),
      child: Container(
        height: height!.toDouble(),
        width: width!.toDouble(),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.orange[900],
        ),
        child: Column(),
      ),
    );
  }
}
