import 'package:flutter/material.dart';
import 'package:immune/pages/consult.dart';
import 'package:immune/pages/history.dart';
import 'package:immune/pages/hospitals.dart';
import 'package:immune/pages/profile.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
          child: Scaffold(
            body: Container(
              child: Padding(
                padding: const EdgeInsets.all(6.0),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        const Text(
                          "Immunization App",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        const Icon(Icons.notifications),
                        const SizedBox(
                          width: 5,
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Profile()));
                            },
                            child: const Icon(Icons.person_rounded))
                      ],
                    ),

                    const SizedBox(
                      height: 50,
                    ),
                    // GestureDetector(onTap: () => ,
                    //   child:
                    const Text(
                      "Covid-19 Vaccination",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 150,
                      width: 30,
                      child: GestureDetector(
                        onTap: _launchURL,
                        child: const Card(
                          elevation: 3.0,
                          color: Color(0xff880ed4),
                          child: Center(
                            child: Text("Get your slot for vaccine",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.bold)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "Free Health Checkup",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    GestureDetector(
                        child: const SizedBox(
                            height: 150,
                            width: 40,
                            child: Card(
                              elevation: 3.0,
                              color: Color(0xff880ed4),
                              child: Center(
                                  child: Text("Nearby Hospital",
                                      style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold))),
                            )),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Hospitals()));
                        }),
                    const SizedBox(height: 20),
                    const Text(
                      "Add Medical History",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Mdhistory()));
                      },
                      child: const SizedBox(
                          height: 150,
                          width: 40,
                          child: Card(
                            elevation: 3.0,
                            color: Color(0xff880ed4),
                            child: Center(
                              child: Text("Medical History",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      "24/7 Doctor Consultation",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),

                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Consult()));
                      },
                      child: const SizedBox(
                          height: 150,
                          width: 20,
                          child: Card(
                            elevation: 3.0,
                            color: Color(0xff880ed4),
                            child: Center(
                              child: Text("Medical Assistance",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold)),
                            ),
                          )),
                    ),
                  ],
                ),
              ),
            ),
            //bottomNavigationBar: BottomNav(),
          ),
        ));
  }
}

_launchURL() async {
  const url = "https://www.cowin.gov.in/";
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw "Could not launch $url";
  }
}
