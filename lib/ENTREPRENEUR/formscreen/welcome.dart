import 'package:flutter/material.dart';
import 'package:main_project/ENTREPRENEUR/formscreen/loginpage.dart';




class Entrewelcome extends StatefulWidget {
  const Entrewelcome({super.key});

  @override
  State<Entrewelcome> createState() => _LogaState();
}

class _LogaState extends State<Entrewelcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(129, 146, 204, 1),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child:
                Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
                 children: [
              const SizedBox(
                height: 120,
              ),
              Container(
                height: 370,
                width: 370,
                // color: Colors.red,

                child: const Image(
                  image: AssetImage(
                    "images/logo.png",
                  ),
                  // fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: ElevatedButton(
                    style: ButtonStyle(
                        shape: MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius:
                                BorderRadiusDirectional.circular(20))),
                        minimumSize: MaterialStateProperty.all(const Size(280, 50)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.black),
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 230, 27, 75))),
                    onPressed: () {

                      Navigator.push(context, MaterialPageRoute(builder:(context) => Entreloginpage()));
                    },
                    child: const Text(
                      "WELCOME",
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 30,
                          color: Colors.white),
                    )),
              ),
            ]),
          ),
        ));
  }
}
