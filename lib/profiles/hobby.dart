import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../hero_info/hero_detail.dart';
import '../hero_info/hero_info.dart';

class Hobby extends StatefulWidget {
  const Hobby({super.key});

  @override
  State<Hobby> createState() => _HobbyState();
}

class _HobbyState extends State<Hobby> {
  @override
  Widget build(BuildContext context) {
    final contoller = Heroitem();
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Hobby",
          style: TextStyle(color: Colors.white, fontSize: 22),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: contoller.item.length,
          itemBuilder: (context, index) {
            return Hero(
              tag: contoller.item[index].image,
              child: Card(
                elevation: 3,
                color: Colors.white,
                child: ListTile(
                  onTap: () {
                    Get.to(HeroDetail(item: contoller.item[index]));
                  },
                  title: Text(
                    contoller.item[index].title,
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 19,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(contoller.item[index].subtitle,
                      style: const TextStyle(
                          color: Colors.black45, fontWeight: FontWeight.bold)),
                  leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(contoller.item[index].image)),
                ),
              ),
            );
          }),
    );
  }
}
