import 'package:defest23_checkin/apis/chechinapis.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

void popup(
    {required type,
    required String code,
    String name = "",
    String email = "",
    String phone = "",
    String comments = "",
    required BuildContext context}) {
  showDialog(
    context: context,
    builder: (context) {
      return FutureBuilder(
        future: type == 1
            ? Devfestapis.checkInDay0(code)
            : type == 2
                ? Devfestapis.checkInDay1(code)
                : type == 3
                    ? Devfestapis.checkInDay2(code)
                    : type == 4
                        ? Devfestapis.checkInDay3(code)
                        : type == 5
                            ? Devfestapis.sellAll(
                                code, name, email, phone, comments)
                            : type == 6
                                ? Devfestapis.sellDay0(
                                    code, name, email, phone, comments)
                                : type == 7
                                    ? Devfestapis.sellDay1(
                                        code, name, email, phone, comments)
                                    : type == 8
                                        ? Devfestapis.sellDay2(
                                            code, name, email, phone, comments)
                                        : Devfestapis.sellDay3(
                                            code, name, email, phone, comments),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const AlertDialog(
              content: Center(
                child: SizedBox(
                    height: 200,
                    width: 200,
                    child: CircularProgressIndicator()),
              ),
            );
          } else if (snapshot.data == false) {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset('lib/assets/failure.json'),
                  const Text("QR Code is not valid"),
                ],
              ),
            );
          } else {
            return AlertDialog(
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Lottie.asset('lib/assets/success.json', height: 200),
                  Text(
                    snapshot.data['message'],
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          }
        },
      );
    },
  );
}
