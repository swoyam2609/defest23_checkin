import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

import '../screens/success.dart';

class QRScanner extends StatefulWidget {
  final MobileScannerController cameraController;
  const QRScanner({super.key, required this.cameraController});

  @override
  State<QRScanner> createState() => _QRScannerState();
}

class _QRScannerState extends State<QRScanner> {
  @override
  Widget build(BuildContext context) {
    return MobileScanner(
      // fit: BoxFit.contain,
      controller: widget.cameraController,
      onDetect: (capture) {
        final List<Barcode> barcodes = capture.barcodes;
        for (final barcode in barcodes) {
          debugPrint('Barcode found! ${barcode.rawValue}');
          if (barcode.rawValue != null) {
            widget.cameraController.stop();
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SuccessPage(
                  value: barcode.rawValue!,
                ),
              ),
            );
          }
        }
      },
    );
  }
}
