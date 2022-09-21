import 'package:flutter/material.dart';
import 'package:ghealth/widgets/widgets_shelf.dart';

class ReportCard extends StatelessWidget {
  const ReportCard({
    Key? key,
  }) : super(key: key);

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
                child: CircularTrackWidget(),
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
                        label: "123",
                        labelColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: DetailCard(
                        color: Colors.black,
                        label: "345",
                        labelColor: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: DetailCard(
                        color: Colors.blue,
                        label: "456",
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
