import 'package:flutter/material.dart';
import 'package:immune/register/otp.dart';

class ForgotPass extends StatefulWidget {
  const ForgotPass({Key? key}) : super(key: key);

  @override
  _ForgotPassState createState() => _ForgotPassState();
}

class _ForgotPassState extends State<ForgotPass> {
  final _formKey = GlobalKey<FormState>();
  final image = const AssetImage("assets/mobile.png");
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final imgheight = MediaQuery.of(context).size.height * 0.3;
    return SafeArea(
        child: Material(
      child: Stack(children: [
        Padding(
          padding: const EdgeInsets.only(left: 60.0),
          child: Image(height: imgheight, image: image),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Positioned(
          top: 200,
          child: Container(
            width: 370,
            height: screenheight * 0.7,
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
                color: Color(0xffEEEEEE),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70))),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                children: [
                  const Text("Enter your Mobile Number",
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                    maxLength: 10,
                    decoration: const InputDecoration(
                        counterText: "",
                        border: OutlineInputBorder(),
                        hintText: "Mobile Number"),
                    textInputAction: TextInputAction.done,
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Cannot be Empty";
                      } else if (value.length < 10) {
                        return "Invalid";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    width: 200,
                    decoration: BoxDecoration(
                        color: const Color(0xff651FFF),
                        borderRadius: BorderRadius.circular(20)),
                    child: TextButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const OtpPage()));
                          }
                        },
                        child: const Text(
                          "Verify Number",
                          style: TextStyle(color: Colors.white),
                        )),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    ));
  }
}
