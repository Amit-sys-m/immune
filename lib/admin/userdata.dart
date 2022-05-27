import 'package:flutter/material.dart';
import 'package:immune/admin/userdaata.dart';

class Users extends StatefulWidget {
  const Users({Key? key}) : super(key: key);

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Card(
                color: const Color(0xff880ed4),
                child: Container(
                  height: 90,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const UserData()));
                    },
                    child: Center(
                      child: Column(
                        children: const [
                          Text("Name: Amit Patel"),
                          Text("Address: At. Gholvira Manor Rd Palghar"),
                          Text("Vaccine: Polio"),
                          Text("Date: 02-03-2022")
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Card(
                color: const Color(0xff880ed4),
                child: Container(
                  height: 90,
                  child: Center(
                    child: Column(
                      children: const [
                        Text("Name: Sudhanshu Dwivedi"),
                        Text("Address: Nava Pada, Mahim Road, Palghar"),
                        Text("Vaccine: Hepatitis B"),
                        Text("Date: 12-03-2022")
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Card(
                color: const Color(0xff880ed4),
                child: Container(
                  height: 90,
                  child: Center(
                    child: Column(
                      children: const [
                        Text("Name:Ankit Mehra"),
                        Text(
                            "Address: Ganesh Nagar, Navli Phatak, Boisar Road , Palgha"),
                        Text("Vaccine: Polio"),
                        Text("Date: 10-03-2022")
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: Card(
                color: const Color(0xff880ed4),
                child: Container(
                  height: 90,
                  child: Center(
                    child: Column(
                      children: const [
                        Text("Name: Lokesh Rahul"),
                        Text("Address: NandaBhavan, Juna Palghar, Palghar"),
                        Text("Vaccine: Malaria"),
                        Text("Date: 02-03-2022")
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
