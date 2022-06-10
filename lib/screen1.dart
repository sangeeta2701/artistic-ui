import 'package:artisctic_ui/screen2.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Screen1 extends StatefulWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: Colors.white,
          ),
          Padding(
            padding: EdgeInsets.only(top: 150),
            child: Transform.rotate(
              angle: -15 * math.pi / 180,
              child: Container(
                height: 105,
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(177, 35, 65, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35.0, left: 2),
            child: Container(
              height: 48,
              width: 48,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 25),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35),
            child: Image(
              height: 325,
              width: double.infinity,
              image: AssetImage("assets/think.png"),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 320),
            child: Transform.rotate(
              angle: -15 * math.pi / 180,
              child: Container(
                height: 85,
                width: MediaQuery.of(context).size.width,
                color: Color.fromRGBO(563, 213, 243, 1),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 300.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.white, width: 65),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 260.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.white, width: 65),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Get Started",
                  style: TextStyle(
                    color: Colors.grey[500],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 24),
                  child: Text(
                    "Millions of people use to turn their ideas into reality",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 34,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Skip Now",
                      style: TextStyle(
                        color: Colors.grey[500],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Screen2(),
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(14),
                          color: Color.fromRGBO(177, 35, 63, 1),
                        ),
                        padding: EdgeInsets.only(left: 24, right: 24),
                        child: Text(
                          "Next",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
