import 'package:flutter/material.dart';
import 'package:edutech/pages/page_dua.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topCenter,
            heightFactor: 0.7,
            child: Container(
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage('images/profile.jpg'))),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 0.3,
            child: Container(
              color: Colors.white,
            ),
          ),
          SlidingUpPanel(
            minHeight: MediaQuery.of(context).size.height * 0.3,
            maxHeight: MediaQuery.of(context).size.height * 0.6,
            body: Container(
              color: Colors.transparent,
            ),
            panelBuilder: (ScrollController controller) {
              return SingleChildScrollView(
                controller: controller,
                physics: ClampingScrollPhysics(),
                child: Column(),
              );
            },
          ),
        ],
      ),
    );
  }
}
