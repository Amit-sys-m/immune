import 'package:flutter/material.dart';

class HomePagge extends StatefulWidget {
  const HomePagge({Key? key}) : super(key: key);

  @override
  State<HomePagge> createState() => _HomePaggeState();
}

class _HomePaggeState extends State<HomePagge> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            TextFormField(
              onTap: () {},
              decoration: const InputDecoration(
                  counterText: "",
                  border: OutlineInputBorder(),
                  hintText: "Mobile Number"),
              textInputAction: TextInputAction.done,
            )
          ],
        ),
      ),
    );
  }
}
