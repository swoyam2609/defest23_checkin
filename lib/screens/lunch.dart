import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../widgets/qrscanner.dart';

class LunchCheckIn extends StatefulWidget {
  const LunchCheckIn({super.key});

  @override
  State<LunchCheckIn> createState() => _LunchCheckInState();
}

class _LunchCheckInState extends State<LunchCheckIn> {
  @override
  Widget build(BuildContext context) {
    var value = "Scan to get the QR code";
    MobileScannerController cameraController = MobileScannerController(
      detectionSpeed: DetectionSpeed.normal,
      facing: CameraFacing.back,
      torchEnabled: false,
    );
    return Scaffold(
      drawer: Container(),
      appBar: AppBar(
        title: Text("Lunch Checkin"),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    "DevFest 2023 Checkin",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey,
              child: QRScanner(
                cameraController: cameraController,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                TextButton.icon(
                  onPressed: () {
                    cameraController.start();
                  },
                  icon: Icon(Icons.camera),
                  label: Text("Scan"),
                ),
                TextButton.icon(
                    onPressed: () {
                      cameraController.stop();
                    },
                    icon: Icon(Icons.stop),
                    label: Text("Stop")),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Text(
                    "$value",
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
