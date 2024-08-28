import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:my_portfolio_app/signup/singup.dart';

import '../profiles/home.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double Screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
       backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: SafeArea(child:

              Column(
                children: [
                  Center(
                    child: Card(
                      elevation: 4,
                      child: Container(
                        height:Screenheight * 0.60,
                        width: Screenwidth * 0.80,
                        decoration: const  BoxDecoration(
                          color: Colors.grey
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:  Column(
                            children: [
                             const  Icon(Icons.person,size: 50,color: Colors.white,),
                            const   SizedBox(height: 10,),
                              TextFormField(
                                obscureText: false,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText:"Enter your name",
                                  hoverColor: Colors.black,
                                  prefixIcon: const Icon(Icons.person,color: Colors.blue,),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const   SizedBox(height: 10,),
                              TextFormField(
                                obscureText: false,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText:"Enter your mail",
                                  hoverColor: Colors.black,
                                  prefixIcon: const Icon(Icons.mail,color: Colors.blue,),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const   SizedBox(height: 10,),
                              TextFormField(
                                obscureText: false,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText:"Enter your password",
                                  hoverColor: Colors.black,
                                  prefixIcon: const Icon(Icons.lock,color: Colors.blue,),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const   SizedBox(height: 10,),
                              TextFormField(
                                obscureText: false,
                                decoration: InputDecoration(
                                  fillColor: Colors.white,
                                  filled: true,
                                  hintText:"Confirm password",
                                  hoverColor: Colors.black,
                                  prefixIcon: const Icon(Icons.lock,color: Colors.blue,),
                                  border: OutlineInputBorder(
                                    borderSide: const BorderSide(color: Colors.black),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  TextButton(onPressed: (){
                                    Get.to(const HomeScreen());
                                  },
                                    child: Container(
                                      height: Screenheight * 0.05,
                                      width: Screenwidth *0.50,
                                      decoration: BoxDecoration(
                                          color: Colors.blue,
                                          borderRadius: BorderRadius.circular(50)
                                      ),
                                      child: const Center(
                                        child: Text("Sing up",style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 22,
                                        ),),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                               Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text("You have an account? ",),
                                    TextButton(onPressed: (){
                                      Get.to(const LoginScreen());
                                    },
                                      child: const Text("Login",style: TextStyle(
                                        color: Colors.blue,
                                      ),),
                                    )])
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              )
          ),
        ),
      ),
    );
  }
}
