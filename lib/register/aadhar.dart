import 'package:flutter/material.dart';
import 'package:immune/register/verify.dart';

class AadharPage extends StatefulWidget {
  const AadharPage({Key? key}) : super(key: key);

  @override
  _AadharPageState createState() => _AadharPageState();
}

class _AadharPageState extends State<AadharPage> {
  final _formKey = GlobalKey<FormState>();
  final image = const AssetImage("assets/mobile.png");
  @override
  Widget build(BuildContext context) {
    final screenheight = MediaQuery.of(context).size.height;
    final imgheight = MediaQuery.of(context).size.height * 0.3;

    return Material(
      child: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image(image: image, height: imgheight),
          ),
          Container(
              height: screenheight * 0.7,
              decoration: const BoxDecoration(
                  color: Color(0xffEEEEEE),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70),
                    topRight: Radius.circular(70),
                  )),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.always,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ListView(children: [
                    const SizedBox(
                      height: 20,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Text("Enter your Aadhaar Card Number",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black)),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      maxLength: 12,
                      decoration: const InputDecoration(
                        counterText: "",
                        focusedBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.black, width: 2.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red, width: 2.0),
                        ),
                      ),
                      textInputAction: TextInputAction.done,
                      keyboardType: TextInputType.phone,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Cannot be Empty";
                        } else if (value.length > 12) {
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
                                      builder: (context) =>
                                          const VerifyPage()));
                            }
                          },
                          child: const Text("Continue",
                              style: TextStyle(color: Colors.white))),
                    )
                  ]),
                ),
              )),
        ],
      ),
    );
  }
}
