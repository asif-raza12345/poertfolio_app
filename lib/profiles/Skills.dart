import 'package:flutter/material.dart';

class Skill extends StatefulWidget {
  const Skill({super.key});

  @override
  State<Skill> createState() => _SkillState();
}

class _SkillState extends State<Skill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Skills",style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 22
        ),),
      ),
      body:
          const Column(
            children: [
      Padding(
        padding:  EdgeInsets.only(left: 8.0,right: 8),
        child:  Card(
          color: Colors.white,
          elevation: 4,
          child: ListTile(
            title: Text("Flutter",style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 16
            ),),
          ),
        ),
      ),
              Padding(
                padding:  EdgeInsets.only(left: 8.0,right: 8),
                child:  Card(
                  color: Colors.white,
                  elevation: 4,
                  child: ListTile(
                    title: Text("JavaScript",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 8.0,right: 8),
                child:  Card(
                  color: Colors.white,
                  elevation: 4,
                  child: ListTile(
                    title: Text("Python",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  ),
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 8.0,right: 8),
                child:  Card(
                  color: Colors.white,
                  elevation: 4,
                  child: ListTile(
                    title: Text("MySql",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),),
                  ),
                ),
              ),
      ])

    );

  }
}


