import 'package:flutter/material.dart';

class Food extends StatefulWidget {
  const Food({super.key});

  @override
  State<Food> createState() => _FoodState();
}

class _FoodState extends State<Food> {
  List<String> FuritList = <String>[
    'Apple',
    'Orange',
    'grapes',
    'Banana',
    'Mango',
  ];
  List<String> tempFuritlist = [];
  @override
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Faveriot Furits",
          style: TextStyle(
              color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
          itemCount: FuritList.length,
          itemBuilder: (context, index) {
            return Card(
              color: Colors.white,
              elevation: 3,
              child: ListTile(
                onTap: () {
                  if (tempFuritlist.contains(FuritList[index].toString())) {
                    tempFuritlist.remove(FuritList[index].toString());
                  } else {
                    tempFuritlist.add(FuritList[index].toString());
                  }
                  setState(() {});
                },
                title: Text(
                  FuritList[index].toString(),
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                ),
                trailing: Icon(
                  Icons.favorite,
                  color: tempFuritlist.contains(FuritList[index].toString())
                      ? Colors.red : Colors.white,
                ),
              ),
            );
          }),
    );
  }
}
