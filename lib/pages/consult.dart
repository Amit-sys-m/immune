import 'package:flutter/material.dart';

class Consult extends StatefulWidget {
  const Consult({Key? key}) : super(key: key);

  @override
  _ConsultState createState() => _ConsultState();
}

class _ConsultState extends State<Consult> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffEEEEEE),
      child: Stack(
        children: [
          Container(
            child: ListView(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 70, top: 150),
                  child: Center(
                    child: Text(
                      "Health Assessment",
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                const Center(
                  child: Text(
                      "A guided Questionnaire to help you assess your health"),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    height: 50,
                    width: 120 * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color(0xff880ed4),
                    ),
                    child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Start Assessment",
                          style: TextStyle(color: Colors.black),
                        )),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      // child: const Positioned(
      //   child: Image(
      //     image: AssetImage("assets/helt.png"),
      //   ),

      // ),
    );
  }
}


 // Positioned(
         
        // )