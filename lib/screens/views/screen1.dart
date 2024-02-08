import 'dart:async';

import 'package:flutter/material.dart';
import 'package:medication_management/screens/on_board/on_boarding.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext context) {
        return const OnBoarding();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 1, 77, 60),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.height * 01,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                image: AssetImage("images/logo.png"),
              )),
            )
          ]),
    );
  }
}
