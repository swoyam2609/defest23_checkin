import 'package:defest23_checkin/apis/chechinapis.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SuccessPage extends StatelessWidget {
  final String value;

  const SuccessPage({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(value),
              FutureBuilder(
                future: Devfestapis.checkIn(value),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator();
                  } else {
                    print(snapshot.data);
                    if (snapshot.data == false) {
                      return Column(
                        children: [
                          Lottie.asset('lib/assets/failure.json'),
                          Text("Failed"),
                        ],
                      );
                    }
                    return Column(
                      children: [
                        Lottie.asset('lib/assets/success.json'),
                        Text(snapshot.data["name"]),
                      ],
                    );
                  }
                },
              ),
              // Lottie.asset('lib/assets/success.json'),
            ],
          ),
        ),
      ),
    );
  }
}
