import 'package:defest23_checkin/widgets/qrscanner_checkin.dart';
import 'package:defest23_checkin/widgets/qrscanner_lunch.dart';
import 'package:defest23_checkin/widgets/qrscanner_swag.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: double.infinity,
        width: 250,
        color: Colors.grey[900],
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15,
                vertical: 25,
              ),
              child: Image.asset("lib/assets/logo.png"),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => CheckinScanner()));
              },
              icon: Icon(Icons.check_circle),
              label: Text("Checkin"),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LunchScanner()));
              },
              icon: Icon(Icons.food_bank),
              label: Text("Lunch"),
            ),
            TextButton.icon(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => SwagScanner()));
              },
              icon: Icon(Icons.star),
              label: Text("Swags"),
            ),
          ],
        ),
      ),
    );
  }
}
