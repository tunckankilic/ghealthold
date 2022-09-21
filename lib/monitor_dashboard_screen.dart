import 'package:flutter/material.dart';
import 'package:ghealth/widgets/widgets_shelf.dart';

class MonitorDashboard extends StatelessWidget {
  const MonitorDashboard({Key? key}) : super(key: key);

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
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Text(
              "Today",
              style: Theme.of(context).primaryTextTheme.headline5,
            ),
            actions: [
              Icon(
                Icons.more_vert_outlined,
                color: Colors.white,
              ),
            ],
            centerTitle: true,
            leading: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
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
                  Text(
                    "Good Morning, Tunç",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "Today Report",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  ReportCard(),
                  // SizedBox(
                  //   height: 15,
                  // ),
                  // SpecialitiesCard(),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
