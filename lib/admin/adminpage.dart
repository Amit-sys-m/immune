import 'package:flutter/material.dart';
import 'package:immune/admin/userdata.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({Key? key}) : super(key: key);

  @override
  State<AdminPage> createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListView(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Users()));
            },
            child: Card(
              child: Container(
                height: 50,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(30)),
                color: const Color(0xff880ed4),
                child: const Center(child: Text("View User Information")),
              ),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Card(
            child: Container(
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              color: const Color(0xff880ed4),
              child: const Center(child: Text("Update Data")),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Card(
            child: Container(
              height: 50,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(30)),
              color: const Color(0xff880ed4),
              child: const Center(child: Text("Vaccine Availability")),
            ),
          )
        ],
      ),
    );
  }
}
