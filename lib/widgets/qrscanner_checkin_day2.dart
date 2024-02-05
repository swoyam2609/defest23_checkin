import 'package:defest23_checkin/screens/drawer.dart';
import 'package:defest23_checkin/widgets/popup.dart';
import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class CheckinScannerDay2 extends StatefulWidget {
  const CheckinScannerDay2({super.key});

  @override
  State<CheckinScannerDay2> createState() => _CheckinScannerDay2State();
}

class _CheckinScannerDay2State extends State<CheckinScannerDay2> {
  MobileScannerController controller = MobileScannerController(
    detectionSpeed: DetectionSpeed.normal,
    facing: CameraFacing.back,
    torchEnabled: false,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(
        controller: controller,
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          title: Image.asset(
            "lib/assets/logo.png",
            height: 50,
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            image: AssetImage("lib/assets/bg.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                "lib/assets/checkinday2.png",
              ),
              SizedBox(
                width: double.infinity,
                height: 250,
                child: MobileScanner(
                  controller: controller,
                  onDetect: (capture) {
                    controller.stop();
                    final List<Barcode> barcodes = capture.barcodes;
                    for (final barcode in barcodes) {
                      debugPrint('Barcode found! ${barcode.rawValue}');
                      if (barcode.rawValue != null) {
                        popup(3, barcode.rawValue!, context);
                      }
                    }
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(const Color(0xFF4184F7)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      controller.start();
                    },
                    icon: const Icon(Icons.qr_code),
                    label: const Text("Scan"),
                  ),
                  TextButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color.fromARGB(255, 255, 0, 0)),
                      foregroundColor: MaterialStateProperty.all(Colors.white),
                    ),
                    onPressed: () {
                      controller.stop();
                    },
                    icon: const Icon(Icons.stop),
                    label: const Text("Stop"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
