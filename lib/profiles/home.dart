import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/src/get_main.dart';

import '../components/drawer.dart';
import 'dashboard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      drawer: const NavBar(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
            child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: Screenheight * 0.45,
              width: Screenwidth,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(200),
                    bottomRight: Radius.circular(200)),
              ),
              child: const Column(children: [
                Text("Profile",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold)),
                CircleAvatar(
                  maxRadius: 100,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/asif.jpg"),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Asif Raza",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "pakistan,punjab",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )
              ]),
            ),
            Card(
              elevation: 4,
              child: Container(
                height: Screenheight * 0.10,
                width: Screenwidth,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Colors.black45,
                        size: 40,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Email",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 23),
                              ),
                              Text(
                                "asifraza01156@gmail.com",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              elevation: 4,
              child: Container(
                height: Screenheight * 0.10,
                width: Screenwidth,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.phone,
                        color: Colors.black45,
                        size: 40,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Phone",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 23),
                              ),
                              Text(
                                "0305-5795960",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              elevation: 4,
              child: Container(
                height: Screenheight * 0.10,
                width: Screenwidth,
                decoration: const BoxDecoration(color: Colors.white),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.black45,
                        size: 40,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Center(
                        child: Padding(
                          padding: EdgeInsets.only(top: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 23),
                              ),
                              Text(
                                "punjab,Rahim yar khan,liaquat pur ",
                                style: TextStyle(
                                  color: Colors.black45,
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Card(
              elevation: 4,
              child: Container(
                height: Screenheight * 0.10,
                width: Screenwidth,
                decoration: const BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.home,
                        color: Colors.black45,
                        size: 40,
                      ),
                      const SizedBox(
                        width: 40,
                      ),
                      TextButton(
                        onPressed: () {
                          Get.to(const DashboardScreen());
                        },
                        child: const Center(
                          child: Padding(
                            padding: EdgeInsets.only(top: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dashboard",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 23),
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        )),
      ),
    );
  }
}
