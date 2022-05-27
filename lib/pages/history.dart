import 'package:flutter/material.dart';

class Mdhistory extends StatefulWidget {
  const Mdhistory({Key? key}) : super(key: key);

  @override
  _MdhistoryState createState() => _MdhistoryState();
}

class _MdhistoryState extends State<Mdhistory> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: ListView(
            children: [
              GestureDetector(
                child: const SizedBox(
                  height: 90,
                  child: Card(
                    color: Color(0xff880ed4),
                    elevation: 3.0,
                    child: Center(
                        child: Text(
                      "Add Data",
                      style: TextStyle(fontSize: 20),
                    )),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
