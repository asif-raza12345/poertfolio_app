import 'package:flutter/material.dart';

class Education extends StatefulWidget {
  const Education({super.key});

  @override
  State<Education> createState() => _EducationState();
}

class _EducationState extends State<Education> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Education",
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8),
            child: Card(
                elevation: 4,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.school_outlined,
                    size: 30,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'School',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Allied School Liaquatput",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8),
            child: Card(
                elevation: 4,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.school,
                    size: 30,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'Collage',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Swot collage Liaquatpur",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8),
            child: Card(
                elevation: 4,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.school_sharp,
                    size: 30,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'University',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Islamia University Bahawalpur",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 8),
            child: Card(
                elevation: 4,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(
                    Icons.place,
                    size: 30,
                    color: Colors.blue,
                  ),
                  title: Text(
                    'favorite places',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 22,
                        fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Some favorite places are",
                    style: TextStyle(
                        color: Colors.black45, fontWeight: FontWeight.bold),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
