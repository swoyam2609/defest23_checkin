import 'package:defest23_checkin/widgets/qrscanner_checkin_day0.dart';
import 'package:defest23_checkin/widgets/qrscanner_checkin_day1.dart';
import 'package:defest23_checkin/widgets/qrscanner_checkin_day2.dart';
import 'package:defest23_checkin/widgets/qrscanner_checkin_day3.dart';
import 'package:defest23_checkin/widgets/qrscanner_sell_day0.dart';
import 'package:defest23_checkin/widgets/qrscanner_sell_day1.dart';
import 'package:defest23_checkin/widgets/qrscanner_sell_day2.dart';
import 'package:defest23_checkin/widgets/qrscanner_sell_day3.dart';
import 'package:defest23_checkin/widgets/qrscanner_sellallday.dart';
import 'package:defest23_checkin/widgets/qrscanner_swag.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class CustomDrawer extends StatelessWidget {
  final MobileScannerController controller;
  const CustomDrawer({super.key, required this.controller});

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        controller.dispose();
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const CheckinScanner()));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Row(
                        children: [
                          Icon(Icons.check_circle),
                          SizedBox(width: 5),
                          Icon(Icons.exposure_zero)
                        ],
                      ),
                      label: const Text("Checkin Day 0"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        controller.dispose();
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CheckinScannerDay1()));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Row(
                        children: [
                          Icon(Icons.check_circle),
                          SizedBox(width: 5),
                          Icon(Icons.one_x_mobiledata)
                        ],
                      ),
                      label: const Text("Checkin Day 1"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        controller.dispose();
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CheckinScannerDay2()));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Row(
                        children: [
                          Icon(Icons.check_circle),
                          SizedBox(width: 5),
                          Icon(Icons.two_k_rounded)
                        ],
                      ),
                      label: const Text("Checkin Day 2"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        controller.dispose();
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const CheckinScannerDay3()));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Row(
                        children: [
                          Icon(Icons.check_circle),
                          SizedBox(width: 5),
                          Icon(Icons.three_k_rounded)
                        ],
                      ),
                      label: const Text("Checkin Day 3"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        controller.dispose();
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SellAllDay()));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Row(
                        children: [
                          Icon(Icons.sell_outlined),
                          SizedBox(width: 5),
                          Icon(Icons.all_inbox_outlined)
                        ],
                      ),
                      label: const Text("Sell All Day"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        controller.dispose();
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SellDay0()));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Row(
                        children: [
                          Icon(Icons.sell),
                          SizedBox(width: 5),
                          Icon(Icons.exposure_zero)
                        ],
                      ),
                      label: const Text("Sell Day 0"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        controller.dispose();
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SellDay1()));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Row(
                        children: [
                          Icon(Icons.sell_outlined),
                          SizedBox(width: 5),
                          Icon(Icons.one_k)
                        ],
                      ),
                      label: const Text("Sell Day 1"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        controller.dispose();
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SellDay2()));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Row(
                        children: [
                          Icon(Icons.sell),
                          SizedBox(width: 5),
                          Icon(Icons.two_k_rounded)
                        ],
                      ),
                      label: const Text("Sell Day 2"),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Expanded(
                    child: TextButton.icon(
                      onPressed: () {
                        controller.dispose();
                        Navigator.pop(context);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SellDay3()));
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.blue,
                      ),
                      icon: const Row(
                        children: [
                          Icon(Icons.sell_outlined),
                          SizedBox(width: 5),
                          Icon(Icons.three_k_rounded)
                        ],
                      ),
                      label: const Text("Sell Day 3"),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
