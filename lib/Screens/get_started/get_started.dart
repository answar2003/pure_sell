import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../signin_screen/Signin_screen.dart';


class GetStarted extends StatefulWidget {
  const GetStarted({super.key});

  @override
  State<GetStarted> createState() => _GetStartedState();
}

class _GetStartedState extends State<GetStarted> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/get_started.png",
              width: MediaQuery.of(context).size.width * 0.30,
              height: MediaQuery.of(context).size.height * 0.30,
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  const Text(
                    "Scan, Pay & Enjoy!",
                    style: TextStyle(
                      fontSize: 30,
                      fontFamily: "Poppins-Light",
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF33bf2e),
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.width * 0.04,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.80,
                    child: const Text(
                      "Scan products you want to buy at your favorite store and pay by your phone & enjoy happy, friendly Shopping!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                          fontFamily: "Poppins-Light",
                          fontSize: 16
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,width: 40,
                  ),
                  InkWell(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xFF33bf2e),
                      ),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(10),
                      width: MediaQuery.of(context).size.width * 0.80,
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600
                        ),
                      ),
                    ),
                    onTap: () {
                      Get.to(()=> const LoginPage ());
                    },
                  )
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}