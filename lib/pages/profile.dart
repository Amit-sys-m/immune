import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            child: Center(
              child: Container(
                height: 100,
                color: const Color(0xff880ed4),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: const [
                      Text("Saurabh"),
                      Text("Mobile No: 7488985687"),
                      Text("Address: Gutli Pada, Boisar Road, Boisar")
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
