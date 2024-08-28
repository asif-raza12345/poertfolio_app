import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio_app/profiles/work.dart';
import '../components/drawer.dart';
import 'Skills.dart';
import 'education.dart';
import 'food.dart';
import 'hobby.dart';
import 'home.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
        ),
        body: Stack(children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(children: [
              Column(children: [
                Container(
                  height: Screenheight * 0.20,
                  width: Screenwidth,
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(50),
                          bottomLeft: Radius.circular(50))),
                ),
                const SizedBox(
                  height: 100,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 4,
                          child: Container(
                            height: Screenheight * 0.20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.account_balance_outlined,
                                  size: 100,
                                  color: Colors.blue,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(const Skill());
                                  },
                                  child: const Text(
                                    "Skills",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 4,
                          child: Container(
                            height: Screenheight * 0.20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.cast_for_education,
                                  size: 100,
                                  color: Colors.blue,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(const Education());
                                  },
                                  child: const Text(
                                    "Education",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 4,
                          child: Container(
                            height: Screenheight * 0.20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.favorite,
                                  size: 100,
                                  color: Colors.blue,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(const Hobby());
                                  },
                                  child: const Text(
                                    "Hobby",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          elevation: 4,
                          child: Container(
                            height: Screenheight * 0.20,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(30)),
                            child: Column(
                              children: [
                                const Icon(
                                  Icons.no_food_outlined,
                                  size: 100,
                                  color: Colors.blue,
                                ),
                                TextButton(
                                  onPressed: () {
                                    Get.to(const Food());
                                  },
                                  child: const Text(
                                    "food",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 20,
                                        fontWeight: FontWeight.normal),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ]),
            ]),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "My Dashboard",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 30),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80, left: 20.0, right: 20),
            child: Row(
              children: [
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 4,
                    child: Container(
                      height: Screenheight * 0.20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.person,
                            size: 100,
                            color: Colors.blue,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(const HomeScreen());
                            },
                            child: const Text(
                              "Profile",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 4,
                    child: Container(
                      height: Screenheight * 0.20,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                        children: [
                          const Icon(
                            Icons.work,
                            size: 100,
                            color: Colors.blue,
                          ),
                          TextButton(
                            onPressed: () {
                              Get.to(const work());
                            },
                            child: const Text(
                              "Work",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.normal),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ]));
  }
}
