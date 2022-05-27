import 'package:flutter/material.dart';
import 'package:immune/admin/adminlogin.dart';
import 'package:immune/admin/adminpage.dart';
import 'package:immune/pages/info.dart';
import 'package:immune/register/sigin.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: const Color(0xffEEEEEE),
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 120, top: 20),
            child: Text(
              "Welcome",
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Image(image: AssetImage("assets/fl.png")),
          ),
          Container(
            width: 200,
            decoration: BoxDecoration(
                color: const Color(0xff651FFF),
                borderRadius: BorderRadius.circular(20)),
            child: TextButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Info()));
                },
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.black),
                )),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 120),
            child: Row(
              children: [
                const Text("Already a Member? "),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SigninPage()));
                    },
                    child: const Text("Login")),
              ],
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: ((context) => const Admin())));
              },
              child: const Text("Admin Login"))
        ],
      ),
    );
  }
}
