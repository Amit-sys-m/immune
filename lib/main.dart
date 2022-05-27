import 'package:flutter/material.dart';
import 'package:immune/register/first.dart';
import 'package:immune/register/otp.dart';
import 'package:immune/register/sigin.dart';
import 'package:immune/register/verify.dart';
import 'package:immune/utils/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.firstroute,
      routes: {
        MyRoutes.firstroute: (context) => const MainPage(),
        MyRoutes.signinroute: (context) => const SigninPage(),
        MyRoutes.verifyroute: (context) => const VerifyPage(),
        MyRoutes.otproute: (context) => const OtpPage(),
      },
    );
  }
}
