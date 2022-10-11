import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class alert_logout extends StatefulWidget {
  const alert_logout({super.key});

  @override
  State<alert_logout> createState() => alert_logoutState();
}

class alert_logoutState extends State<alert_logout> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Alert(
              context: context,
              title: 'Peringatan',
              desc: 'hati hati',
              type: AlertType.warning,
              style: AlertStyle(backgroundColor: Colors.green));
        },
        child: Text(
          'Hai',
          style: TextStyle(fontSize: 19, color: Colors.white),
        ),
      ),
    );
  }
}
