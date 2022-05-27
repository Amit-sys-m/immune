import 'package:flutter/material.dart';

class UserData extends StatelessWidget {
  const UserData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Card(
        color: const Color(0xff880ed4),
        child: Container(
          child: Center(
            child: Column(
              children: const [
                Text("Name: Amit Patel"),
                Text("Address: At. Gholvira Manor Rd Palghar"),
                Text("Vaccine: Polio"),
                Text("Date: 02-03-2022"),
                Text("Next Date of Vaccination: 02-04-2022"),
                Text("Mobile Number: 8574898952"),
                Text("E-mail: amit@gmail.com")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
