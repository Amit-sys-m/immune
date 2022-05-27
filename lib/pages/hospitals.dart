import 'package:flutter/material.dart';

class Hospitals extends StatelessWidget {
  const Hospitals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(children: [
        Card(
            color: const Color(0xff880ed4),
            child: Center(
              child: Column(
                children: const [
                  Text(
                    "Jeevan Jyoth Hospital ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text("Bhaskar Waadi, Navali Road, Palghar"),
                  Text("Opens 8:00 am")
                ],
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        Card(
            color: const Color(0xff880ed4),
            child: Center(
              child: Column(
                children: const [
                  Text(
                    "Dhada Hospital ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text("Ganesh Nagar, Juna Satpati Road, Palghar"),
                  Text("Opens 5:00 am")
                ],
              ),
            )),
        const SizedBox(
          height: 20,
        ),
        Card(
            color: const Color(0xff880ed4),
            child: Center(
              child: Column(
                children: const [
                  Text(
                    "Mhatre Clinics ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Text("Nandgaon Bhavan, Kavsa Mumra Road , Boisar"),
                  Text("Opens 24x7")
                ],
              ),
            )),
        const SizedBox(
          height: 20,
        ),
      ]),
    );
  }
}
