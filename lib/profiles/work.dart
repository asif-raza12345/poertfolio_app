import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class work extends StatefulWidget {
  const work({super.key});

  @override
  State<work> createState() => _workState();
}

class _workState extends State<work> {
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Work", style: TextStyle(
            color: Colors.white,
            fontSize: 30
        ),),
        backgroundColor: Colors.blue,
        centerTitle: true,
      ),
      body:  const Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8.0,right: 8),
            child: Card(
              elevation: 4,
              color: Colors.white,
              child: ListTile(
                leading: Icon(Icons.ac_unit_outlined,size: 30,color: Colors.blue,),
                title: Text('Presentation Texting',style: TextStyle(
                  color: Colors.blue,
                  fontSize: 22,
                  fontWeight: FontWeight.bold
                ),),
                subtitle: Text("Melalukan Presentation Texting",style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.bold),
              ),
            )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0,right: 8),
            child: Card(
                elevation: 4,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.mobile_screen_share_rounded,size: 30,color: Colors.blue,),
                  title: Text('Mobile Application',style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                  subtitle: Text("Menggunakan flutter",style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                  ),
                )),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0,right: 8),
            child: Card(
                elevation: 4,
                color: Colors.white,
                child: ListTile(
                  leading: Icon(Icons.compare_arrows_sharp,size: 30,color: Colors.blue,),
                  title: Text('Backend Developer',style: TextStyle(
                      color: Colors.blue,
                      fontSize: 22,
                      fontWeight: FontWeight.bold
                  ),),
                  subtitle: Text("NodeJs ,Golan,python Flask",style: TextStyle(
                      color: Colors.black45,
                      fontWeight: FontWeight.bold),
                  ),
                )),
          )
        ],
      ),
    );
  }

}